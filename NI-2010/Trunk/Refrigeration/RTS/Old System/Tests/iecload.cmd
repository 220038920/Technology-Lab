! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr : IEC Load Test 
!    Rev    : 1.0
!    By    : Scott
!    1.0 SH 6/9/08  Initial test created to get averages for 2 1 hour periods and make report
!    1.1 SH 7/8/08  Added Clear Max and Clear Min commands and now report Yok WVA instead fo RTS WVA
!	 1.2 SH 7/1/09	Added some more checking to make sure the Yok is reading THD correctly
!    1.3 SH 8/17/10 Added Open circuit fields for LG, LN and NG per new spec requirement
!    1.4 SH 8/26/10 Added units labeling and an extra field for Equipment
!					Adding test for "Results show compliance"
!    1.5 SH 5/01/14 Added some checking during the test so you don't have to wait to the end to see you failed
!
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
!
! Load settings {PLoad}
! 0 Load is off
! 1 Request load off
! 2 Load is on
! 3 Request load on
! 4 Kwh counter is reset
! 5 Request Kwh reset
! 6 Turn on 10W Load
! 7 Turn on 200W Load
! 8 Turn on 300W Load
! 9 Turn on 500W Load
! 10 Turn on the product outlet
! 11 Harmonics On
! 12 Harmonics Off
!
! Step settings {PStep}
! 11 Noload: Waiting for no load
! 12 Noload: Averaging
! 13 Noload: Waiting for values
! 21 Load: Waiting for load
! 22 Load: Averaging
! 23 Load: Waiting for values
Transfer nodevice 1
Lookup General
Lookup location
Point Clear
Point vaw
Point vawcal


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

Revision

Set {SResultReport} = IECLOAD

If {ASystem} = {LRerunSys} then
	Set {LSaveAs} = {SRerunFile}-	
Else
	Set {LSaveAs} = stands\IECLOAD_{AStation_Title}_{ARevision}
Endif
Plot SaveAs {LSaveAs}
Result SaveAs {LSaveAs}

Transfer Interval 10
Plot Interval 10
Plot Scale Watt = 0.1
Plot Scale WattAct = 0.1
Trend Interval 10
Trend Clear

DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]

Clear All
Cycle Clear
Clear Start

Set 1 {PVersion} = 1.5
! Adjust the decimal places
Set 5 {PKwhrAct} = 0
Set 5 {PWhrAct} = 0
Set 5 {PWhr} = 0
Set 4 {PAmpAct} = 0
Set 4 {PAmp} = 0
Set 4 {PWattAct} = 0
If {ASim} = 0 Then
	Set 4 {PWattAct_Raw} = 0
Endif
Set 4 {PWatt} = 0
Set 3 {PVoltAct} = 0
Set 3 {PVolt} = 0
Set 0 {PCommand} = 1
Set 0 {PLoad} = 1
Set 0 {PStep} = 10
Set 0 {PTimer} = 0
Set 0 {PCurRange} = 1
Set 0 {PAutoCal} = 0
Set 0 {PRngTime} = 0
Set 0 {PMaxRange} = 1
Set 0 {PMinRange} = 1
Set 0 {PType} = 0
Set 0 {PMessIndex} = 0
Set 0 {PTestCount} = 1
Set 0 {PActTestTime} = 0
Set 0 {Pvalue2} = 11

Transfer filter off			! Without this, RTS thinks the high watts is an overload and goes slow
Status Green IEC Load {PVersion} Ready
Log IECLoad Version {PVersion}
Begin
    If {PWattAct_Cnt} <> {PLastSample} Then
        Math 0 {PLastSample} = {PWattAct_Cnt}
	    Math 0 {PAvgCnt} = {PAvgCnt} + 1
	Endif
! Toggle between Harmonics mode and VAW
    If {ATestTime} > {PRngTime} Then
    	If {PValue2} = 11 Then
    		Set 0 {Pload} = 12
    		Set 0 {PValue2} = 12
    	Else
    		Set 0 {PValue2} = 11
    		Set 0 {Pload} = 11
    	Endif
    	
    	Math 0 {PRngTime} = {ATestTime} + 10
    Endif
! Check for remote cal dialog just opened or cancel pressed
    If {PStep} = 10 Then
        Status Green IEC Load Test Version {PVersion} Ready
        Clear All
        Set {PStep} = 11
        Prompt OK Press OK when ready to do NO LOAD Harmonics test
    ! Wait for no load 
    ElseIf {PStep} = 11 Then
        If {PWattAct} < 10 & {PYVthd} > 0 & {PVoltAct} > 90 Then	
        	Prompt Cancel
            Clear Avg
            Clear Max
            Clear Min
            Cycle Clear
            Set 5 {PAvgCnt} = 0
            Set {PStep} = 12
	        Math {PTimer} = {ATestTime} + ({SAverageTime}*60)
            Trend Annotation 1,0;{AtestTime};0;1;OC Start				!Trend annot
			Log No load IEC Avg Started
        Elseif {APrompt} = 1
            Status Yellow Check Watts<10:{PWattAct} Vthd>0:{PYVthd} Volt>90:{PVoltAct}
        Endif
	ElseIf {PStep} = 12 & {ATestTime} > {PTimer} & {PAvgCnt} > 10 Then	! Getting average
		Set {PStep} = 13
		Status Blue Getting No Load Average
    ElseIf {PStep} = 12 & ({ATestTime} < {PTimer} | {PAvgCnt} < 10) Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
		If {PVoltAct_Min} < ({SVoltSet#}*.97) Then		
			Status Red Minimum Voltage: {PVoltAct_Min} 3% less than nominal {SVoltSet#}
		ElseIf {PVoltAct_Max} > ({SVoltSet#}*1.03) Then		
			Status Red Maximum Voltage: {PVoltAct_Max} 3% over nominal {SVoltSet#}
		ElseIf {PYVthd_Max} > 5 Then		
			Status Red Voltage THD MAX: {PYVthd_Max} > 5%			
		Else
			Status Blue No Load avg- Waiting HMS[{PValue}]
		Endif
	ElseIf {PStep} = 13 Then	! Zero completed
        Status Green No Load Avg completed

		DelayWrite NLWatt = {PWattAct_Max},{PWattAct_Min},{PWattAct_Avg}
		DelayWrite NLAmp = {PAmpAct_Max},{PAmpAct_Min},{PAmpAct_Avg}
		DelayWrite NLVolt = {PVoltAct_Max},{PVoltAct_Min},{PVoltAct_Avg}
		DelayWrite NLYFreq = {PYFreq_Max},{PYFreq_Min},{PYFreq_Avg}
		DelayWrite NLYVthd = {PYVthd_Max},{PYVthd_Min},{PYVthd_Avg}
		DelayWrite NLYAthd = {PYAthd_Max},{PYAthd_Min},{PYAthd_Avg}

		! Calculate Reg values for report
		Math 3 {PValue} = {PVoltAct_Max}-{PVoltAct_Avg}
		Math 3 {PValue2} = {PVoltAct_Avg}-{PVoltAct_Min}
		Math 3 {PValue} = MAX[{PValue},{PValue2}]
		Math 2 {PValue} = {PValue}*100/{PVoltAct_Avg}
		DelayWrite RegVoc = {PValue}
		
		Math 3 {PValue} = {PYFreq_Max}-{PYFreq_Avg}
		Math 3 {PValue2} = {PYFreq_Avg}-{PYFreq_Min}
		Math 3 {PValue} = MAX[{PValue},{PValue2}]
		Math 2 {PValue} = {PValue}*100.0/{PYFreq_Avg}
		Log YFMax:{PYFreq_Max} YFAvg{PYFreq_Avg} YFMin{PYFreq_Min}
		DelayWrite RegFoc = {PValue}

		Log Raw No load IEC Avg THD {PYVthd_Avg} Number of readings {PAvgCnt}
		
		Set {Pvalue2} = 11
		Set {PStep} = 20
	    Prompt OK Press OK when ready to do ISO Load 
    ! Wait for load 
    ElseIf {PStep} = 20
       	If {PWattAct} > 100 & {PYVthd} > 0 & {PYAthd} >0 & {PVoltAct} > 90 Then		! Allows test to continue automatically
        	Prompt Cancel
			Math {PTimer} = {ATestTime} + 30	! 30 seconds for load to stabilize
			Set {PStep} = 21
        Elseif {APrompt} = 1 Then				! Person clicked OK but something isn't right.
            Status Yellow Check Watts>100:{PWattAct} Vthd>0:{PYVthd} Athd>0:{PYAthd} Volt>90:{PVoltAct}
        Endif
    ! Wait for load to stabilize 
    ElseIf {PStep} = 21 & {ATestTime} > {PTimer} Then
            Clear Avg
            Clear Max
            Clear Min
            Set 5 {PAvgCnt} = 0
            Set {PStep} = 22
	        Math {PTimer} = {ATestTime} + ({SAverageTime}*60)
            Trend Annotation 2,0;{AtestTime};0;1;LD Start				!Trend annot
			Log Loaded IEC Avg Started
    ElseIf {PStep} = 21 & {ATestTime} < {PTimer} Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
        Status Blue Waiting HMS[{PValue}] for Load to stabilize
	ElseIf {PStep} = 22 & {ATestTime} > {PTimer} & {PAvgCnt} > 10 Then	! Getting average
		Set {PStep} = 23
		Status Blue Getting ISO Load Average
    ElseIf {PStep} = 22 & {ATestTime} < {PTimer} Then
        Math 0 {PValue} = {PTimer} - {ATestTime}
		If {PVoltAct_Max} > ({SVoltSet#}*1.03) Then		
			Status Red Maximum Voltage: {PVoltAct_Max} 3% over nominal
		ElseIf {PYVthd_Max} > 5 Then		
			Status Red Voltage THD MAX: {PYVthd_Max} > 5%			
		Else
			Status Blue Waiting HMS[{PValue}] for Load averages
		Endif
	ElseIf {PStep} = 23 Then	! Gain completed
        Status Green ISO Load Avg completed

		DelayWrite LWatt = {PWattAct_Max},{PWattAct_Min},{PWattAct_Avg}
		DelayWrite LAmp = {PAmpAct_Max},{PAmpAct_Min},{PAmpAct_Avg}
		DelayWrite LVolt = {PVoltAct_Max},{PVoltAct_Min},{PVoltAct_Avg}
		DelayWrite LYFreq = {PYFreq_Max},{PYFreq_Min},{PYFreq_Avg}
		DelayWrite LYVthd = {PYVthd_Max},{PYVthd_Min},{PYVthd_Avg}
		DelayWrite LYAthd = {PYAthd_Max},{PYAthd_Min},{PYAthd_Avg}

		! Calculate Reg values for report
		Math 3 {PValue} = {PVoltAct_Max}-{PVoltAct_Avg}
		Math 3 {PValue2} = {PVoltAct_Avg}-{PVoltAct_Min}
		Math 3 {PValue} = MAX[{PValue},{PValue2}]
		Math 2 {PValue} = {PValue}*100/{PVoltAct_Avg}
		DelayWrite RegVld = {PValue}

		Math 3 {PValue} = {PYFreq_Max}-{PYFreq_Avg}
		Math 3 {PValue2} = {PYFreq_Avg}-{PYFreq_Min}
		Math 3 {PValue} = MAX[{PValue},{PValue2}]
		Math 2 {PValue} = {PValue}*100.0/{PYFreq_Avg}
		DelayWrite RegFld = {PValue}
        Log Raw Load IEC Avg THD {PYVthd_Avg} Number of readings {PAvgCnt}
        Leave    
	Endif
			
Loop
Abort
DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = IECLoad v{PVersion}
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
Set {STestType} = PowerQual
DelayWrite D Title
! Save test data to the database
Include Database LabResults
Database Write
! Write info to Performance table
Database Use {LLabSpecificTable}
Database {LDatabase} table Performance key {ARevision}
Database TempUnits = {STempUnits}
Database TestName = IECLoad {PVersion}
Database Write

If "{SReport}" = "Y" Then
	Set {SPlotList1} = WATTACT;VOLTACT;YFREQ
	Set {SPlotList2} = YVthd
	Result Report IECLOAD
	Result Print A
	Result Write Setup
	
	Include Rerun Write
Endif


Status Grey IEC Load Test finished TN:{ARevision}
Log IEC Load Test finished TN:{ARevision}
End




