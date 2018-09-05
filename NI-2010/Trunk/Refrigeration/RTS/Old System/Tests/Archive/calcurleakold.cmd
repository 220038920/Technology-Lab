! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Calibration procedure for Current leakage
!    File    : CALCurLeak.CMD
!    Rev    : 1.0
!    By    : Scott
!    1.0 SH 11/15/13  Initial test created to calibrate current leakage
!    1.1 SH 1/09/14  Changed from 100 to 105 volts to avoid 5mA cutoff by Aplus
!
! Steps
!	Mode
!	$ - Which voltage
!	? - Which current level
!   $?
!	11 Set voltage to 105, take an avg of the ma
!		Store raw values for y = 100m+b
!	21	Set voltage to 130
!		Take an avg of the ma
!		Store raw values for y = 130m+b
!		Calculate m and b
!		Store as gain and zero
!	31	Repeat at 200
!	41	Repeat at 230
!	
!	Voltage setpoint at 115 $ = 5
!	Check at 
!	51	750 uA 153.3k
!	52	500 uA 230k, 
!	53	300 uA 383.3k
!
!	Voltage setpoint at 230 $ = 6
!                  
!	61	750 uA 293.3k
!	62	500 uA 440k
!	63	300 uA 733.3k
!
! Documentation from Hooks
! <mode>,<lowB>, <lowM>, <highB>, <highM>
! low = 115V range
! high = 230V range
! using MX+B method.
! The {PLeak_Raw} holds the A*1000 read by the transducer.
! Leakage mA = (Amps * 1000) - (Volts * M + B)
!
!
Transfer nodevice 1
Lookup location
Lookup calcurleak	! Load labels for the different steps
Point Clear
Point vaw
Point calcurleak

If ("{SOperator}" = "") | ("{SOperator}" = "Engineer") Then
	Prompt OK Please log into RTS and restart test
	Begin
		If {Aprompt} = 1 Then
			Leave
		Endif
	Loop
	Halt
EndIf

Calibrate Enable
Set 1 {PVersion} = 1.1
Set 1 {PVoltSet} = {SVoltSet#}	! Store Voltage setpoint
Set {PCommand} = 1
Set $ = 1	! Start in 105V mode first
Set ? = 1
Set 0 {PStep} = 9
Revision

Plot SaveAs stands\{LTestName}_{AStation_Title}_{ARevision}
Result SaveAs stands\{LTestName}_{AStation_Title}_{ARevision}

Transfer Filter Off
Transfer Interval 10

Plot Interval 10
Trend Interval 10
Trend Clear

DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]

Clear All
Log {LTestName} v{PVersion}

Status Green {LTestName} v{PVersion} Ready
Begin
! Build averages
    If ({PCurLeak_Cnt} <> {PLastSample}) Then
   		Set 0 {PLastSample} = {PCurLeak_Cnt}
	    Math 0 {PAvgCnt} = {PAvgCnt} + 1
        Math 5 {PAvgCurLeak} = {PAvgCurleak} + {PCurLeak}
        Math 5 {PAvgCurLeakRaw} = {PAvgCurleakRaw} + {PCurleak_Raw}
	Endif
	
! Check for remote cal dialog just opened or cancel pressed
    If {PStep} = 9 Then
        Status Green Current Leak Cal {LVolt$}V {LCurrent$?}
        Clear Avg
        Set 0 {PStep} = 10
        Set 0 {PTimer} = -1
        Prompt OK Press OK for {LVolt$}V {LCurrent$?}
		If $ = 1 Then
			Set {SVoltSet#} = 105
		Endif
    ! Wait for no load 
    ElseIf {PStep} = 10 Then
		If {APrompt} = 1 Then	! User said OK
			If ({PVolt} > ({LVolt$} +0.5)) | ({PVolt} < ({LVolt$} -0.5)) Then
				Status Yellow Check volts:{PVolt}. Needs {LVolt$} +- 0.5
			Else
				Set {PStep} = 11
			Endif
		ElseIf $ < 5 Then	! See if voltage is stable for the zero cal portion and auto continue
			If ({PVolt} < ({LVolt$} +0.5)) & ({PVolt} > ({LVolt$} -0.5)) Then
				If {PTimer} = -1 Then
					Math {PTimer} = {ATestTime} + 20
				Elseif {AtestTime} > {PTimer} Then	! Voltage stable at new setpoint, continue
					Prompt Cancel
					Set {PStep} = 11	
				Endif
			Endif
		Endif
    ElseIf {PStep} = 11 Then	
        Clear Avg
        Set 5 {PAvgCurLeak} = 0
        Set 5 {PAvgCurLeakRaw} = 0
        Set 5 {PAvgCnt} = 0
        Set {PStep} = 12
        Math {PTimer} = {ATestTime} + 30
	ElseIf {PStep} = 12 & {ATestTime} > {PTimer} & {PAvgCnt} > 10 Then	! Getting average
		Set {PStep} = 13
		Status Blue Waiting for {LCurrent$?} average
    ElseIf {PStep} = 12 & ({ATestTime} < {PTimer} | {PAvgCnt} < 10) Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
        Math 0 {PValue2} = 10-{PAvgCnt}
        Status Blue Waiting HMS[{PValue}] and for 10 samples: {PAvgCnt} for {LCurrent$?} averages
	ElseIf {PStep} = 13 Then	! Averaging Values completed
        Status Green {LCurrent$?} Cal complete

        Math 5 {PAvgCurLeak} = {PAvgCurLeak}/{PAvgCnt}
        Math 5 {PAvgCurLeakRaw} = {PAvgCurLeakRaw}/{PAvgCnt}
        
		DelayWrite D$ = {LVolt$}V
	    
		If ? = 1 Then	! Zero Cal
			Calibrate Zero {PCurLeak} 0
			DelayWrite Zero$? = {PCurLeak_Zero}
			Log Voltage$:{PVolt_Avg}
			DelayWrite Volt$ = {PVolt_Avg}
		Elseif ? = 2 Then	! Gain Cal
			Calibrate Gain {PCurLeak} {SActualCurrent}
			DelayWrite Zero$? = {PCurLeak_Zero}
			DelayWrite AR$? = {PAvgCurLeak}
			Math 4 {PValue} = (PAvgCurLeakRaw}+{PCurLeak_Zero)*{PCurLeak_Gain}
			DelayWrite AC$? = {PValue}

			Log Gain Cal I:{PAvgCurLeakRaw} ActualI:{SActualCurrent} Gain: {PCurLeak_Gain} AC: {PValue} Number of readings {PAvgCnt}
		Elseif ? = 3 Then	! Verify at 750
			DelayWrite AC$? = {PCurLeak}
			Log Verify Cal I:{PAvgCurLeakRaw} ActualI:{SActualCurrent} Number of readings {PAvgCnt}			
			If $ = 1 Then
				Set $ = 2	! Change to 130 Volt
				Set {SVoltSet#} = {LVolt$}
				Log Changing voltage to {LVolt$}
				Set {PStep} = 9	
			Else
				Leave
			Endif
		Endif
    ElseIf {PStep} = 14 Then
        If ({PVolt} > ({LVolt$} +0.5)) || ({PVolt} < ({LVolt$} -0.5)) Then
            Status Yellow Waiting for voltage transition. Volts:{PVolt}. Needs {LVolt$} +- 0.5
		Else
        	Set {PStep} = 9
			Set ? = 1	 ! Move to next range
        Endif    
	Endif	
Loop
Abort
DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = {LTestName} v{PVersion}
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
! Save results to database
If {LRefTechData} then
	Database Use 0
	If {ASim} = 1 Then
		Database {LDatabase} Table {LLabResults} key {STestNumber}
	Else
		Database {LDatabase} Table {LLabResults} key {ARevision}
	Endif
	Database Lab = {LLab}

	! If rerun then don't touch the original fields (if they're not listed they don't get affected)
	If {ASystem} <> {LRerunSys} Then
		Database Stall = {AStation_Title}
		Database Tester = {SOperDir}
		Database Comment1 = {SEquipment}
		Database Comment2 = {SCalComment}
		Database ResultReport = {LTestName}
		Database TestDate = {AStartDate} {AStartTime}
		Database TestType = CalCurLeak
		Database ResultFile = stands\{LTestName}_{AStation_Title}_{ARevision}
	Else
		Database Comment1 = {SComment1Orig}*
		Database Comment2 = {SComment2Orig}
		! This makes the ICON change until the PDF is generated
		Database PDFLink = -1
	Endif
	Database Write
	! Write info to Performance table
	!Database {LDatabase} table Performance key {ARevision}
	!Database TempUnits = {STempUnits}
	!Database TestName = {LTestName} {PVersion}
	!Database Write
Endif

If "{SReport}" = "Y" Then
	Set {SPlotList1} = CURLEAK;
	Set {SPlotList2} = VOLT;
	Result Report {LTestName}
	Result Print A

    Status Blue {LTestName} v{PVersion} Writing Database {LLabResults}
    Log Writing {LLabResults}
	! Write end date so query-based RTSReport will generate PDF
	Database Use 0
	Database {LDatabase} Table {LLabResults} key {ARevision}
	Database EndDate = {ADate} HMS[{ATime_Raw}]
	Database Write
    Status Blue Writing Database {LLabResults}
    Log Writing {LLabResults}
	Begin

	    If {ADBresults} = 1 Then
	        Status Gray DB Write Complete
	        Set {PError}=0
	        Leave
	    Elseif {ADBResults} = 2 Then
	        Status Red Unable to store data
	        Log {ADBmessage}
	        Set {PError}=1
	        Leave
	    Endif
	Loop
Endif

Result Write Setup
Include Rerun Write

Status Grey {LTestName} finished TN:{ARevision}
Log {LTestName} finished TN:{ARevision}
End




