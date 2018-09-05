! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Pull Down test
!    File    : PULL.CMD
!    Rev    : 1.0
!    By    : Mark Hooks
!    Date    : 20-Jun-97
!    Last change on :
!	3.2,3.3 02-19-01 SH	Fix (hopefully) for initial reading on pressures
!   3.4 02-22-01 SH   Initial reading taken separately
!   3.5 03-07-01 SH   Initial readings written while power < 1 watt
!   3.6 03-13-01 SH   Initial readings written while power < .3 watt and make sure we write 13 readings 
!   3.7 05-31-01 SH   Check for equilized pressure as well as 0 watt to write initial
!   3.8 07/30/01 SC   Fix for inaccurate pressures' MAX and MIN
!	3.9 06/25/02 SC	Added support for HAuxInput channel
!	4.0 03/31/03 SH	Added support for UL report
!	4.1 SH 05/15/03   Added UL/Codes support, write out volt/freq setpoint and stall name for db cal query
!	4.2 SH 06/30/03   Fix for PDF only
!	4.3 SH 07/21/03   Added Yokogawa support
!	4.4 SC 10/02/03   Added lookup variables and new includes for database stuff
!	4.5 SH 10/08/03   Added support for rerun and standard aux input stuff
!	4.6 SH 11/13/03   Added final cab and frz avg to database
!	4.7 SH 03/09/04   Added cab_avg check to make sure new TC data is present
!	4.8 SH 03/24/04   Added Iso 4 star support
!	4.9 SH 10/21/04   Changed initial readings to be time based.  
!				The test stores a reading every 60 seconds which could be the initial reading if the product defrosts before the next one
!	5.3 SH 01/18/05   If product is stable, don't show off time as an overload, because it is cycling
!	5.4 SH 01/26/05   Added another way, suggested by Mark to correctly record initial values
!	5.5 SH 01/28/05   Added annotations at setpoint.  Fixed start time database entry.
!	5.6 SH 09/15/05   Tried to fix weird entry in cycle database by removing cycle interval command
!	5.8 SH 09/15/05   Fixed weird initial entry in cycle database by moving cycle clear command
!	5.9 SH 10/13/05   Cycle start after for initial value
!	6.0 SH 10/18/05   Removed OverIndex, using MessIndex like other tests
!	6.1 SH 11/15/06   Added Brazil changes to stop at first or second defrost, changed test time format to hours
!	6.2 SH 11/7/08    Support australian energy
!	6.3 SH 11/14/08   Added cab and frez averages
!	6.4 SH 12/16/08   Added kwhr/24 hour for Mexico, changed format of overload and comments
!	6.5 SH 04/09/09 Using Group 3 for ambient
!	6.6 SH 07/21/09 Changed to 2 hour stable average time if waiting for 2 defrosts
!	6.7 SH 07/28/09 Support for interval writes of other than 30 minutes
!	6.8 SH 08/03/09 Fix for pulse defrost - wait 60 minutes before saying another defrost happened
!	6.9 SH 08/20/09 Added Temp Units to report
!	7.0 SH 12/05/11 Changec Avg Cab and Frz to be minimum instead of last reading
!	    NB 01/17/12 New WIDE incorporated into this test
!	7.1 SH 02/27/12 Fixed issue with Min value not being as low as the last 6 hr reading
!	7.2 SH 04/06/12 Min Frz and Cab correct values in Summary spreadsheet
!	7.3 SH 08/13/12 Added Plot Clear to reset graphs
!	7.4 SH 09/17/12 Clear Cycle and Clear All every 3 minutes
!	7.5 SH 04/08/15 Support different sample rates

Lookup Location
Lookup General

Include Rerun					! To support reruns

Point Clear
Point vaw
Point Pull
Point {SPointFile}
If {LRefTechData} Then
	Include Product track header
Endif
If "{SPointTree}" <> "" Then
	If "{SPointTree}" <> "NULL" Then
		Point {SPointTree}
	Endif
Endif
If "{AProcedure}" = "ISO4STR" Then
	Point iso package group
	Lookup iso4str{STempUnits}
	Set {LTestName}=IsoPulldown
Else
	Set {LTestName}=Pulldown
Endif

Set 1 {PVersion} = 7.5

Include AuxInInit
Include AuxInSetup

If "{SHumidityEnable}" = "Y" Then
	Include HumiditySetup
EndIf
If "{SUseYok}" = "Y" Then
    Point Yok
Endif													  
! Load all points before this command
Transfer Monitor norm cycle

Transfer units {STempUnits}			   
Set Lock {STempUnits}
Set 0 {PInitValue}=0

Status Blue Starting {LTestName} Test {PVersion}
Log Starting {LTestName} Test {PVersion}

Revision
Set 0 {PValue} = 0
Include WideChk
Include Save As
If ("{SResultReport}" = "Pull+UL") Then
	Result Report PULL+UL
	Log UL Report
Else
	Result Report PULL
	Log Standard Report
	Set {SResultReport} = PULL
Endif
Result Copies 1

! Wait for good front end data
Begin
    If {AState_Last} <> 0 Then
        Leave
    Endif				 
Loop
! Adjust the plot scaling if needed
If {PVolt} > 150 Then
    Plot Scale Volt = 0.5
Endif

! If rerunning, then "undo" plot scaling for voltage
If {ASim} Then
	If {SOrigVolt} > 150 Then
		Log 220 Volt product, changing gain to 2
		Calibrate AuxGain {PVolt} 2.0
	Endif
Endif
					   
Plot Scale Watt = 0.1
Plot Scale Amp = 10
Plot Interval 50
Trend Interval 50
Trend Clear

Transfer Interval 10

! Wait for good front end data
Status Blue {LTestName} Test v{PVersion} - Waiting for good Cab Average value
Begin
	If {ASim} Then
		Leave
    Elseif ({PCab_Avg} > -998 & {PCab_Avg} <> 0 & {PCab_Avg} <130) Then
        Leave
    ! Timeout
    ElseIf {ATestTime} > 300 Then
    	Log Timeout waiting for good cab average
        Leave
    ElseIf ({SCheckOTC} = 1) Then
        Log Cab Average verify bypassed
        Set {SCheckOTC} = 0
        Leave
    Endif
Loop	    

Include AmbGroupCheck	! See if ambient group is set up.  Temporary transition helper SH 4/9/2009

Set 2 {PInitialHPSI} = {PHPSI}
Set 2 {PInitialLPSI} = {PLPSI}

If {STestLen_Right} = 360 Then
	Set {STestLen} = 6 Hours,360
ElseIf {STestLen_Right} = 420 Then
	Set {STestLen} = 7 Hours,420
Endif
! Initialize winding temp output to Dome/Ambient TC
! We need to do this because we can't measure the cold resistance
! until the product is plugged in, but that hasn't happened yet
If {SLAuxType_Right} = 7 | {SLAuxType_Right} = 10 Then
	If {PDome} > 50 Then
		Set {PLAuxInput} = {PDome}
	Else
		Set {PLAuxInput} = {PAmb}
	Endif
ElseIf {SHAuxType_Right} = 7 | {SHAuxType_Right} = 10 Then
	If {PDome} > 50 Then
		Set {PHAuxInput} = {PDome}
	Else
		Set {PHAuxInput} = {PAmb}
	Endif
Endif					 

Error off
If "{SAustralian}" = "Y" Then
	Group 1 Exclude MIN		! Exclude coldest temperature from the group if australian test
	Set {LValue} = Australian option
	Gosub AddComment
	Set {LValue} = Coldest Freezer removed
	Gosub AddComment
Endif
Error on

Clear All
Cycle Clear
Plot Clear
Trend Clear

! -------------- Wait for product start ----------------
Status Cyan Plug in product now {PVersion}
Transfer Interval {SSampleRate}
Transfer Filter Off
Cycle Interval 120
Log Waiting for product start
Begin
    If {AState} > 1 Then
!		Trend Clear
		Log Initial High Pressure:{PInitialHPSI}, Low Pressure: {PInitialLPSI}
        Leave
    ElseIf {ATestTime} > {PClearTime} Then
		Clear All
		Plot Clear
		Cycle Clear
		Math 0 {PClearTime} = {ATestTime} + 180
	Endif
	Include AuxInProcess
Loop

! Store the values before the test started
Math {PValue} = {ATestTime} - 120
Cycle Start After {PValue}
Cycle End Before {ATestTime}
! Line causes the data to be taken from the transition point instead of an average of the readings since the last marker/transition
DelayWrite Init Value= Left: HMS[{ACycle_Left}] Right: HMS[{ACycle_Right}]
DelayWrite IN Line Off

Set 0 {PStartTime} = {ATestTime}
Write StartTime = {ADate} HMS[{ATime_Raw}]
Set 0 {POverCnt} = 0
Set 0 {PFrezTime} = 0
Set 0 {PCabTime} = 0
Set 2 {PCyc4Hr} = 0
Set 2 {PCyc24Hr} = 0
Set 4 {PWhr4Hr} = 0
Set 4 {PWhr24Hr} = 0
Set 1 {POnPer} = 0
Set 0 {PIntrStore} = 0
Set 0 {PNumIntStore} =1
Set 1 {PMessIndex} = 0
Include Cold Resistance

Log Pull down running
Status Green Pull down running {PVersion}

!v3.8  - Store a marker now to include all initial readings 
!Cycle Marker

! Store a marker every 5 minutes
Cycle Interval 300
Transfer Filter On
If {SSampleRate} < 10 Then
	Transfer Filter Off
	Log Transfer Filter Off
	If {SSampleRate} <= 2 Then	! Added 8/12 to allow 1 second sample rate tests
		Transfer Nodevice 1
	Endif
Endif
Log Sample rate set to {SSampleRate}
Plot Interval {SSampleRate}
Trend Interval {SSampleRate}
Transfer Interval {SSampleRate}
Math {PIntrStore} = {SIntervalWrite} * 60
! --------------------- Main test loop -----------------------

Begin
    Math {PCyc4Hr} = {ATotalCycle} / ({ATestTime} / 14400)
    Math {PCyc24Hr} = {PCyc4Hr} * 6
    Math {PWhr4Hr} = {PWhr} / ({ATestTime} / 14400)
    Math {PWhr24Hr} = {PWhr4Hr} * 6
    Math {POnPer} = ({ATotalOn} / ({ATotalOn} + {ATotalOff})) * 100
	Math 0 {PActualTime} = {ATestTime}-{PStartTime}

    If {ASettings} Then
		! -- Open TC Requested? 
	    If ({SCheckOTC} = 1 &  {LLocation} = 4) Then
	        Log Open TC detect performed
	        Set {SCheckOTC} = 0
        	Transfer Interval 1 	        ! If RTP sees interval of 1, it does OTC check, then resets rate
	    Endif
		Error Off
		!Set up HS Aux channel if selected while test is running
		Include WideCommand
		Include AuxInSetup
		Error On   		  
    Endif

	Include AuxInProcess

    ! -- Check for time to freeze --
    If {PFrez} < {SFrezSet} & {PFrezTime} = 0 Then
        Log Freezer reached setpoint
        Status Blue Freezer reached set temp
        Set 0 {PFrezTime} = {PActualTime}
        Trend Annotation 1,0;{ATestTime};{PFrez};1;Frz@SP ;Frez

    Endif

    ! -- Check for time to cab point --
    If {PCab} < {SCabSet} & {PCabTime} = 0 Then
        Log Cab reached setpoint
        Status Blue Cab reached set temp
        Set 0 {PCabTime} = {PActualTime}
        Trend Annotation 2,0;{ATestTime};{PCab};1;Cab@SP;Cab
    Endif

	If {AOverload} Then
		Log Overload started (RTP Detect)
		Write OverloadStart={PActualTime}
		Set {LValue} = Product Overloaded RTP Detect
	Endif

    ! -- Check for overload --
    ! If compressor off
    ! And not in overload
    ! And freezer above 32 and cab above 45
    ! Then overload occured
    If {AState} <> {AState_Last} & {PActualTime} > 90 Then

    ! -- Compressor tripped out
	! 1 is off 8 is recovery - RTS thinks a defrost happened, actually restart
        If ({AState} = 1 | {AState} = 8 ) Then
		    !  Not Expecting defrosts     If product has reached setpoint then it's cycling, not overloaded
            If ({STestLen_Right} > 0) & ({PCabTime}=0 | {PFrezTime}=0) Then
	            Set 0 {POverloadCheck}=0
	            Math 0 {POverCnt} = {POverCnt} + 1
	            Status Magenta Overload {POverCnt} started
				Set {Lvalue} = Overload Started.  Current: {PAmp} amps
				Gosub AddComment
			Endif 
        ! -- Compressor restarted
        ElseIf ({AState} = 2 | {AState} = 4) Then
            If {POverloadCheck} = 0 & {AState} = 4 Then
                Math {PTimer} = {ATestTime} + 60
                Set 0 {POverloadCheck}=1
            Else
                Set 0 {POverloadCheck}=0
            Endif
	        If {STestLen_Right} > 0 & {AState_Last} = 1 Then
	            Status Magenta Overload {POverCnt} ended
				Set {Lvalue} = Overload ended.  Current: {PAmp} amps
	        Endif
        Endif
    Endif

    ! See if it stays in defrost for a while, if short time, it's an attempt to restart
    If {AState} = 4 & {POverloadCheck} = 1 Then
          If {ATestTime} >= {PTimer} Then
				Set 0 {POverloadCheck}=0
				If ({ATestTime}-{PDefrTime}) > 3600	Then	! Make sure 60 minutes has passed since last defrost
					Set 0 {PDefrTime} = {ATestTime}
	          		Math 0 {PDefrCnt}={PDefrCnt}+1
					! End test at defrost?
					Math 0 {PValue} = {PDefrCnt} * -1
					If ({STestLen_Right} < 0) Then			! Expecting defrosts (Brazil/ISO)
						If {PValue} <= {STestLen_Right} Then
				    		Log Ending test, defrost # {PDefrCnt}
							Leave
						Else
							Math {PValue} = {PValue} - {STestLen_Right}
				    		Log {PValue} Defrost(s) to go until test end	
						Endif
					Else									! Not expecting defrosts (Evv)
						Write Defrost = Defrost in test
						Log WARNING Defrost in test
						Set {Lvalue} = Product Defrosted.  Wattage: {PWatt} watts
			        Endif
			  	Endif
          Endif
    Endif

    ! -- Check for interval write --
    If {PActualTime} > {PIntrStore} & {PNumIntStore} <=12 Then
		Math 1 {Pvalue} = {PIntrStore}/3600
		Write ITLabel = {Pvalue}
        Math {PIntrStore} = {PIntrStore} + {SIntervalWrite} * 60
        Write IT Cur
        Math {PNumIntStore} ={PNumIntStore}+1
    Endif

    ! -- Check for end of test --
    ! If I put these two if statements on the same line it doesn't work
    If {STestLen_Right} >0 & {PActualTime} > ({STestLen_Right} * 60) Then
    	If {PNumIntStore} <=12 Then
	        Write IT Cur
			Math 1 {Pvalue} = {PIntrStore}/3600
			Write ITLabel = {Pvalue}
	        Math {PNumIntStore} ={PNumIntStore}+1
        Endif
       	Leave
    Endif

Loop

Abort
If {STestLen_Right} <0 | {Llocation} = 9 Then			! Expecting defrosts (Brazil)
	! For Brazil-Either a defrost happened to end test or user stopped test
	
	! Added 11/15/2006
	Cycle End Before {ATestTime} On
	If {STestLen_Right} >= -1 Then			! Expecting defrosts (Brazil)
		Cycle Start Before MATH[{ACycle_Right}-900] ! Store last 15 minutes before defrost
	Elseif {STestLen_Right} <= -2 Then
		Cycle Start Before MATH[{ACycle_Right}-7200]	! Store last 2 hourse before defrost
	Endif
	Write AV Avg On Off Def Rec
	Write DAV1 = Stable
	Write DAV2 = Avg
    Trend Annotation 4,0;MATH[{ACycle_Left}-{PStartTime}];MATH[{PWatt_Max_On}/10];1;Avg Point		!Trend annot
	If {ASystem} = {LRerunSys} Then
		Database {LDatabase} Table Performance key {STestNumber}
	Else
		Database {LDatabase} Table Performance key {ARevision}
	Endif
	Include TPMaxMin

Endif
Cycle Marker
! If a re-run and test is stopped, write last record.
If {PNumIntStore} <=12 Then
	Math 1 {Pvalue} = {PIntrStore}/3600
	Write ITLabel = {Pvalue}
	Write IT Cur
Endif
If {ASim} = 0 Then
	Status Grey {LTestName} Test Complete TN:{ARevision}
Else
	Status Grey {LTestName} Test Complete TN:{STestNumber}
Endif
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
DelayWrite Comment = Temp Units °{STempUnits}
DelayWrite TotalTest = HMS[{PActualTime}]
Error Off
! This doesn't work on a rerun. Needs to get value from DB
DelayWrite VoltSet = {SVoltSet#}
DelayWrite FreqSet = {SFreqSet#}
Error On

DelayWrite CabTime = HMS[{PCabTime}]
DelayWrite FrezTime = HMS[{PFRezTime}]
DelayWrite Overloads = {POverCnt}
DelayWrite Version = Pull v{PVersion}
DelayWrite TestType = {STestType_Left}
DelayWrite TestSpec = {STestType_Right}

Cycle Marker
Cycle Start Before 0
Cycle End After {ATestTime}
Write X MaxM MinM On Off Def Rec
DelayWrite MinFrzTemp = {PFrez_MinM_On_Off_Def_Rec}
DelayWrite MinCabTemp = {PCab_MinM_On_Off_Def_Rec}
DelayWrite D Title

DelayWrite {ATotalCycle}
DelayWrite {PCyc4Hr}
DelayWrite {PCyc24Hr}
DelayWrite {PWhr}
DelayWrite {PWhr4Hr}
DelayWrite PWhr24Hr = {PWhr24Hr}
DelayWrite HMS[{ATotalOn}]
DelayWrite HMS[{ATotalOff}]
DelayWrite {POnPer}
DelayWrite HMS[{PActualTime}]
DelayWrite HMS[{ACycle_Min_On}]
DelayWrite HMS[{ACycle_Max_On}]
DelayWrite HMS[{ACycle_Avg_On}]
DelayWrite HMS[{ACycle_Min_Off}]
DelayWrite HMS[{ACycle_Max_Off}]
DelayWrite HMS[{ACycle_Avg_Off}]
Math 1 {PValue} = 100 * {ATotalOn} / ({ATotalOn}+{ATotalOff}) 
DelayWrite PPerOn = {PValue}

DelayWrite {PWatt_Min_On}
DelayWrite {PWatt_Min_Off}
DelayWrite {PWatt_Max_On}
DelayWrite {PWatt_Max_Off}
DelayWrite {PWatt_Avg_On}
DelayWrite {PWatt_Avg_Off}

DelayWrite {PVolt_Min_On_Off}
DelayWrite {PVolt_Max_On_Off}
DelayWrite {PVolt_Avg_On_Off}

DelayWrite {PAmp_Min_On}
DelayWrite {PAmp_Max_On}
DelayWrite {PAmp_Avg_On}

DelayWrite PAmb_Min = {PAmb_Min_On_Off}
DelayWrite PAmb_Max = {PAmb_Max_On_Off}
DelayWrite PAmb_Avg = {PAmb_Avg_On_Off}

DelayWrite FinalFrez = {PFrez}
DelayWrite FinalCab = {PCab}
If {LLocation} = 8 Then			! Monterrey
	Set 3 {Pvalue} = {RPWhr24Hr}
	Set {Lvalue} = Kwhr/24 hour: {PValue} 
	Gosub AddComment	
Endif


! Have to do this because {ATestTime} {PActualtime} isn't 
! Plot gets reset but trend doesn't
! Trend command uses Atest time but that is wrong for plot
! so save with {PCabTime} which is based off of {PActualTime}
If ({SCabSet} > -998) & ("{SCabSet}" <> "") Then
    Trend Annotation 2,0;{PCabTime};{SCabSet};1;Cab@SP;Cab
Endif
If {SFrezSet} > -998 & ("{SFrezSet}" <> "") Then
    Trend Annotation 1,0;{PFrezTime};{SFrezSet};1;Frz@SP;Frez
Endif
Result Print {SPrintRep}

! Save test data to the database
Include Database LabResults

If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASystem} = {LRerunSys} Then
		Database {LDatabase} Table Performance key {STestNumber}
	Else
		Database {LDatabase} Table Performance key {ARevision}
!		Database Freq = {SFreqSet#}  
	Endif
	Include TTMaxMin
	
	Database CompType = {SCompType}
	Database RefrigType = {SRefrType}
	If {LLocation}=7 Then
		Database ControlSettings = {SRegTerm}
	Else
		Database ControlSettings = {SSettings}
	Endif
	Database TestName = {LTestName} {PVersion}

	Database Dome = {PDome_Avg_On}
	Database EvapIn = {PEvapIn_Avg_On}
	Database EvapMid = {PEvapMid_Avg_On}
	Database EvapOut = {PEvapOut_Avg_On}
	Database SuctionLine = {PSuctionLine_Avg_On}
	Database Discharge = {PDischarge_Avg_On}
	Database TBulb	 = {PTBulb_Avg_On}
	Database HeatLoopOut = {PHLOut_Avg_On}
	Database MidCond = {PCondMid_Avg_On}
	Database CondOut = {PCondOut_Avg_On}
	Database SuctPres  = {PLPSI_Avg_On}
	Database Wattage = {PWatt_Avg_On}
	Database Voltage = {PVolt_Avg_On} 
	Database ActualAmbient = {PAmb_Avg_On_Off}

	Group Avg {Pvalue} = {PFrez_MinM_On_Off_Def_Rec}
	Database AvgFrzTemp = {PValue}
	DelayWrite TTFrezMinAvg = {PValue}
	Group Avg {Pvalue} = {PCab_MinM_On_Off_Def_Rec}
	Database AvgCabTemp = {PValue}
	DelayWrite TTCabMinAvg = {PValue}

	Database TempUnits = {STempUnits}
	Database PointFile = {SPointFile}
	Database Kwhr24= {RPWhr24Hr}
	Database PercentRun = {RPerOn}
	If {PHAuxType} = 5 | {PHAuxType} = 13 | {PHAuxType} = 14 Then	! Setra 0-1000
		Database HeadPres = {PHAuxInput_Avg_On}
	Else
		Database HeadPres = {PHPSI_Avg_On}
	EndIf

	If {AMode} <> 3 & {ATestTime} > 300 Then
		Database Write
		Database Use {LLabResultsTable}
		Database Write
		Include Database Performance Flex	! Save information for summary reports flex
	Endif
Endif  

Result Write Setup  
Include Rerun Write
Result Close

Include ChainTest
Label TestEnd

End
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






