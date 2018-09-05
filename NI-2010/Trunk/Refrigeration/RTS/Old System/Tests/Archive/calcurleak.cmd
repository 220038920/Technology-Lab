! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Calibration procedure for Current leakage
!    File    : CALCurLeak.CMD
!    Rev    : 1.0
!    By    : Scott
!    1.0 SH 10/29/15  Vary voltage to map lookup table
!    Uses driver command to store calibration constants
!	 Uses WT3000 to measure current   
! Steps
!	Mode
!	$ - Which voltage
!	? - Which 
!
Transfer nodevice 1
Lookup location
Lookup calcurleak	! Load labels for the different steps
Point Clear
Point calcurleak
Point vaw
Point vawcal

Point Fifo Interval 10 Size 1	! Set up fifo for 5 readings, every 10 secs

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
Set 4 {PCurLeak} = {PCurLeak}
Set 4 {PVoltAct} = 0
Set {PCommand} = 1
Set {PLoad} = 11
Set $ = 1	! Start in 105V mode first
Set ? = 1

Revision

Plot SaveAs stands\{LTestName}_{AStation_Title}_{ARevision}
Result SaveAs stands\{LTestName}_{AStation_Title}_{ARevision}

Transfer Filter Off
Transfer Interval 10
Transfer Monitor norm trend

Plot Interval 10
Trend Interval 10
Trend Clear

DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]

Clear All
Log {LTestName} v{PVersion}

Status Yellow Open VAWCal Dialog
Set {PCommand} = 12

Begin
! Check for remote cal dialog just opened or cancel pressed
    If {PCommand} = 6 Then
        Status Green Start the calibration
        Clear All
		Set 0 {PLoad} = 11		! 15VAC Mode
        Set {PCommand} = 12
        Set {PStep} = 0
        Set {PTimer} = 180	! 3 minute timeout for range
        ! Tell the cal tool the ranges supported and the current range
		Leave
    Endif

! Check for automatic calibration
    If {PCommand} = 10 Then
        Set {PAutoCal} = 1
        Status Yellow Please wait for auto cal
        Set {PStartRange} = {PCurRange}
        Set {PCommand} = 12
        Set {PLoad} = 11
		Leave
    endif
	Math 4 {PActCurLeak} = {PVoltAct}/1.5
	
Loop
Set 0 {PStep} = 9
Set {SCurLeak#} = 1

Prompt OK Please disconnect plugs from 115 and 220 V inputs
Begin
	If {Aprompt} = 1 Then
		Leave
	Endif
	Set {PCommand} = 12
	Math 4 {PActCurLeak} = {PVoltAct}/1.5
Loop

Prompt OK Check for Yokogawa in Auto Mode
Begin
	If {Aprompt} = 1 Then
		Leave
	Endif
	Set {PCommand} = 12
	Math 4 {PActCurLeak} = {PVoltAct}/1.5
Loop

Status Green {LTestName} v{PVersion} Ready
Begin
! Build averages
    If ({PCurLeak_Cnt} <> {PLastSample}) Then
   		Set 0 {PLastSample} = {PCurLeak_Cnt}
	    Math 0 {PAvgCnt} = {PAvgCnt} + 1
        Math 5 {PAvgCurLeak} = {PAvgCurleak} + {PCurLeak}
        Math 5 {PAvgCurLeakRaw} = {PAvgCurleakRaw} + {PCurleak_Raw}
		Math 5 {PAvgVoltAct} = {PAvgVoltAct} + {PVoltAct_Raw}
	Endif
	Math 4 {PActCurLeak} = {PVoltAct}/1.5
! Check for remote cal dialog just opened or cancel pressed
    If {PStep} = 9 Then
        Status Green Current Leak Cal {LVolt$}V {LCurrent$}
        Clear Avg
        Set 0 {PStep} = 10
        Set 0 {PTimer} = -1
 		Set {SVoltSet#} = {LVolt$}
    ! Wait for no load 
    ElseIf {PStep} = 10 Then
		If {APrompt} = 1 Then	! User said OK
			If ({PVolt_L1} > ({LVolt$} +0.3)) | ({PVolt_L1} < ({LVolt$} -0.3)) Then
				Status Yellow Waiting for voltage {LVolt$} +- 0.3 Act:{PVolt}. Filter:{PVolt_L1}
			Else
				Set {PStep} = 11
			Endif
		ElseIf $ < 5 Then	! See if voltage is stable and auto continue
			If ({PVolt_L1} > ({LVolt$} +0.3)) | ({PVolt_L1} < ({LVolt$} -0.3)) Then
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
		Set 5 {PAvgVoltAct} = 0
        Set 5 {PAvgCnt} = 0
        Set {PStep} = 12
        Math {PTimer} = {ATestTime} + 20
	ElseIf {PStep} = 12 & {ATestTime} > {PTimer} & {PAvgCnt} > 10 Then	! Getting average
		Set {PStep} = 13
		Status Blue Waiting for {LCurrent$} average
    ElseIf {PStep} = 12 & ({ATestTime} < {PTimer} | {PAvgCnt} < 10) Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
        Math 0 {PValue2} = 10-{PAvgCnt}
        Status Blue Waiting HMS[{PValue}] and for 10 samples: {PAvgCnt} for {LCurrent$} averages
		If ($ > 1 & {PVoltAct_Raw} <=0 ) Then
			Prompt RetryCancel Low Yokogawa Volts {PVoltAct_Raw}
			Set {PStep} = 16

		Endif
	ElseIf {PStep} = 13 Then	! Averaging Values completed
        Status Green {LCurrent$} Cal complete

        Math 5 {PAvgCurLeak} = {PAvgCurLeak}/{PAvgCnt}
        Math 5 {PAvgCurLeakRaw} = {PAvgCurLeakRaw}/{PAvgCnt}
        Math 5 {PAvgVoltAct} = {PAvgVoltAct}/{PAvgCnt}
		Math 5 {PValue} = {PAvgVoltAct}/1.500
		Log X$:{PAvgCurLeakRaw} Y$:{PValue}     
		
		Math 5 {PCurLeak} = {PCurLeak}
		!      SaveXYLookup <Index> <XValue> <YValue>
        Driver SaveXYLookup $ {PAvgCurLeakRaw} {PValue}     
	    Set 5 {PCurLeak_Raw} = {PAvgCurLeakRaw}
		
		DelayWrite D$ = {LCurrent$}, {LVolt$}, {PValue}, {PAvgCurLeak}
		Set {Pstep} = 14
    ElseIf {PStep} = 14 Then
		If $ < {LNumSteps} Then
			Set {PStep} = 9
			Math $ = $ + 1	 ! Move to next level
			If $ = 2 Then
				Prompt OK Please connect 200kOhm plug to 115 V input
				Set {PStep} = 15
			Elseif $ = 11 Then
				Prompt OK Please connect 24kOhm plug to 115 V input
				Set {SVoltSet#} = {LVolt$}
				Set {PStep} = 15
			Elseif $ = 18 Then
				Prompt OK Please connect 2kOhm plug to 115 V input
				Set {SVoltSet#} = {LVolt$}
				Set {PStep} = 15
			Endif
		Else
			Leave
		Endif
	ElseIf {PStep} = 15 then
		If {Aprompt} = 1 Then
			Set {PStep} = 9
		Endif
    ElseIf {PStep} = 16 Then
    	If {APrompt} = 2 Then	! Cancel
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
            Set {PCommand} = 11    	
    	Endif
	Endif	
Loop
Abort
Prompt OK Unplug 2K plug from socket
Begin
	If {Aprompt} = 1 Then
		Leave
	Endif
	Math 4 {PActCurLeak} = {PVoltAct}/1.5
Loop

Set {SCurLeak#} = 0
Set 1 {SVoltSet#} = {PVoltSet}  	! ReStore Voltage setpoint

DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = {LTestName} v{PVersion}
DelayWrite TestTime = {ADate} HMS[{ATime_Raw}]
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
	If {ASim} = 0 Then
		Database Stall = {AStation_Title}
		Database Tester = {SOperDir}
		Database Comment1 = {SEquipment}
		Database Comment2 = {SCalComment}
		Database ResultReport = {LTestName}
		Database TestDate = {AStartDate} {AStartTime}
		Datebase EndDate = {ADate} HMS[{ATime_Raw}]
		Database TestType = CalCurLeak
		Database ResultFile = stands\{LTestName}_{AStation_Title}_{ARevision}
	Else
		Database Comment1 = {SComment1Orig}*
		Database Comment2 = {SComment2Orig}
		! This makes the ICON change until the PDF is generated
		Database PDFLink = -1
	Endif
	Database Write
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
	Loop	! Write info to Performance table
	!Database {LDatabase} table Performance key {ARevision}
	!Database TempUnits = {STempUnits}
	!Database TestName = {LTestName} {PVersion}
	!Database Write
Endif

Set {SPlotList1} = CURLEAK;
Set {SPlotList2} = VOLT;
Result Report {LTestName}
Result Print A


Result Write Setup
Include Rerun Write

Status Grey {LTestName} finished TN:{ARevision}
Log {LTestName} finished TN:{ARevision}
End




