! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr          : Cycle information for a no defrost test
!    File           : AllFridge.CMD
!    By             : Scott Hellmer, Mark Hooks
!
!	  1.2 SC 11/05/02 Fix for no pdf created when SPrintRep is Y and SResultcopies is set to a negative number.
!	  1.4 KA 5/23/03 Fixes for Kennie
!	  1.5 SH 1/06/04 Fixed Whr values and time values for 7 cycle periods.
!	  1.6 SH 1/08/04 Fixed median cycle and added rerun ability

Lookup location
Lookup performancelab

! To support reruns
Include Rerun

If {LRefTechData} Then
	Include Product track header
Endif
 
Point Clear
Point vaw
Point allfridge
Point {SPointFile}

If "{SPointTree}" <> "" Then
	If "{SPointTree}" <> "NULL" Then
		Point {SPointTree}
	Endif
Endif

Set 1 {PVersion} = 1.6

Error off
!Load point file, Initialize and Setup HS Aux Input channel
Include AuxInInit
Include AuxInSetup
Error On

If "{SOperator}" = "" Then
	Status Red Please log into RTS and restart test
	goto TestEnd
EndIf
If "{SResultReport}" = "" Then
	Status Red Please choose a Report type and restart test
	goto TestEnd
EndIf

Error On

Include HumiditySetup

If "{SUseYok}" = "Y" Then
    Point Yok
Endif

If "{SOperator}" = "" Then
	Status Red Please log into RTS and restart test
	goto TestEnd
EndIf
If "{SResultReport}" = "" Then
	Status Red Please choose a Report type and restart test
	goto TestEnd
EndIf
If {ASim} = 0 Then
	Status Blue {SProductID} Starting All Fridge Test Voltage S.P. {SVoltSet#}
	Log Starting All Fridge Test v{PVersion} Voltage S.P. {SVoltSet#}
EndIf
Transfer units {STempUnits}
Transfer Monitor norm cycle
Set Lock {STempUnits}

! Lookup file containing limits
Lookup cycle{STempUnits}
Revision
Log Test Number {ARevision}
Include Save As

! This doesn't work right now because only one report is supported.
If "{SPointTree}" <> "" Then
	If "{SPointTree}" <> "NULL" Then
		Result Report SingleTree
	Endif
Endif

Transfer Interval 10

! Wait for good front end data
! Model 50 Changes
Clear All
Begin
    If {AState_Last} <> 0 | {ASystem} = 9 Then
        Leave
    ElseIf {ATestTime} > 300 Then
    	Log Bad State file!
        Status Red Bad State file!
        Goto TestEnd
    Endif
Loop

Status Blue {SProductID} All Fridge Test v{PVersion} - Waiting for good Cab Average value
Begin
    ! Model 50 Changes
    If ({PCab_Avg} > -998 & {PCab_Avg} <> 0 & {PCab_Avg} <130) Then
        Leave
    ! Timeout
    ElseIf {ATestTime} > 300 Then
    	Log Timeout waiting for good cab average
        Leave
    ElseIf ({SCheckOTC} = 1) Then
        Log Cab Average verify bypassed
!        Set {SCheckOTC} = 0
        Leave
    Endif
Loop

Include Cold Resistance
! Adjust the plot scaling if needed
If {PVolt} > 150 Then
    Plot Scale Volt = 0.5
Endif
Plot Scale Watt = 0.1

If {ASystem} <> 9
	Plot Scale Amp = 10
Endif
Plot Interval 50
Trend Interval 50
Transfer Interval 50
Error Off
If {SSampleRate} > 9 Then
	Plot Interval {SSampleRate}
	Trend Interval {SSampleRate}
	Transfer Interval {SSampleRate}
	Set 0 {PSampleRate}={SSampleRate}
Else
	Set 0 {SSampleRate}=50
Endif
Error On


! -- Init vars and set number of decimal places needed
Set 0 {PNewDay} = 0
Set 0 {PStartTime} = 0
If "{SUseYok}" = "Y" Then
     ! Reset integrator
     Set {PLoad} = 5
Endif
Stable {SStableGrp_Right}
Set Lock {SStableGrp}

Clear All

! - Wait for start time
Begin
    ! --- Check for starting test at a fixed time of day ---
    Math {PStartTime} = {SStartTime_Right} * 3600
    If {SStartTime_Right} <= 0 Then
        Leave
    ElseIf {ASim} & {SStartTime_Right} > 0 & {ATestTime} > {PStartTime} Then
        Leave
    ElseIf {ASim} = 0 & ({SStartTime_Right} > 0) & ({ATime_Raw} > {PStartTime}) Then
        Leave
    Endif
Loop

Write AToutLen = HMS[{ATestTime}]
Write StartStable = {AStable}
Write StartPeriod = HMS[{AStable_TOtal}]
Log Stable value = {AStable} Period = HMS[{AStable_TOtal}]
Transfer Interval 50
Status Green {SProductID} All Fridge Started v{PVersion}
Log Cycle Test Started v{PVersion}
Clear Start
Plot Clear
Trend Clear
Cycle Marker
Write StartTime = {ADate} HMS[{ATime_Raw}]
Status Green All Fridge Test {PVersion} in progress
Cycle Start Before 0
Cycle End Before 0

! -- Init vars and set number of decimal places needed
Set 2 {POut25} = 0
Set 2 {PTimeOut25} = 0
Set 2 {PSuctStrt} = 0
Set 2 {PSuctEnd} = 0
Set 2 {PSuctTime} = 0
Set 2 {PSuctMax} = 0
Set 0 {PTotal} = 0
Set 1 {PValue} = 0
Set 2 {PCyc1Hr} = 0
Set 2 {PCyc4Hr} = 0
Set 2 {PCyc24Hr} = 0
Set 4 {PWhr1Hr} = 0
Set 4 {PWhr4Hr} = 0
Set 4 {PWhr24Hr} = 0				 
Set 1 {POnPer} = 0
Set 0 {PCyc1Strt} = 0
Set 0 {PCyc1End} = 0
Set 0 {PCyc1Time} = 0
Set 0 {PCyc2Strt} = 0
Set 0 {PCyc2End} = 0
Set 0 {PCyc2Time} = 0
Set 0 {PCyc3Strt} = 0
Set 0 {PCyc3End} = 0
Set 0 {PCyc3Time} = 0
Set 0 {PCyc4Strt} = 0
Set 0 {PCyc4End} = 0
Set 0 {PCyc4Time} = 0
Set 0 {PCyc5Strt} = 0
Set 0 {PCyc5End} = 0
Set 0 {PCyc5Time} = 0
Set 0 {PCyc6Strt} = 0
Set 0 {PCyc6End} = 0
Set 0 {PCyc6Time} = 0
Set 0 {PCyc7Strt}= 0
Set 0 {PCyc7End} = 0
Set 0 {PCyc7Time} = 0
Set 0 {PTstCyc} = 0
Set 0 {PBest} = 0
Set 0 {PContRun} = 0
Set 0 {PNoCycle} = 0

Stable {SStableGrp_Right}	  

! --------------------- Wait for 10 cycles and 10 hours -----------------------
Status Yellow All Fridge v{PVersion} - Getting stabilization data

Begin
	If {ATotalCycle} > 10 | {ATestTime} > 36000 Then
		If {ATotalCycle} = 0 Then	   
			Set {PContRun} = 1
	        Cycle Interval 300 ! Put a marker in database every 5 min
		Endif
		Leave
    Endif

    If {SCheckOTC} = 1 | {ASystem} = 9 Then
        Leave
    Endif

Loop

! -- Return here for multiple tests
Label Restart

! ----------- Wait for compressor off-to-on transition to start---------------
Begin
    If ({AState} = 2) & ({AState_Last} = 1) Then
    	Leave
    Endif
Loop

Write CycleStart = HMS[{ATestTime}]
Set {PCyc1Strt} = {ATestTime}
Status Green {SProductID} All Fridge Started v{PVersion}
! --------------------- Main test loop -----------------------
Set 0 {PStableCycles}={ATotalCycles}
Begin

	! -- Open TC Requested? 
    If ({SCheckOTC} = 1) Then
        Log Open TC detect performed
        Set {SCheckOTC} = 0
        ! If RTP sees interval of 1, it does OTC check, then resets rate
        If {LLocation} = 4 Then
        	Transfer Interval 1
        Endif
    Endif

    If {ASettings} Then
		Error Off	
		Include AuxInSetup		!Set up HS Aux channel if selected while test is running
		Error On
    Endif

	Error On

	Include AuxInProcess		!Calculate Aux Input Channel

	
! -- Check for freezer above 25F (-3.9C) degrees --
    If ({PFrez} > {LOut25}) & ({POut25} = 0) Then
        Set {POut25} = {ATestTime}
        Math {PMessIndex} = {PMessIndex} + 1
        Set $ = {PMessIndex}
        Write $TM = HMS[{ATestTime}]
		Write $CM = Freezer over {LOut25} degrees
        Log Freezer over {LOut25} degrees
    Endif

    If ({PFrez} < {LOut25}) & ({POut25} > 0) Then
        Math {PTimeOut25} = ({ATestTime} - {POut25}) / 60
        Delay Write Out25Tot = {PTimeOut25}
        Write In25At = HMS[{ATestTime}]
        Log Freezer under {LOut25}. Over for {PTimeOut25} minutes
        Math {PMessIndex} = {PMessIndex} + 1
        Set $ = {PMessIndex}
        Write $TM = HMS[{ATestTime}]
		Write $CM = Freezer under {LOut25}. Over for {PTimeOut25} minutes
        Set {POut25} = 0
    Endif

    ! -- Check for suction line below 50F (10C) Deg --
    ! Temp transition under 50F 10C deg
    ! If "{SChkSuct}" = "Y" Then
    ! Always check for suction SH 9/25/00
    If ({PSuction} < {LOut50}) & ({PSuction_Last} > {LOut50}) Then
        Log Suction line under {LOut50}
        ! Interpolate the transition time
        Math {PSuctStrt} = ({LOut50} - {PSuction}) / ({PSuction_Last} - {PSuction})
        Math {PSuctStrt} = {ATestTime} - ({PSuctStrt} * {ASample})
    Endif

    ! Temp transition over 50 deg
    If ({PSuction} > {LOut50}) & ({PSuction_Last} < {LOut50}) Then
        ! Interpolate the transition time
        Math {PSuctEnd} = ({PSuction} - {LOut50}) / ({PSuction} - {PSuction_Last})
        Math {PSuctEnd} = {ATestTime} - ({PSuctEnd} * {ASample})
        Math {PSuctEnd} = ({PSuctEnd} - {PSuctStrt}) / 60
        If {PSuctEnd} > {PSuctMax} Then
            Set {PSuctMax} = {PSuctEnd}
        Endif
        Log Suction line over {LOut50}. Period for {PSuctTime} Minutes
        Math {PMessIndex} = {PMessIndex} + 1
        Set $ = {PMessIndex}
        Write $TM = HMS[{ATestTime}]
		Write $CM = Suction line over {LOut50} for {PSuctTime} min.
        Math {PSuctTime} = {PSuctTime} + {PSuctEnd}
    Endif

    ! -- Keep track of each cycles endpoint --
    If ({AState} = 2) & ({AState_Last} = 1) & ({ATestTime} > 60) Then
    	Math 0 {PActualCycles}={ATotalCycles}-{PStableCycles}
        Status Green All Fridge Test - Cycle {PActualCycles}
        If {PActualCycles} = 1 Then
            Set {PCyc1End} = {ATestTime}
            Set {PCyc2Strt} = {ATestTime}
            Log Cycle 1 completed
        ElseIf {PActualCycles} = 2 Then
            Set {PCyc2End} = {ATestTime}
            Set {PCyc3Strt} = {ATestTime}
            Log Cycle 2 completed

        ElseIf {PActualCycles} = 3 Then
            Set {PCyc3End} = {ATestTime}
            Set {PCyc4Strt} = {ATestTime}
            Log Cycle 3 completed

        ElseIf {PActualCycles} = 4 Then
            Set {PCyc4End} = {ATestTime}
            Set {PCyc5Strt} = {ATestTime}
            Log Cycle 4 completed

        ElseIf {PActualCycles} = 5 Then
            Set {PCyc5End} = {ATestTime}
            Set {PCyc6Strt} = {ATestTime}
            Log Cycle 5 completed

        ElseIf {PActualCycles} = 6 Then
            Set {PCyc6End} = {ATestTime}
            Set {PCyc7Strt} = {ATestTime}
            Log Cycle 6 completed

        ElseIf {PActualCycles} = 7 Then
            Set {PCyc7End} = {ATestTime}
!            Math {PCyc7Time} = {ATestTime} - {PCyc7Strt}
!            Math {PCycAvg} = {PCycAvg} + {PCyc7Time}
            Log Cycle 7 completed
            ! -- Test is completed after 7th cycle is done --
            Leave
        Endif
    Endif
    
	! -- Check for no cycles after 12 hours
	If {PActualCycles} = 0 & {ATestTime} >= 43200 Then
		Set {PNoCycle} = 1
		Goto NoCycle
	Endif

    ! -- Check for overload
    If {AOverload}
        Log Overload started
        Write OverloadStart = {ATestTime}
    Endif	

Loop

Abort


! -- label here for when it hasn't cycled & it's 12hrs into the test
Label NoCycle

! -- Power period test data
! 7 Cycle period
Cycle Start before {PCyc1Strt}
If ({PNoCycle} & {PContRun} = 0)
	Cycle End Before {ATestTime} Off
Else
	Cycle End After {ATestTime}
Endif

Write PP Max Min Avg On Off
Write Atotalon = HMS[{ACycle_Total_On}]
Write Atotaloff = HMS[{ACycle_Total_Off}]

Math {PCycAvg} = {ACycle_Total} / 7

Math {POnPer} = ({ACycle_Total_On} / ({ACycle_Total_On} + {ACycle_Total_Off})) * 100
Write {POnPer}
Write HMS[{ACycle_Min_On}]
Write HMS[{ACycle_Max_On}]
Write HMS[{ACycle_Avg_On}]
Write HMS[{ACycle_Min_Off}]
Write HMS[{ACycle_Max_Off}]
Write HMS[{ACycle_Avg_Off}]
Write TWhr = {AWhr}
Math {PWhr1Hr} = {AWhr} / ({ACycle_Total_On_Off} / 3600)
Math {PWhr4Hr} = {AWhr} / ({ACycle_Total_On_Off} / 14400)
Math {PWhr24Hr} = {AWhr} / ({ACycle_Total_On_Off} / 86400)
Write TWhr1Hr = {PWhr1Hr}
Write TWhr4Hr = {PWhr4Hr}
Write TWhr24Hr = {PWhr24Hr}
Write PowerPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]
Write TWAvgOn = {PWatt_Avg_On}
Write TWAvgOff = {PWatt_Avg_Off}

Set $ = 1
Label NextSave
    ! -- Cycle details
    Cycle Start before {PCyc$Strt}
    Cycle End Before {PCyc$End}
    Math {PCyc$Time} = {ACycle_Total}
    Write T$P Avg On Off
    Write T$len = HMS[{PCyc$Time}]
    Write T$str = HMS[{PCyc$Strt}]
    Write T$on = HMS[{ACycle_Avg_On}]
    Write T$off = HMS[{ACycle_Avg_Off}]
	Write T$CabAvg = {PCab_Avg_On_Off_Def_Rec}
	! NEW
	Write T$WattOn = {PWatt_Avg_On}
	Write T$WattOff = {PWatt_Avg_Off}

! -- Save whr information for this cycle.
    Math 2 {PCyc$Whr} = {AWhr} * 1000
    Write T$Whr = {PCyc$Whr}
    Math {PWhrAvg} = {PWhrAvg} + {PCyc$Whr}
    Math {PWhr1Hr} = {AWhr} / ({PCyc$Time} / 3600)
    Math {PWhr4Hr} = {AWhr} / ({PCyc$Time} / 14400)
    Math {PWhr24Hr} = {AWhr} / ({PCyc$Time} / 86400)
    Write T$Whr1Hr = {PWhr1Hr}
    Write T$Whr4Hr = {PWhr4Hr}
    Write T$Whr24Hr = {PWhr24Hr}

    Math $ = $ + 1
If $ < 8 Then
    Goto NextSave
Endif

! Get the overall average cycle time and watt hours
Math 1 {PWhrAvg} = {PWhrAvg} / 7

Write TAlen = HMS[{PCycAvg}]
Write TAwhr = {PWhrAvg}

Set {PBest} = 1
Set 2 {Ptstcyc} = 1000
Set $ = 1
Label NextCyc

    Math 2 {Pcyc} = {PCyc$Whr} - {PWhrAvg}
    If {Pcyc} < 0 then
        Math 2 {Pcyc} = {PWhrAvg} - {PCyc$Whr}
    Endif
    Write Debug = {Pcyc}, {PTstcyc}, $
    If {Pcyc} < {PTstcyc} Then
        Set {PBest} = $
        Set 2 {Ptstcyc} = {Pcyc}
    Endif
    Math $ = $ +1
If $ < 8 Then
    Goto NextCyc
Endif

If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASystem} = 9 Then
		Database RefTechDatabase Table Performance key {STestNumber}
	Else
		Database RefTechDatabase Table Performance key {ARevision}
	Endif
Endif  

Log Best cycle in test = {PBest} average = HMS[{PCycAvg}]
Write BestCyc = {PBest}
Set $ = {PBest}
Cycle Start before {PCyc$Strt}
Cycle End Before {PCyc$End}
Write BP Max Min Avg On Off
Write Blen = HMS[{PCyc$Time}]
Write Bstr = HMS[{PCyc$Strt}]
Write Bend = HMS[{PCyc$End}]
Write Bon = HMS[{ACycle_Avg_On}]
Write Boff = HMS[{ACycle_Avg_Off}]
Write BWhr = {PCyc$Whr}
Math {PWhr1Hr} = {PCyc$Whr} / ({PCyc$Time} / 3600)
Math {PWhr4Hr} = {PCyc$Whr} / ({PCyc$Time} / 14400)
Math {PWhr24Hr} = {PCyc$Whr} / (1000 * {PCyc$Time} / 86400)
Write BWhr1Hr = {PWhr1Hr}
Write BWhr4Hr = {PWhr4Hr}
Write BWhr24Hr = {PWhr24Hr}
Database Kwhr24 = {PWhr24Hr}
Write TempPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]

Write BWattOn = {PWatt_Avg_On}
Write BWattOff = {PWatt_Avg_Off}

Write D Title

Status Grey {SProductID} All Fridge Test Complete
If {SDay_Left} > -1 Then
	DelayWrite Comment = Day {SDay_Left}
Else
	DelayWrite Comment = ""
Endif

DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = All Fridge v{PVersion}
DelayWrite TestType = {STestType_Left}
DelayWrite TestSpec = {STestType_Right}
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
DelayWrite SEngineer = {SEngineer_Left}
DelayWrite CycleEnd = HMS[{ATestTime}]
Error Off
DelayWrite VoltSet = {SVoltSet#}
DelayWrite FreqSet = {SFreqSet#}
Error On
Result Report {SResultReport}
Result Copies 1

Include Database LabResults

Database Use {LLabSpecificTable}
Database TestName = All Fridge {PVersion}
Database CompType = {SCompType}
Database RefrigType = {SRefrType}
Database ControlSettings = {SSettings}

! Save test data to the database

If {AMode} <> 3 & {ATestTime} < 300 Then
	goto Restart
Elseif {ATestTime} > 300 Then
	! Always update the performance table
	Database Write
	Log Database Use {LLabResultsTable}
	Database Use {LLabResultsTable}
	Database Write
	Result Print {SPrintRep}
Endif

Result Write Setup
Include Rerun Write

! -- Check for repeating test --
! Was :If ({AMode} = 2) & ({STestCnt} > 1) & ({PStop} <> -2) Then
If ({AMode} = 2) & ({STestCnt} > 1) Then
    Math 0 {STestCnt} = {STestCnt} -1
    Result Close
    Log Clear
    Trend Clear
    Set 0 {PValue}= {ARevision}
    Revision
	Include Save As
    Write LastTest = {SOperDir}\{SProductID}-{PValue}-{AStation_Title}
    Result Copies 1
    Result Report {SResultReport}
    
    Clear All
    Clear Start
	Plot Clear
	Trend Clear

	If {LRefTechData} Then
	   Database RefTechDatabase key {ARevision}
    Endif
    Goto Restart
Endif
! Added 9/26
!Include ChainTest
Label TestEnd
End


! -- The following commands are executed each scan --
Sub InterCmds

    Math {PCyc1Hr} = {PActualCycles} / ({ATestTime} / 3600)
    Math {PCyc4Hr} = {PActualCycles} / ({ATestTime} / 14400)
    Math {PCyc24Hr} = {PActualCycles} / ({ATestTime} / 86400)
    Math {PWhr1Hr} = {PWhr} / ({ATestTime} / 3600)
    Math {PWhr4Hr} = {PWhr} / ({ATestTime} / 14400)
    Math {PWhr24Hr} = {PWhr} / ({ATestTime} / 86400)
    Math {POnPer} = ({Acycle_Total_On} / ({Acycle_Total_On} + {Acycle_Total_Off})) * 100
    Return
EndSub
	
! --------------------- AddComment -----------------------
! Adds a comment to the test and creates a log entry
Sub AddComment
	Log {LValue}
	If {PMessIndex} < 100 Then
	    Math 0 {PMessIndex} = {PMessIndex} + 1
	    Set $ = {PMessIndex}
	    Write $TM = HMS[{ATestTime}]
		Write $CM = {LValue}
	Endif
	Return
EndSub
