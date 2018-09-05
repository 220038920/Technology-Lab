! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Calibration procedure for Pressure inputs
!    File    : CALPres.CMD
!    Rev    : 1.0
!    By    : Scott
!    1.0 SH 5/21/08  Initial test created to calibrate pressures and make report
!    1.1 SH 2/11/10  Made some changes to support Amana better and save to the Thermo lab/table
!    1.2 SH 4/25/12  Support Model 50 Extra pressure inputs
!	 2.0 SH 11/20/13 BHTC support with extra aux inputs

! PCommand variables
!	0 = Dialog open and idle or canceled
!   1 = Zero button pressed
!   2 = Zero completed
!   3 = Gain button pressed
!   4 = Gain completed
!   5 = User manual change to gain or zero
!   6 = Update button pressed
!   7 = Save cal data
!   8 = Reload cal data

! Step settings {PStep}
! 11 Zero: Waiting for no load
! 12 Zero: Averaging
! 13 Zero: Waiting for values
! 21 Gain: Waiting for load
! 22 Gain: Averaging
! 23 Gain: Waiting for values
! 24 Gain: Waiting for response for high deviation
! 25 Gain: Waiting for response for low watts
! 26 Gain: Waiting for response for out of control limit watts gain
Transfer nodevice 1
Lookup location
Point Clear

If "{SPointCustom}" <> "" Then
	Log Custom Point file {SPointCustom}
	Point {SPointCustom}
	Log {PLPsi} {PHPSI}
Else
	Log Point Pressure loaded
	Point Pressure
	Log {PLPsi} {PHPSI}
Endif

Point calpres

If {ASim} Then
	Log Loading testfile
	Driver LoadCSVFile {SRerunFile}
	Log Loaded {SRerunFile}
Endif

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
Set 1 {PVersion} = 2.0
Set {PCommand} = 1
Set {PStep} = 9
Revision

Log 24V source measured from pin 2 to 1
Log Inject signal on pin 4 to 3
Plot SaveAs stands\PSICAL_{AStation_Title}_{ARevision}
Result SaveAs stands\PSICAL_{AStation_Title}_{ARevision}

Transfer Filter Off
Transfer Interval {SSampleRate}

Plot Interval {SSampleRate}
Trend Interval {SSampleRate}
Trend Clear

DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]

Clear All
Log CALPRES Version {PVersion}

Status Green Pressure Calibration {PVersion} Ready
Begin
! Build averages
    If ({PLPSI_Cnt} <> {PLastSample}) Then
   		Set 0 {PLastSample} = {PLPSI_Cnt}
   		Set 0 {PTolFlag} = 1   		
   	Endif

   	If {PTolFlag} Then
   		Set 0 {PTolFlag} = 0   	    	
	    Math 0 {PAvgCnt} = {PAvgCnt} + 1

        Math 5 {PAvgLPSI} = {PAvgLPSI} + {PLPSI_Raw}
        Math 5 {PAvgHPSI} = {PAvgHPSI} + {PHPSI_Raw}

	Endif
! Check for remote cal dialog just opened or cancel pressed
    If {PStep} = 9 Then
        Status Green Start the calibration
        Clear All
        Set {PStep} = 10
        Prompt OK Press OK when ready to do zero calibration
    ! Wait for no load 
    ElseIf {PStep} = 10 & {APrompt} = 1 Then
        If {PLPSI} > 5 Then
            Status Yellow Please check - LPSI {PLPSI} > 5
        ElseIf {PHLPSI} > 10 Then
            Status Yellow Please check - LPSI {PLPSI} > 10        
        Else
        	Set {PStep} = 11
        Endif    
    ElseIf {PStep} = 11 Then
        Clear Avg
        Set 5 {PAvgLPSI} = 0
        Set 5 {PAvgHPSI} = 0
        Set 5 {PAvgCnt} = 0
        Set {PStep} = 12
        Math {PTimer} = {ATestTime} + 30
	ElseIf {PStep} = 12 & {ATestTime} > {PTimer} & {PAvgCnt} > 10 Then	! Getting average
		Set {PStep} = 13
		Status Blue Waiting for Zero average
    ElseIf {PStep} = 12 & ({ATestTime} < {PTimer} | {PAvgCnt} < 10) Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
        Math 0 {PValue2} = 10-{PAvgCnt}
        Status Blue Waiting HMS[{PValue}] and for {PValue2} samples for Zero averages
	ElseIf {PStep} = 13 Then	! Zero completed
        Status Green Zero calibration completed

        Math 5 {PAvgLPSI} = {PAvgLPSI}/{PAvgCnt}
        Math 5 {PAvgHPSI} = {PAvgHPSI}/{PAvgCnt}
        
        ! Force raw values to an average
        Error Off
        Set 5 {PLPSI_Raw} = {PAvgLPSI}
        Set 5 {PHPSI_Raw} = {PAvgHPSI}
		Error on
        Log Raw Zero LPSI {PAvgLPSI} HPSI {PAvgHPSI} Number of readings {PAvgCnt}

	    If {PLPSI} > -100 Then
			Calibrate Zero {PLPSI} 0
	        DelayWrite ZAR1 = {PLPSI_AVG}
	    Endif				
	    If {PHPSI} > -100 Then
		    Calibrate Zero {PHPSI} 0
			DelayWrite ZAR2 = {PHPSI_AVG}
	    Endif				
        Log Raw Zero LPSI {PLPSI_Zero} HPSI {PHPSI_Zero}

    
	Set {PStep} = 20
	    Prompt OK Press OK when ready to do gain calibration

    ! Wait for load 
    ElseIf {PStep} = 20 & {APrompt} = 1 Then
        If {PLPSI} < 1  Then
            Status Yellow Please check - LPSI {PLPSI} < 1
        Else
        	Set {PStep} = 21
        Endif    
    ElseIf {PStep} = 21 Then 
        Clear Avg
        Set 5 {PAvgLPSI} = 0
        Set 5 {PAvgHPSI} = 0
        Set 5 {PAvgCnt} = 0
        Set {PStep} = 22
        Math {PTimer} = {ATestTime} + 30
	ElseIf {PStep} = 22 & {ATestTime} > {PTimer} & {PAvgCnt} > 10 Then	! Getting average
		Set {PStep} = 23
		Status Blue Waiting for Gain average
    ElseIf {PStep} = 22 & {ATestTime} < {PTimer} Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
        Math 0 {PValue2} = 10-{PAvgCnt}
        Status Blue Waiting HMS[{PValue}] and for {PValue2} samples for Gain averages
	ElseIf {PStep} = 23 Then	! Gain completed
        Status Green Gain calibration completed

        Math 5 {PAvgLPSI} = {PAvgLPSI}/{PAvgCnt}
        Math 5 {PAvgHPSI} = {PAvgHPSI}/{PAvgCnt}

        ! Force raw values to an average
        Set 5 {PLPSI_Raw} = {PAvgLPSI}
        Set 5 {PHPSI_Raw} = {PAvgHPSI}

        Log Raw Gain LPSI {PAvgLPSI} HPSI {PAvgHPSI} Number of readings {PAvgCnt}
		
	    If {PLPSI} > 1 Then
			DelayWrite AR1 = {PLPSI_AVG}
			DelayWrite GAR1 = {PLPSI_Gain}
			Calibrate Gain {PLPSI} {SLPSIScale}
		    Math 4 {PValue} = ({PAvgLPSI}+{PLPSI_Zero})*{PLPSI_Gain}
			DelayWrite AC1 = {PValue}
			Write Zero1 = {PLPSI_Zero}
			Write Gain1 = {PLPSI_Gain}
			Log LPsi Gain changed to {PLPSI_Gain}
			DelayWrite D1 = {PLPSI_Title}
			DelayWrite ACT1 = {SLPSIScale}
	    Endif				
	    If {PHPSI} > 1 Then
			DelayWrite AR2 = {PHPSI_AVG}
			DelayWrite GAR2 = {PHPSI_Gain}
			Calibrate Gain {PHPSI} {SHPSIScale}
			Math 4 {PValue} = ({PAvgHPSI}+{PHPSI_Zero})*{PHPSI_Gain}
			DelayWrite AC2 = {PValue}
			Write Zero2 = {PHPSI_Zero}
			Write Gain2 = {PHPSI_Gain}
			Log HPsi Gain changed to {PHPSI_Gain}
			DelayWrite D2 = {PHPSI_Title}
			DelayWrite ACT2 = {SLPSIScale}
		Endif
        Log Number of readings {PAvgCnt}
        Leave    
	Endif
			
Loop
Abort
DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = Cal Pres v{PVersion}
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
! Save results to database
If {LRefTechData} then
	Database Use 0
	If {ASim} = 1 Then
		Database {LDatabase} Table Results key {STestNumber}
	Else
		Database {LDatabase} Table Results key {ARevision}
	Endif
	Database Lab = {LLab}

	! If rerun then don't touch the original fields (if they're not listed they don't get affected)
	If {ASim} = 0 Then
		Database Stall = {AStation_Title}
		Database Tester = {SOperDir}
		Database Comment1 = {SEquipment}
		Database Comment2 = {SCalComment}
		Database ResultReport = CALPres
		Database TestDate = {AStartDate} {AStartTime}
		Database ResultFile = stands\PSICAL_{AStation_Title}_{ARevision}
		Database TestType = CalPres

	Else
		Database Comment1 = {SComment1Orig}*
		Database Comment2 = {SComment2Orig}
		! This makes the ICON change until the PDF is generated
		Database PDFLink = -1
	Endif
	Database Write
Endif

Set {SPlotList1} = LPSI;HPSI;

If {ASim} Then
	Write ARevision = {STestNumber}
	Write ResultFile = {SRerunFile}
Endif
Status Blue Writing Database Results
Log Writing Results
! Write end date so query-based RTSReport will generate PDF
Database Use 0
Database {LDatabase} Table Results key {ARevision}
Database EndDate = {ADate} HMS[{ATime_Raw}]
Database Write
Status Blue Writing Database Results
Log Writing Results
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
!  Write Info to Flex table
!  SH 2/9/2010
Error on
Database Use 1
Database {LDatabase} Table FlexResults key InsertOnly Keyfield {ARevision}
Log Database {LDatabase} Table FlexResults key InsertOnly Keyfield {ARevision}
Database fields TestNumber,Type,Variable,Value

Database values {ARevision},SP,TestName,CALPRES {PVersion}
If {SRefVolt_Left} > 0 Then
	Database values {ARevision},SP,{RD1},{RACT1}
	Database values {ARevision},SP,{RD2},{RACT2}
Endif
If {RD3} > -998 Then
	Database values {ARevision},SP,{RD3},{RACT3}
Endif
If {RD4} > -998 Then
	Database values {ARevision},SP,{RD4},{RACT4}
Endif
Database values {ARevision},SP,{RD5},{RACT5}
Database values {ARevision},SP,{RD6},{RACT6}
Database Write

Result Report {LTestName}
Result Print A

Result Write Setup
Include Rerun Write

Status Grey Pressure Calibration finished TN:{ARevision}
Log Pressure Calibration finished TN:{ARevision}
End




