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
Point calpres


If "{SPointCustom}" <> "" Then
	Log Custom Point file {SPointCustom}
	Point {SPointCustom}
Else
	Log Point Pressure loaded
	Point Pressure
Endif

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
   	If ({PAux1_Cnt} <> {PLastSample}) Then		! Look at Aux1 in case there is no Lpsi channel defined
   		Set 0 {PLastSample} = {PAux1_Cnt}
   		Set 0 {PTolFlag} = 1   		
   	Endif

   	If {PTolFlag} Then
   		Set 0 {PTolFlag} = 0   	    	
	    Math 0 {PAvgCnt} = {PAvgCnt} + 1

        Math 5 {PAvgLPSI} = {PAvgLPSI} + {PLPSI_Raw}
        Math 5 {PAvgHPSI} = {PAvgHPSI} + {PHPSI_Raw}
        Math 5 {PAvgAux1} = {PAvgAux1} + {PAux1_Raw}
        Math 5 {PAvgAux2} = {PAvgAux2} + {PAux2_Raw}
        Math 5 {PAvgAux3} = {PAvgAux3} + {PAux3_Raw}
        Math 5 {PAvgAux4} = {PAvgAux4} + {PAux4_Raw}

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
            Status Yellow Please check - Aux1 {PAux1} > 10        
        Else
        	Set {PStep} = 11
        Endif    
    ElseIf {PStep} = 11 Then
        Clear Avg
        Set 5 {PAvgAux1} = 0
        Set 5 {PAvgAux2} = 0
        Set 5 {PAvgLPSI} = 0
        Set 5 {PAvgHPSI} = 0
        Set 5 {PAvgAux3} = 0
        Set 5 {PAvgAux4} = 0
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

        Math 5 {PAvgAux1} = {PAvgAux1}/{PAvgCnt}
        Math 5 {PAvgAux2} = {PAvgAux2}/{PAvgCnt}
        Math 5 {PAvgLPSI} = {PAvgLPSI}/{PAvgCnt}
        Math 5 {PAvgHPSI} = {PAvgHPSI}/{PAvgCnt}
        Math 5 {PAvgAux3} = {PAvgAux3}/{PAvgCnt}
        Math 5 {PAvgAux4} = {PAvgAux4}/{PAvgCnt}
        
        ! Force raw values to an average
        Error Off
        Set 5 {PAux2_Raw} = {PAvgAux2}
        Set 5 {PAux1_Raw} = {PAvgAux1}
        Set 5 {PLPSI_Raw} = {PAvgLPSI}
        Set 5 {PHPSI_Raw} = {PAvgHPSI}
        Set 5 {PAux3_Raw} = {PAvgAux3}
        Set 5 {PAux4_Raw} = {PAvgAux4}
		Error on
        Log Raw Zero LPSI {PAvgLPSI} HPSI {PAvgHPSI} Number of readings {PAvgCnt}

	    If {PAux1} > -100 Then
			DelayWrite ZAR2 = {PAux1_AVG}
	    	Calibrate Zero {PAux1} 0
	    Endif
	    If {PAux2} > -100 Then
			DelayWrite ZAR1 = {PAux2_AVG}
		    Calibrate Zero {PAux2} 0
	    Endif
	    If {PLPSI} > -100 Then
			Calibrate Zero {PLPSI} 0
	        DelayWrite ZAR3 = {PLPSI_AVG}
	    Endif				
	    If {PHPSI} > -100 Then
		    Calibrate Zero {PHPSI} 0
			DelayWrite ZAR4 = {PHPSI_AVG}
	    Endif				

		If {PAux3} > -100 Then
			Calibrate Zero {PAux3} 0
			DelayWrite ZAR5 = {PAux3_AVG}
		Endif				
		If {PAux4} > -100 Then
			Calibrate Zero {PAux4} 0
			DelayWrite ZAR6 = {PAux4_AVG}
		Endif				
    
	Set {PStep} = 20
	    Prompt OK Press OK when ready to do gain calibration

    ! Wait for load 
    ElseIf {PStep} = 20 & {APrompt} = 1 Then
        If {PLPSI} < 1 & {PAux2} < 1 Then
            Status Yellow Please check - LPSI {PLPSI} < 1 or  Aux2 {PREF} < 1
        ElseIf {PAux1} < 1 Then
            Status Yellow Please check - Aux1 {PAux1} < 1        
        Else
        	Set {PStep} = 21
        Endif    
    ElseIf {PStep} = 21 Then 
        Clear Avg
        Set 5 {PAvgAux2} = 0
        Set 5 {PAvgAux1} = 0
        Set 5 {PAvgLPSI} = 0
        Set 5 {PAvgHPSI} = 0
        Set 5 {PAvgAux3} = 0
        Set 5 {PAvgAux4} = 0
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

        Math 5 {PAvgAux2} = {PAvgAux2}/{PAvgCnt}
        Math 5 {PAvgAux1} = {PAvgAux1}/{PAvgCnt}
        Math 5 {PAvgLPSI} = {PAvgLPSI}/{PAvgCnt}
        Math 5 {PAvgHPSI} = {PAvgHPSI}/{PAvgCnt}
        Math 5 {PAvgAux3} = {PAvgAux3}/{PAvgCnt}
        Math 5 {PAvgAux4} = {PAvgAux4}/{PAvgCnt}

        ! Force raw values to an average
        Set 5 {PAux2_Raw} = {PAvgAux2}
        Set 5 {PAux1_Raw} = {PAvgAux1}
        Set 5 {PLPSI_Raw} = {PAvgLPSI}
        Set 5 {PHPSI_Raw} = {PAvgHPSI}
        Set 5 {PAux3_Raw} = {PAvgAux3}
        Set 5 {PAux4_Raw} = {PAvgAux4}

        Log Raw Gain Aux2 {PAvgAux2} HPSI {PAvgAux1} LPSI {PAvgLPSI} HPSI {PAvgHPSI} Number of readings {PAvgCnt}
		
	    If {PLPSI} > 5 Then
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
	    If {PHPSI} > 5 Then
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
	    If {PAux1} > .4 Then
			DelayWrite AR3 = {PAux1_AVG}
			DelayWrite GAR3 = {PAux1_Gain}
			Calibrate Gain {PAux1} {SLPSIScale}
		    Math 4 {PValue} = ({PAvgAux1}+{PAux1_Zero})*{PAux1_Gain}
			DelayWrite AC3 = {PValue}
			Write Zero3 = {PAux1_Zero}
			Write Gain3 = {PAux1_Gain}
			Log Aux1 Gain changed to {PAux2_Gain}
			DelayWrite D3 = {PAux1_Title}
			DelayWrite ACT3 = {SLPSIScale}
	    Endif
	    If {PAux2} > 5 Then		! Make sure there's a valid channel
			DelayWrite AR4 = {PAux2_AVG}
			DelayWrite GAR4 = {PAux2_Gain}
			Calibrate Gain {PAux2} {SLPSIScale}
		    Math 4 {PValue} = ({PAvgAux2}+{PAux2_Zero})*{PAux2_Gain}
			DelayWrite AC4 = {PValue}
			Write Zero4 = {PAux2_Zero}
			Write Gain4 = {PAux2_Gain}
			Log Aux2 Gain changed to {PAux2_Gain}
			DelayWrite D4 = {PAux2_Title}
			DelayWrite ACT4 = {SLPSIScale}
	    Endif
		If {PAux3} > 5 Then
			DelayWrite AR5 = {PAux3_AVG}
			DelayWrite GAR5 = {PAux3_Gain}
			Calibrate Gain {PAux3} {SHPSIScale}
			Math 4 {PValue} = ({PAvgAux3}+{PAux3_Zero})*{PAux3_Gain}
			DelayWrite AC5 = {PValue}
			Write Zero5 = {PAux3_Zero}
			Write Gain5 = {PAux3_Gain}
			Log Aux3 Gain changed to {PAux3_Gain}
			DelayWrite D5 = {PAux3_Title}
			DelayWrite ACT5 = {SLPSIScale}
		Endif
		If {PAux4} > 5 Then
			DelayWrite AR6 = {PAux4_AVG}
			DelayWrite GAR6 = {PAux4_Gain}
			Calibrate Gain {PAux4} {SHPSIScale}
			Math 4 {PValue} = ({PAvgAux4}+{PAux4_Zero})*{PAux4_Gain}
			Log {PValue} = ({PAvgAux4}+{PAux4_Zero})*{PAux4_Gain}
			DelayWrite AC6 = {PValue}
			Write Zero6 = {PAux4_Zero}
			Write Gain6 = {PAux4_Gain}
			Log Aux4 Gain changed to {PAux4_Gain}
			DelayWrite D6 = {PAux4_Title}
			DelayWrite ACT6 = {SLPSIScale}
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
If {Aux2TechData} then
	Database Use 0
	If {ASystem}={LRerunSys} Then
		Database {LDatabase} Table LabResults key {STestNumber}
	Else
		Database {LDatabase} Table LabResults key {ARevision}
	Endif
	Database Lab = {LLab}

	! If rerun then don't touch the original fields (if they're not listed they don't get affected)
	If {ASystem} <> {LRerunSys} Then
		Database Stall = {AStation_Title}
		Database Tester = {SOperDir}
		Database Comment1 = {SEquipment}
		Database Comment2 = {SCalComment}
		Database ResultReport = CALPres
		Database TestDate = {AStartDate} {AStartTime}
		Database ResultFile = stands\PSICAL_{AStation_Title}_{ARevision}
	Else
		Database Comment1 = {SComment1Orig}*
		Database Comment2 = {SComment2Orig}
		! This makes the ICON change until the PDF is generated
		Database PDFLink = -1
	Endif
	Database Write
	! Write info to Performance table
	Database {LDatabase} table Performance key {ARevision}
	Database TempUnits = {STempUnits}
	Database TestName = CalPres {PVersion}
	Database Write
Endif

If "{SReport}" = "Y" Then
	If {LLocation} = 4 Then	! Evansville
		Set {SPlotList1} = LPSI;HPSI;Aux2;Aux1;
	Else
		Set {SPlotList1} = LPSI;HPSI;
	Endif
	Result Report CALPRES
	Result Print A

	If {ASim} Then
		Write ARevision = {STestNumber}
		Write ResultFile = {SRerunFile}
	Endif
    Status Blue Writing Database LabResults
    Log Writing LabResults
	! Write end date so query-based RTSReport will generate PDF
	Database Use 0
	Database {LDatabase} Table LabResults key {ARevision}
	Database EndDate = {ADate} HMS[{ATime_Raw}]
	Database Write
    Status Blue Writing Database Labresults
    Log Writing Labresults
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
	Database Use {LLabSpecificTable}
	Database {LDatabase} Table lr_Flex key InsertOnly Keyfield {ARevision}
	Log Database {LDatabase} Table lr_Flex key InsertOnly Keyfield {ARevision}
	Database fields TestNumber,Type,Variable,FloatValue,StringValue,DateValue

	Database values {ARevision},SP,TestName,NULL,CALPRES {PVersion},NULL
	If {SRefVolt_Left} > 0 Then
		Database values {ARevision},SP,{RD1},{RACT1},NULL,NULL
		Database values {ARevision},SP,{RD2},{RACT2},NULL,NULL
	Endif
	If {RD3} > -998 Then
		Database values {ARevision},SP,{RD3},{RACT3},NULL,NULL
	Endif
	If {RD4} > -998 Then
		Database values {ARevision},SP,{RD4},{RACT4},NULL,NULL
	Endif
	Database values {ARevision},SP,{RD5},{RACT5},NULL,NULL
	Database values {ARevision},SP,{RD6},{RACT6},NULL,NULL	
	Database Write
Endif

Result Write Setup
Include Rerun Write

Status Grey Pressure Calibration finished TN:{ARevision}
Log Pressure Calibration finished TN:{ARevision}
End




