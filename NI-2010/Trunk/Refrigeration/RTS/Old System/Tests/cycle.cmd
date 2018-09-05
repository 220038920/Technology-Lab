! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System		 		 
! --------------------------------------------------------------------------
!
!    Descr          : Cycle information for a multiple defrost test
!    File           : Cycle.CMD
!    By             : Scott Hellmer	    
!
!    1.2 SH 9/99 Corrected watt calculations and temp period
!    1.3 SH 9/99 Added % run and Cab and Freezer avg to cyc printout
!    1.4 SH 9/99 Fix for % run and Cab and Freezer avg
!    1.5 SH 9/99 Fix for typical cycles and temp period, 
!			if no defr when stopped, goes to procdef, added delay write
!    1.6 SH 10/99 Added demand open TC detect
!    1.7 SH 10/99 Removed crisper and meat pan stuff
!    1.8 SH 10/99 Check for long temp period at end and changed version to a variable 
!    1.9 SH 10/99 Fix for ending temp period and for waiting until a time to start
!    2.0 SH 10/99 Humidity and fix for start time
!    2.1 SH 11/1/99 Took out refrigtype database storage
!    2.2 SH 11/2/99 Added some database stuff.
!    2.3 SH 11/3/99 Added start time reset
!    2.4 SH 11/4/99 Fixed Newday feature	   
!    2.5 SH 11/5/99 Fixed database write
!    2.6 SH 11/17/99 Changed total test on cycle analysis to be the total test (was power period)
!					 Fixed power period with no defrost problem.
!					 Added minimum 3 hour power period.
!    2.7 SH 11/17/99 Added Fan RPM
!    2.8 SH 11/17/99 Added current leakage and timeout for cab average
!    2.9 SH 11/19/99 Y/N for Current leakage, Winding sense and RPM - added to monitor
!    3.0 SH 11/22/99 Fix for version write
!    3.1 SH 11/22/99 Fix for continuous run - temp period 3 hrs back, check for recovery at defrost
!    3.2 SH 11/23/99 Added Ambient and Test type to setup and database record
!	 3.3 SH 12/7/99	 Fix for FrezAvg on cycan, Actualcycle count is now right-caused some probs.
!					 Fix for watt hours and case where product is in defrost when test starts.
!					 Fix for Total test time
!	 3.4 SH 12/10/99 Fix for pwhr, and cfrezavg and typical cycles
!	 3.5 SH 12/15/99 Put freezer over 25 in the event lines, added defrost times, moved def watts to procdefend 
!					 Added fix quick for incorrect recovery processing, Added incomplete cycling  
!	 3.6 SH 12/15/99 Put freezer over 25 in the event lines, added defrost times, moved def watts to procdefend 
!	 3.7 SH 12/16/99 Check for t.p. < 3 hours, fixed version write prob.
!	 3.8 SH 12/17/99 Fix for t.p. < 3 hours, added stop at defrost
!	 3.9 SH 12/20/99 Fix for leaving after defrost - pstemp
!	 4.0 SH 12/22/99 Fix for defr while off processing defrost twice
!	 4.1 SH 1/3/00 Fix for database save
!	 4.2 SH 1/6/00 Temp period looks at longer power period for choice
!	 4.3 SH 1/10/00 Added debugging and changed recovery, fixed end of test power period
!	 4.4 SH 1/11/00 Bug fix for reporting defrost end.
!	 4.6 SH 1/11/00 Fixed power period end problem.
!	 4.7 SH 1/12/00 Don't report "Incomplete cycling" if no defrost yet
!	 4.8-5.0 SH 1/12/00 Temp period end updated incorrectly
!	 5.1 SH 1/17/00 Correct frez and cab avg for total test
!	 5.2 SH 1/26/00 Added global driver for humidity
!	 5.3 SH 1/27/00 Allow humidity selection later, added Room 16 humid.
!	 5.4 SH 1/31/00 _Avg changed to _Avg_On_Off_Def_Rec to use cycle db.
!	 5.5 SH 1/31/00 Added total test info for cycle analysis, Inc. cyc if def and t.p. overlap
!					Fix for loading in humid point file multiple times
!					Curleak and fan rpm point files can be loaded while running
!	 5.6 SH 2/4/00  Fix for defrost at end of test, T.P. always 3 hours back+.
!	 5.7 SH 2/7/00  Enabled skip for longest power period, fix for orphaned run time at end.
!	 5.8 SH 2/8/00  Added 12 hour+ power period for manual defrost
!	 5.9 SH 2/14/00 Test doesn't start if start time is after current time, added debug for 12 hr PP
!					Added engnum to status displays.
!	 6.0 SH 2/14/00 Fix for incomplete cycling
!	 6.1 SH 2/15/00 If defr. while off, move to prev. cycle.
!	                Fixed 12 hour power period   
!	 6.2 SH 2/16/00 Current leak, Fan rpm calc fix
!	 6.3 SH 2/17/00 12 hour+ power period starts and ends on transition
!	 6.4 SH 2/22/00 Fix for PPend, ppend on cycle, pp time
!	 6.5 SH 2/23/00 Fix for when test ends before recover, now shows defr. and run time
!	 6.6 SH 2/23/00 Differentials added back in.
!	 6.7 SH 3/1/00  Fix for min off from secs to mins.
!	 6.8 SH 3/6/00  In Defr while off tp from off to off instead of on to on
!					Skip power period if not longest. Added Total test for Aham
!					Added volt and ambients averages
!	 6.9 SH 3/9/00  Predicts adaptive defrost
!	 7.0 SH 3/14/00 Fix for continuous run product
!	 7.1 SH 3/17/00 Added vaw.pnt
!	 7.2 SH 3/23/00 Added day calculation
!	 7.3 SH 3/29/00 Fixed cycle counting for periods ending in off, fixed Total test kwh24 hrs
!	 7.4 SH 4/6/00  Changed amps scale to 10, fixed defrost length, changed start time to actual, removed nuisance incomplete cycling.
!	 7.5 SH 4/10/00 Fix for day increment if disabled, nuisance incomplete, power period for end in def.
!	 7.6 SH 4/14/00 Skip short tests
!	 7.7 SH 4/14/00 Fix for bimetal at beginning of test and nuisance incomplete cycling
!	 7.8 SH 4/14/00 Fix for continuous run temp period, incorrect run time for cycle report.
!	 7.9 SH 4/14/00 Powerperiod,tempperiod added.Suction over 50 deg added to comments (will be removed from Aham report)
!	 8.0 SH 5/9/00  Added Tree, group functions.
!	 8.1 SH 5/12/00 Added database support for swings,grads and door diffs.
!                   Added group 5 (Frez Door) and group 6 (Cab Door)
!	 8.2 SH 5/15/00 Fix for day counter
!	 8.3 SH 5/19/00 Added TP While run database entries and voltage DB entry.
!	 8.4 SH 5/24/00 Pan avgs writtent to db instead of diff.
!	 8.5 SH 5/31/00 Stop at defrost fixed. Only stop at time if time is < 24 hrs.
!	 8.6 SH 5/31/00 Last run time reported on cycle summary
!	 8.7 SH 6/01/00 Cab/Frz differentials written, MinOn,MinOff,Cyc/Hr,Watts database moved to power period
!	 8.8 SH 6/15/00 Database fixes, decimal point, added discharge, condmid, hlout, other misc
!	 8.9 SH 7/7/00  Minoff/on converted to minutes, cycperhour fixed.
!	 9.0 SH 7/13/00 Percent run changed from on/total to on/on+off
!	 9.1 SH 8/1/00  Rec added to Cycle write commands for continuous run tests where the state is rec for the entire test
!					Typical cycles started with temp period if incompl. cycles
!    9.2 SH 8/24/00 Allow test to start with a defrost
!    9.3 SH 8/29/00 Fix for day counter
!    9.4 SH 8/31/00 Added typical cycles and tt info for cabmax/min and frezmax/min avgs
!    9.5 SH 9/1/00  Added voltage setpoint to test.
!    9.6 SH 9/6/00  Fix for day counter - again!
!    9.7 SH 9/25/00 If it's been 4 hours with no cycles, then make this the end of the defrost
!    9.8 SH 9/27/00 Fix for chaining and for 4 hr defrost
!    9.9 SH 9/29/00 Added defrost and curleak info for 21 day summary
!    10.0 SH 10/03/00 Added total test for internal database stuff
!    10.1 SH 10/09/00 Fix for test ending during defrost before recovery
!    10.2 SH 10/10/00 Fix for defrost count
!    10.4 SH 10/27/00 Volt 1/2 scale changes at 150 volts instead of 120
!					  Fix for cycle summary run time with no defrosts
!	 10.5 SC 10/30/00 Added Model 50 Icemaker testing capability
!	 10.6 SH 11/06/00 Added sample rate
!	 10.7 SH 11/07/00 Always select power period if between two defrosts, fix for test type write
!	 10.8 SH 11/08/00 Test chaining resets next test field, fix for endoftest flag if ends at defrost
!	 10.9 SH 11/20/00 Fixed test start time, added ability to change sample rate while test running,
!	 11.0 SH 11/21/00 Fix for test starting in defrost
!	 11.1 SH 11/27/00 Fix for sample rate not present in setup file, added volt setpoint to init log.
!	 11.2 SH 11/28/00 Fix restarting test at a fixed time and still flagging that as endoftest
!	 11.3 SH 11/29/00 Fix for test ending in defrost if it started in defrost
!	 11.4 SH 12/04/00 Fix for test ending in defrost if it started defrost from off state
!	 11.5 SH 12/05/00 Fix for test ending in defrost when it was only a defrost pulse.
!	 11.6 SH 01/16/01 ADC calculations want defrost time to include off pulses during defrost..
!    11.7 SH 01/26/01 Wait 5 hours instead of 3 before determining continuous run
!    11.8 SH 02/14/01 Wait 6 hours instead of 5 before determining continuous run
!    11.9 SH 03/09/01 Wait 3 hours instead of 6 but it product cycles, then stop Cycle Interval
!    12.0 SH 03/10/01 Fix for test starting in defrost
!	 12.1 SC 04/03/01 Removed Model 50 setup variable; replaced with using state file name
!	 12.2 SH 04/03/01 Added support for old style rpm meter
!	 12.3 SH 04/23/01 Fix for continuous run product
!	 12.4 SC 04/30/01 Fix for running refrigerators in Model 50 stalls
!	 12.5 SH 06/07/01 Fix for detecting product cycle (use pactualcycle instead of atotalcycle)
!	 12.6 SH 01/30/02 Added support for humidity probe
!	 12.7 SH 02/08/02 Changed aux inputs (hum, fan rpm, curleak) which share high pressure
!					  input, to use a generic point name (HAuxInput) to help with report space
!	 12.8 SH 02/12/02 Fix for plot scale on current leakage
!	 12.9 SH 02/26/02 Fix for setup variable
!	 13.1 SH 06/03/02 Fix for curleak to database
!	 13.2 SC 06/11/02 Changed selection of aux inputs (hum, fan rpm, curleak) from individual Y/N variables to
!		a single drop down variable (HAuxType). Also added Setra Discharge transducer support and a user-defined
!		transducer scaling function.
!    13.5 SH 06/14/02 Fix for result copies
!	 13.6 SC 06/24/02 Converted Setra 500 transducer scaling to a Setra 1000.
!    13.7 SH 06/26/02 Fix for abort command
!    13.8 SH 06/26/02 Skip database write when test is aborted.
!	 13.9 SC 06/26/02 Restored Fan RPM scaling.  
!    14.0 SH 06/28/02 Removed old setup stuff
!    14.1 SH 08/12/02 Added trend scale
!	 14.2 SC 08/16/02 Moved Aux Input code to include command files
!	 14.3 SH 10/14/02 Added new command Trend Title
!	 14.4 SC 11/05/02 Fix for no pdf created when SPrintRep is Y and SResultcopies is set to a negative number.
!	 14.5 SH 11/18/02 Fix for continuous run product not getting defrost transition event.  See 96689
!	 14.6 SH 12/17/02 Now adding markers after defrost if continuous run.
!	 14.7 SH 03/14/03 Added overload message
!	 14.8 SH 03/31/03 Fix for short test going in database
!	 14.9 SH 04/25/03 Fix for changing test report in middle of test
!	 15.0 SH 05/15/03 Added UL/Codes support, write out volt/freq setpoint and stall name for db cal query
!	 15.1 SH 05/23/03 Added TTFrezMaxAvg and TTCabMaxAvg and min using group functions
!	 15.2 SH 06/04/03 Added support for header and performance table
!	 15.3 SH 08/13/03 Added support for aux inputs for high and low pressure reference channel
!					  Store ADC to database
!	 15.5 SH 09/05/03 Check for continuous run 3 hours after last cycle
!	 15.7 SC 10/02/03 Added lookup variables and new includes for database stuff
!	 15.9 SH 10/09/03 Fix for database testnumber
!	 16.0 SH 02/09/04 Added some more variables to .txt file for Res2Db reclaim
!	 16.1 SH 03/09/04 Fixed a way that database fields could get written to products
!						Added 10 hr extended temp period
!	 16.3 SH 04/12/04 Stopped Typical cycles started message from being continually displayed in log
!	 16.4 SH 06/23/04 Added ABRS database fields, ABRSCabGradient,TPCarDoorTop,TPKwhr24,TPPercentRun
!	 16.5 SH 06/23/04 Fix for ABRS database fields, ABRSCabGradient,TPCarDoorTop,TPKwhr24,TPPercentRun.
!	 16.6 SH 05/06/05 Take CycperHr from the same place the report gets it.
!	 16.7 SH 08/02/05 Moved cold resistance to after graph/trend clear
!	 16.9 SH 02/29/06 Added wide support andf flex DB support
!	 17.0 SH 03/09/06 Added Delaywrites
!	 17.1 SH 06/08/06 Added Yokogawa support for Whr measurement
!			Yokogawa test starts at off period, runs past one defrost and at least 12 hours
!	 17.2 SH 07/14/06 Don't do typical cycles for continuous run
!	 17.3 SH 10/08/07 Make sure temperature period isn't before typical cycles
!						Supports O option for 6 hour temp period
!	 17.4 SH 10/31/07 Better current leakage monitoring
!	 17.5 SH 12/4/07  Fix for short on time before defrost
!	 17.6 SH 12/10/07 Fix for uneven temp period
!	 17.7 SH 5/9/08   Added Cycle Clear command to clear cycle database
!	 17.8 SH 6/23/08  Added include files for WideCommand in {Asettings} block
!	 17.9 SH 8/20/08  Typical cycles start when transitioning from continuous run to cycling product
!	 18.0 SH 11/19/08 Switched to using Database performance include file
!	 18.1 SH 03/27/09 Added Short cycle functionality
!	 18.2 SH 04/06/09 Used {LTestName} instead of Cycle so I can change the name to ShortCycle throughout the test
!	 18.3 SH 04/09/09 Using Group 3 for ambient
!	 18.4 SH 12/17/09 Fix for Curleak point
!	 18.5 SH 02/12/10 Fix for clearing the cycle database if the test was told to wait until a certain time
!	 18.6 SH 02/18/10 Fix for Auxinputs showing 0 for first scan in results
!	 18.7 SH 08/16/10 For for Freezers with no defrost couting cycles correctly
!	 18.8 SH 08/25/10 Fix for Temp Period cycles/hour
!	 18.9 SH 01/27/11 Added Freezer support
!	 19.0 SH 03/09/11 Made defrost detector like Aham to require 60 minutes since last defrost
!	 19.2 SH 04/13/11 Defrost and recovery information shows up when stopping at defrost - Freezer test 430759
!	 19.3 SH 06/16/11 Added CabAux like Aham test
!	 19.4 SH 06/16/11 Defrost at the end of the test doesn't cause problem with recovery information
!	 19.5 SH 07/22/11 Fix for a continuous run product C/C defrost recovery detection - TN:441843
!	 19.6 SH 08/25/11 Changed to use Aham test-like options for temp period length
!	 19.7 SH 10/04/11 Typical cycles starts at the end of defrost recovery for continuous run product
!	 19.8 SH 10/28/11 Turned off continuous run checking for Freezers
!	      NB 01/17/12 New WIDE incorporated into this test
!	 19.9 SH 01/17/12 Only show High Current Leakage message if Aux type is set for currnet leakage
!	 20.0 SH 01/23/12 Previous test number like Aham test
!	 20.1 SH 02/03/12 Continuous run doesn't rest temp period to 3 hours.
!	 20.2 SH 02/28/12 Fix for test starting in defrost
!	 20.3 SH 04/07/15 Changed to General and Location .lup files

Transfer Monitor norm cycle
Point Clear
Point vaw
Lookup General
Lookup Location


Include Rerun					! To support reruns
! ***************Load Point Files for the test

If ("{AProcedure}" = "ShortCycle") |  ("{AProcedure}" = "IndiaPwrInt") Then
	Set {LTestName} = StartAbility
	Point cycle1
	Point ShortCycle
	Set 0 {PCycleState} = 0		! Used for short cycle test
	Include ShortCycleStallCheck
	If "{AProcedure}" = "IndiaPwrInt" Then
		Set {SSampleRate} = 5	! Short sample rate to pick up outages
		Set {LTestName} = India Power Interrupt
	Endif
ElseIf ("{AProcedure}" = "Freezer") Then
	Set {LTestName} = Freezer
	Point Freezer
	Set {SStableGrp} = Freezer,1
ElseIf ("{AProcedure}" = "IntHum") Then
	Set {LTestName} = IntHum
	Point cycle1
	Point IntHum2
	Include IntHumInit
ElseIf ("{AProcedure}" = "DoorOpener") Then
	Set {LTestName} = DoorOpener
	Point cycle1
	Point DoorOpener
	Include DoorSeqInit
Else
	Set {LTestName} = Cycle
	Point cycle1
Endif

Point cycle2
Point {SPointFile}


If "{SPointTree}" <> "" Then
	If "{SPointTree}" <> "NULL" Then
		Point {SPointTree}
		Point TreeGroups
	Endif
Endif

Error Off
If {SCabAuxVolume} > 0 Then
	Point CabAux
Endif
Error on

If {LRefTechData} Then
	Include Product track header
Endif

Set 1 {PVersion} = 20.3
Set 0 {PMessIndex} = 0
If {ASim} = 0 Then
	Status Blue Starting {LTestName} v{PVersion} Voltage S.P. {SVoltSet#}
	Log Starting {LTestName} v{PVersion} Voltage S.P. {SVoltSet#}
EndIf

Error off
!Load point file, Initialize and Setup HS Aux Input channel
Include AuxInInit
Include AuxInSetup
Error On

!
! ***************Check Setup Values
!
Include ADCSetup	! Range checking for ADC calculation parameters
If "{SUseYok}" = "Y" Then
    Point Yok
    Set 1 {PYVolt} = 0
    Set 3 {PYAmp} = 0
    Set 2 {PYWatt} = 0
	Prompt YesNo Is this a Yokogawa Whr check?
	Begin
    	If {APrompt} = 7 Then	! No
    		Set {SUseYok} = N
    	ElseIf {APrompt} = 6 | {ASim} Then	! Yes
    		Leave
    	Endif
	Loop
!   Gosub ResetYok - This happens when wattage is turned off
    If {ASim} =0 Then
		Calibrate AuxGain {PYWhr} 0.001 
	    Plot Scale YWatt = 0.1
	Else
		Calibrate AuxGain {PYWatt} 10.0
	Endif
	Set {SPlotList4}=WHR;YWHR;WHRPERDIFF
	Set {SPlotList5}=WATT
	Set {SResultReport}=Aham
	Set {SCheckOTC} = 1
    Set 4 {PYWhr} = 0
    Log Yokogawa Enabled    
Endif

! External Humidity report being requested so load point file
! SH added 10/2011
If ("RIGHT[{SResultReport},6]" = "ExtHum") Then
	Point ExtHum
	Set 0 {PExtHum} = 1
	Set {SHumidityEnable} = Y
Endif

If "{SOperator}" = "" Then
	Status Red Please log into RTS and restart test
	goto TestEnd
EndIf
If "{SResultReport}" = "" Then
	Set {SResultReport} = Cycle
EndIf
Error On

If "{SExtTempPeriod}" = "N" Then
	Set {SExtTempPeriod} = 3 Hours,3
ElseIf "{SExtTempPeriod}" = "" Then
	Set {SExtTempPeriod} = 3 Hours,3
ElseIf "{SExtTempPeriod}" = "Y" Then
	Set {SExtTempPeriod} = 10 Hours,10
ElseIf "{SExtTempPeriod}" = "O" Then
	Set {SExtTempPeriod} = 6 Hours,6
Endif

! Lookup file containing limits
Lookup cycle{STempUnits}
Revision
Set 0 {Pvalue} = 0
Log Test Number {ARevision}
Transfer units {STempUnits}
If "{SHumidityEnable}" = "Y" Then
	Include HumiditySetup
EndIf
Set Lock {STempUnits}

Transfer Interval 10

! Wait for good front end data
Begin
    If {AState_Last} <> 0 | {ASim} Then
        Leave
    ElseIf {ATestTime} > 300 Then		    
    	Log Bad State file!
		Status Red Bad State file!
        Goto TestEnd
    Endif
Loop
Status Blue {LTestName} v{PVersion} - Waiting for good TC reading
Begin
    If (({PCab_Avg} > -998 & {PCab_Avg} <> 0 & {PCab_Avg} <130) | {ASim}) Then
        Leave
    ElseIf ({PFrez_Avg} > -998 & {PFrez_Avg} <> 0 & {PFrez_Avg} <130) Then
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
Cycle Marker
Include Save As
Interval InterCmds		! Enable InterCmds subroutine to get executed within each Begin/Loop structure to calculate AuxInputs, etc
Include AuxInProcess	! Calculate Aux Input Channel - Still needed to do this to initialize Aux Inputs even with above statement
!Include AmbGroupCheck	! See if ambient group is set up.  Temporary transition helper SH 4/9/2009
! If rerunning, then "undo" plot scaling for voltage
If {ASim} & {SOrigVolt} > 150 Then
	Log 220 Volt product, changing gain to 2
	Calibrate AuxGain {PVolt} 2.0
    Plot Scale Volt = 0.5	! This didn't work below because {PVolt} was 115 during the first scan of CSV
Endif

! Adjust the plot scaling if needed
If {PVolt} > 150 Then
    Plot Scale Volt = 0.5
Endif
Plot Scale Amp = 10
Plot Scale Watt = 0.1

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
Trend Clear			  
Set 0 {PSampleRate}={SSampleRate}

! -- Init vars and set number of decimal places needed
Set 0 {PNewDay} = 0
Set 0 {PStartTime} = 0
Stable {SStableGrp_Right}
Set Lock {SStableGrp}

! -- Return to here for multiple tests
Label Restart
If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASystem} = {LRerunSys} Then
		Database {LDatabase} Table Performance key {STestNumber}
	Else
		Database {LDatabase} Table Performance key {ARevision}
	Endif
	If {RPreviousTestNum} >0 Then
		Database PreviousTestNum = {RPreviousTestNum}
	Endif	
Endif  
Error off
If {SCabAuxVolume} > 0 Then
	Set {LValue} = Calculating Cab Avg
	Gosub AddComment
Endif
Error on
Begin
    ! --- Check for starting test at a fixed time of day ---
    Math {PStartTime} = {SStartTime_Right} * 3600
    If {SStartTime_Right} = 0 | {SStartTime_Right} = -1 Then
        Leave
    ElseIf ({ASim} = 0 & {SStartTime_Right} > 0 & {ATime_Raw} > {PStartTime}) Then
        Leave
    ! For csv sim stalls test time instead of real time to cut off data at start.
    ElseIf ({Asim} = 1) & ({ATestTime} > {PStartTime}) Then
        Leave
    ! Allow test to start with a defrost 8/00
    Elseif {SStartTime_Right} = -2 Then
        ! -- Check for product in defrost --
	    If {AState} <> {AState_Last} & {AState} = 4 Then
            Log Product defrosted - Stable {AStable} period HMS[{AStable_TOtal}]
            Status Blue Product in defrost
            Leave
		Else
			Status Yellow Waiting for defrost
		Endif
	Else 
		If {ASim} Then
		    Math {PValue} = {PStartTime}-{ATestTime}
			Status Yellow Waiting HMS[{PValue}] for start time of HMS[{PStartTime}] 
		Else
		    Math {PValue} = {PStartTime}-{ATime_Raw}
			Status Yellow Waiting HMS[{PValue}] for start time of HMS[{PStartTime}] 
		Endif
    Endif
Loop    
Set 0 {Pvalue} = 0
If ("RIGHT[{SResultReport},6]" = "ExtHum") Then
	DelayWrite DPLastTime = {ATestTime}		! Initialize Lasttime
	DelayWrite DP Title Group11				! Write names for all points in group to track Dew Point
	Set $ = 1
Label WBInitLoop							! Get point numbers that need to be processed
	Result Get {LValue} = DP$ 1
	Set {LValue} = LEFT[{LValue},4]
	If "{LValue}" <> "-999" Then
		Integrate $ Clear
		DelayWrite DPUnderTime$ = 0			! Initialize time variable
		Math $ = $ + 1
		If $ <= 40 Then 
			goto WBInitLoop
		Endif
	Endif
	Math $ = $ - 1
	DelayWrite DPTop = $					! Store top	
	Log External Humidity Analysis.  Number of points: {RDPTop}
Endif
! If running a yokogawa test, wait for an off cycle to start test
If ("{SUseYok}" = "Y") Then
	Begin
		Status Yellow Yokogawa test- Waiting for product off			
		If {ATestTime} > {Pvalue} & ({AState} = 1 | {AState} = 8) Then		    
       	    Gosub ResetYok
    		Status Green Product off-integrators reset
        	Log Product off-integrators reset
        	Clear All					! Reset RTS integrator
	        Leave
	    Else
	    	If {Pload} > 1 Then 
	    		Log Turning product outlet off 
	    		Set {Pload} = 1				! Turn product outlet off
    		    Set 0 {PValue} = {ATestTime} + 15	! Delay
	    	Endif
        Endif
	Loop
Endif
Clear All
Cycle Clear
Clear Start
Plot Clear
Trend Clear			  

Trend Title {AStation_Title} Engineer: {SEngineer_Left} Tester: {SOperator}
DelayWrite StartStable = {AStable}
DelayWrite StartPeriod = HMS[{AStable_TOtal}]
Log Stable value = {AStable} Period = HMS[{AStable_TOtal}]
Transfer Interval {SSampleRate}
DelayWrite AToutLen = HMS[{ATestTime}]
Status Green {LTestName} v{PVersion} Started 
Log {LTestName} Test Started v{PVersion}
Cycle Marker
DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]
If {ASim} Then
	Status Green {LTestName} v{PVersion} in progress -rerun
Else
	Status Green {LTestName} v{PVersion} in progress Voltage S.P. {SVoltSet#}
Endif
Cycle Start Before 0
Cycle End Before 0

! -- Init vars and set number of decimal places needed
Set 2 {POut25} = 0
Set 2 {PTimeOut25} = 0
Set 2 {PSuctStrt} = 0
Set 2 {PSuctEnd} = 0
Set 2 {PSuctTime} = 0
Set 2 {PSuctMax} = 0
Set 0 {PCycTime} = 0
Set 0 {PStemp} = 0
Set 0 {PProStable} = 0
Set 0 {PProDone} = 0
Set 0 {PTotal} = 0
Set 0 {PDefRec} = 0
Set 1 {PValue} = 0
Set 0 {PDefEnd} = 0
Set 0 {PDefStart} = 0
Set 2 {PUfact} = 0
Set 2 {PCyc1Hr} = 0
Set 2 {PCyc4Hr} = 0
Set 2 {PCyc24Hr} = 0
Set 4 {PWhr1Hr} = 0
Set 4 {PWhr4Hr} = 0
Set 4 {PWhr24Hr} = 0
Set 1 {POnPer} = 0
Set 0 {PPStart} = 0
Set 0 {PPEnd} = 0
Set 0 {POldCycle} = 0
Set 0 {PCycleIndex} = 0
Set 4 {PWhrStart} = 0
Set 4 {PWhrActual} = 0
Set 0 {PLastPPLen}=0
Set 0 {PCurPPLen}=0
Set 4 {PTTWhr24hr} = 0
Set 0 {PActualTime}=0
Set 0 {PActualTime}=0
Set 0 {PEndofTest}=0
Set 0 {PDefrCnt}=0
Set 0 {PFirstTime}=1
Set 0 {PContRun} = 0
Error Off	! Used in Amana only for door opener counts
Set 0 {PFFDrCnt} = 0
Set 0 {PFZDrCnt} = 0
Error on
Stable {SStableGrp_Right}	  

! --------------------- Main test loop -----------------------

Begin

	If "{AProcedure}" = "ShortCycle" Then		! Turn voltage on and off for short cycle test
		Include ShortCycle
	ElseIf "{AProcedure}" = "IndiaPwrInt" Then
		Include IndiaPwrInt
	ElseIf "{AProcedure}" = "IntHum" Then		! Support the Monterrey internal humidity test
		Include IntHum2
	ElseIf ("{AProcedure}" = "DoorOpener") Then
		Include DoorSeq
	Endif
	
! Check external TCs to see if they are below the dewpoint.  Add up the time
! SH 10/2011
    If {RDPTop} > 0 Then  
		DewPoint {PDewPoint} = {PdryBulb} {PwetBulb} 30		! Calculate dew point
		DelayWrite DPA Title Cur Group11					! Write current values from Group 11 to Dew Point Array
    	Set $ = 1
Label WBLoop
		!Log TC? Value:{PTC?} Dewpoint: {PDewPoint}
		Result Get {PValue} = DPA$ 2						! Get current value for each point
		If {PValue} < {PDewPoint} Then
			Result Get {LValue} = DPA$ 1					! Get current value for each point
			Math 2 {PValue2} = {RDPUnderTime$}+{ATestTime}-{RDPLastTime}
			DelayWrite DPUnderTime$ = {PValue2}				! Count up time under dewpoint
			!Log TC {LValue} Value:{PValue} is below Dewpoint: {PDewPoint}.  Time Under {RDPUnderTime$}
			Math 2 {PValue2} = ({PDewPoint}-{PValue})		! Integrates in hours
			Integrate $ {PValue2}							! Integrate the amount below dewpoint
		Else
			Integrate $ 0
		Endif
		Math $ = $ +1
		If $ <= {RDPTop} Then
			Goto WBLoop
		Endif
		DelayWrite DPLastTime = {ATestTime}
    Endif

! -- Check for freezer above 25F (-3.9C) degrees --
    If ({PFrez} > {LOut25}) & ({POut25} = 0) Then
        Math {POut25} = {ATestTime}+1
		Set {LValue} = Freezer over {LOut25} degrees
		Gosub AddComment
    Endif

    If ({PFrez} < {LOut25}) & ({POut25} > 0) Then
        Math {PTimeOut25} = ({ATestTime} - {POut25}) / 60
        DelayWrite Out25Tot = {PTimeOut25}
        DelayWrite In25At = HMS[{ATestTime}]
        Set {LValue} = Log Freezer under {LOut25}. Over for {PTimeOut25} minutes
		Gosub AddComment
        Set {POut25} = 0
    Endif

    ! -- Check for suction line below 50F (10C) Deg --
    ! Temp transition under 50F 10C deg
    ! If "{SChkSuct}" = "Y" Then
    ! Always check for suction SH 9/25/00
    If ({PSuctionLine} < {LOut50}) & ({PSuctionLine_Last} > {LOut50} | {PSuctStrt}=0) Then
        ! Interpolate the transition time
        Math {PSuctStrt} = ({LOut50} - {PSuctionLine}) / ({PSuctionLine_Last} - {PSuctionLine})
        Math {PSuctStrt} = {ATestTime} - ({PSuctStrt} * {SSampleRate})
        Log Suction line under {LOut50} at HMS[{PSuctStrt}]
    Endif		  

    ! Temp transition over 50 deg
    If ({PSuctionLine} > {LOut50}) & ({PSuctionLine_Last} < {LOut50}) Then
        ! Interpolate the transition time
        Math {PSuctEnd} = ({PSuctionLine} - {LOut50}) / ({PSuctionLine} - {PSuctionLine_Last})
        Math {PSuctEnd} = {ATestTime} - ({PSuctEnd} * {SSampleRate})
        Math {PSuctEnd} = ({PSuctEnd} - {PSuctStrt}) 
        If {PSuctEnd} > {PSuctMax} Then
            Set {PSuctMax} = {PSuctEnd}
        Endif
        Set {LValue} = Suction line over {LOut50}. Period for HMS[{PSuctTime}]
		Gosub AddComment
        Math {PSuctTime} = {PSuctTime} + {PSuctEnd}
    Endif
	Math {PActualTime} = {ATestTime} - {PPEnd}

    ! -- Check for product cycling --
    !                  Product hasn't defrosted yet        Product has defrosted
    If {PContRun} & (({PDefFlag}=0 & {PActualCycle}=1) | ({PDefEnd}>0 & {PActualCycle}=2)) Then
        Set {PContRun} = 0
        Log Product cycled, no more markers, typical cycles started {PDefEnd} {PActualCycle}
        Cycle Interval 0        ! If it cycled then turn off 15 minute saves
   		Set 0 {PLastOffTime} = {ATestTime}
        Set {PCycTime} = {ATestTime} 		! Set typical cycles at this point
        Cycle Start Before {ATestTime}

	Endif

    ! -- Normal cycle data --
    If ({PActualCycle} = 2) & ({PCycTime} <= {PPEnd} | {PContRun}) Then
        Set {PCycTime} = {ATestTime}  
        Cycle Start Before {ATestTime}
        Log Typical cycles started
        Status Green {LTestName} v{PVersion}- Typical cycle started
        Cycle Interval 0        ! If it cycled then turn off 15 minute saves
        Set {PContRun} = 0		! Product isn't continuously running now
		Set 0 {PLastOffTime} = {ATestTime} ! Fix added 9/2004 SH
    Endif

	! -- If Product cycled off the record the time
	If {AState} = 1 & {AState_Last} = 2 Then
		Set 0 {PLastOffTime} = {ATestTime}
	Endif
	If ("{AProcedure}" = "Freezer") Then		! Freezers run for a lot longer, so disable continuous run checking and see what happens
	    If ({PActualTime} > 21600) & (({PDefEnd}=0 & {PActualCycle}=1) | ({PDefEnd}>0 & {PActualCycle}=2)) & ({PStemp} = 0) THEN
	        Cycle Interval 300        ! Put a marker in database every 5 min
	        Log Continuous run, adding markers
	        Set {PStemp} = {ATestTime}
	        Set {PContRun} = 1
	    Endif
		If {PContRun} = 0 & ({ATestTime} - {PLastOffTime} > 21600) & {PActualCycle} < 1 Then
	        Cycle Interval 300        ! Put a marker in database every 5 min
	        Log Continuous run II, adding markers MATH[{ATestTime} - {PLastOffTime}] > 21600) & {PActualCycle} < 1
	        Set {PContRun} = 1
		Endif	
	Else
	
		If {PContRun} = 0 & ({ATestTime} - {PLastOffTime} > 10800) & {PActualCycle} < 2 Then
	        Cycle Interval 300        ! Put a marker in database every 5 min
	        Log Continuous run II, adding markers MATH[{ATestTime} - {PLastOffTime}] > 10800) & {PActualCycle} < 2
	        Set {PContRun} = 1
		Endif
	
	    ! --- Time to temp period and no cycles ----
	    ! Removed 2/4/00 - Let the incomplete cycling pick T.P. 3 hrs from defr.
	    ! changed from 3 hours to 5 hours, messed up Kates 38009 test
	    ! changed from 5 hours to 6 hours, messed up Kates 39741 test
	    If ({PActualTime} > 10800) & (({PDefEnd}=0 & {PActualCycle}=1) | ({PDefEnd}>0 & {PActualCycle}=2)) & ({PStemp} = 0) THEN
	        Cycle Interval 300        ! Put a marker in database every 5 min
	        Log Continuous run, adding markers
	        Set {PStemp} = {ATestTime}
	        Set {PContRun} = 1
	    Endif
	Endif
    !  In Defrost       Defrost ended              60 min after         or   first defrost in test
    If ({AState} = 4 & {PDefEnd} >= {PDefStart} & ({PFirsttime} | {PActualTime} > 3600 | ({AState_Last} <> 4 & {PDefStart} = 0))) THEN
    	If {AState_Last} = 1 Then
    		! If continuous run then a marker won't get added automatically so add one.
    		If {PContRun} = 1 Then
    			Cycle Marker
    		EndIf
    		Set {LValue} = Product went into defrost while off	
    		Gosub AddComment
			! Keep track of number of defrosts
			Math {PDefrCnt}={PDefrCnt}+1
			Gosub ProcDef
			If {PFirstTime} Then
				! If first time through loop then that means the cycle test started in defrost
				Set {PDefStart} = 1
				Cycle Marker
			Else
				Math 0 {PValue} = {PDefrCnt} * -1
				! End test at defrost?
				If {STestLenHr_Right} <0 & {PValue} < {STestLenHr_Right} & ("{SUseYok}" <> "Y")  Then
			    	Set {PEndofTest} = 1
			    	Log Ending test, defrost # {PDefrCnt}
					Leave
				EndIf
				Set {PDefStart} = {ATestTime}
			Endif
		ElseIf {AState_Last} <> 4 | {PFirstTime} Then
			Log Product Defrosted
    		! If continuous run then a marker won't get added automatically so add one.
    		If {PContRun} = 1 Then
    			Cycle Marker
    			Cycle Marker 0
    		EndIf
			! Keep track of number of defrosts
			Math {PDefrCnt}={PDefrCnt}+1
			Gosub ProcDef
			If {PFirstTime} Then
				! If first time through loop then that means the cycle test started in defrost
				Set {PDefStart} = {ATestTime}
				Set {PDefStart} = 1
				Cycle Marker
			Else
				Set {PDefStart} = {ATestTime}
				! End test at defrost?
				Math 0 {PValue} = {PDefrCnt} * -1
				If {PActualTime} > 3600 & {STestLenHr_Right} <0 & {PValue} <= {STestLenHr_Right} & ("{SUseYok}" <> "Y") Then
			    	Log Ending test, defrost # {PDefrCnt}
			    	Set {PEndofTest} = 1
					Leave
				EndIf
			Endif
		Endif
    	Set {PDefFlag} = 1		! Don't show recovery if no defrost, defrost bimetal          		
	Endif
	!If {AState} <> {Astate_Last} Then
	!	Log Cycles:{PActualCycle} TotalCycs:{ATotalCycle} State:{AState} PDefEnd:HMS[{PDefEnd}], PPEnd:HMS[{PPEnd}], PPStart:HMS[{PPStart}]
	!Endif
    ! -- Check for end of defrost / recovery period --
	Math 0 {PActualCycle}= {ATotalCycle}-{POldCycle}
	!     First cycle after def   On           Last defr was last power per     Not before 1st power period
    If ({PActualCycle} = 1) & ({AState} = 2) & ({PDefEnd} <= {PPEnd} & {PPStart} <> ({PPEnd}+{PDefFlag})) Then
    	DelayWrite EndofDefrost = PDefEnd:HMS[{PDefEnd}], PPEnd:HMS[{PPEnd}], PPStart:HMS[{PPStart}]
    	Log 1 Gosub ProcDefEnd
		Gosub ProcDefEnd
    ElseIf ({PDefEnd} <= {PPEnd} & {PPStart} <> ({PPEnd}+{PDefFlag}) & ({ATestTime}-{PDefStart} > 14700)) Then
    ! If it's been 4 hours with no cycles, then make this the end of the defrost
		! If we don't do this then the procdefend routine won't process this defrost
    	DelayWrite EndofDefrost2 = PDefEnd:HMS[{PDefEnd}], PPEnd:HMS[{PPEnd}], PPStart:HMS[{PPStart}], DefStart:HMS[{PDefstart}], TestTime:HMS[{ATestTime}]
    	Log 2 Gosub ProcDefEnd
		Set {PActualCycle}=1
		Gosub ProcDefEnd
		Set {PActualCycle}=0
		Set {PCycTime} = {ATestTime}		! Set Typical cycles time at the 4 hour point for continuous run
    Endif

    ! -- Check for overload
	If {ASim} = 0 & {AOverload} Then
		DelayWrite OverloadStart={ATestTime}
		Set {LValue} = Product Overloaded
		Gosub AddComment
	Endif

    ! -- If using Yokogawa, end after a defrost, with 12 hrs of time and product off
    If "{SUseYok}" = "Y" Then
		Math 0 {PValue} = {PDefrCnt} * -1
   	!	    Run to second defrost if needed Have at least one defrost Product Off          12 Hours of test time           Allow more test time
		If ({PValue} <= {STestLenHr_Right}) & ({PDefEnd} > {PDefStart}) & {AState} = 1 Then
			If {ATestTime} > (12 * 3600) & {ATestTime} > ({STestLenHr_Right}* 3600) Then
		    	Log Yok Whr:Ending test
		    	Set {PEndofTest} = 1
	    		Leave
	    	Endif
    	Endif
		If {ASim} & {ATestTime} > ({STestLenHr_Right}* 3600) Then
			Set {PEndofTest} = 1
			Leave
		Endif
	! -- Check for timeout
    ElseIf {STestLenHr_Right} >0 & {ATestTime} > ({STestLenHr_Right} * 3600) Then
    	Set {PEndofTest} = 1
        Leave
    Endif
    ! -- If a new day happened, Check for start time
    If {PNewDay} = 1 & {SStartTime_Right} <> 0 & {SStartTime_Right} <> -1 & {ATime_Raw} > {PStartTime} & {STestLenHr_Right} <= 24 Then
        Log Partial Test Generated, 
		! No more checking for new days
		Set {PEndofTest} = 1
        Set {PNewDay} = -1
        Leave
    Endif
    ! -- If a new day hasn't happened, check for it
	If {ATime_Raw} < {PLastTime} Then
		If ({PNewDay} = 0) Then
			Set {PNewDay} = 1
			Log New day
		Endif
	    If {SDay_Left} <> -1 Then
	    	Math 0 {SDay} = {SDay_Left}+1
	    Endif
		If "{AProcedure}" = "IndiaPwrInt" Then
			Set 0 {PCycleState} = 0		! Reset state for new day
		Endif

	Endif
	Set {PLastTime}={ATime_Raw}
	
	! Done with first time through the loop
	If {PFirstTime} Then
		Set 0 {PFirstTime}=0
	Endif

Loop

! -- If using Yokogawa, wait a minute to make sure the last upate happens for watt hours
If "{SUseYok}" = "Y" Then
	Math 0 {PValue} = {ATestTime}+120
	Status Yellow Waiting for last watt hour update
	Begin
		If {ATestTime} > {PValue} Then 
			Leave
		Endif		
	Loop
Endif

Abort

! Create report for External Humidity
! SH 10/2011
If {RDPTop} > 0 Then  
	Cycle Start Before 0
	Cycle End After {AtestTime}
	DelayWrite DewPoint = {PDewPoint_Avg_On_Off_Def_Rec}
	DelayWrite DP Title Avg On Off Def Rec Group11		! Write Title and Average
	For 1 to {RDPTop} 
		DelayWrite DPTB? = HMS[{RDPUnderTime?}]				! Time below dewpoint
		Math 2 {PValue} = {AIntegrate?}
		DelayWrite DPINT? = {PValue}					! Integrated Time-Error below dewpoint
	Next
Endif
Cycle End Before {ATestTime} Off
Math {PValue} = {ACycle_Right}- 10800 
! If no defrost or 3 hours since recovery, make this the temp period SH 10/99 v1.8
! Without this FirstTime test, if someone stops a test, then the performance
! table isn't set up right and the fields try to write to products table.

If {PFirstTime} = 0 Then
	Gosub ProcDef
Endif

Label EndTest
If {ASim} = 0 Then
	Status Grey {LTestName} Test v{PVersion} Complete TN:{ARevision}
Else
	Status Grey {LTestName} Test v{PVersion} Complete TN:{STestNumber}
Endif

If {SDay_Left} > -1 Then
	DelayWrite Comment = Day {SDay_Left} Temp Units °{STempUnits}
Else
	DelayWrite Comment = Temp Units °{STempUnits}
Endif

If ("{AProcedure}" = "DoorOpener") Then
	If {SDay_Left} > -1 Then
		DelayWrite Comment = Door Openings FF:{PCabTotal} FZ:{PFrzTotal} Day {SDay_Left}
	Else
		DelayWrite Comment = Door Openings FF:{PCabTotal} FZ:{PFrzTotal}
	Endif	
Endif

DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = {LTestName} v{PVersion}
DelayWrite TestType = {STestType_Left}
DelayWrite TestSpec = {STestType_Right}			 
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
DelayWrite SEngineer = {SEngineer_Left}
! Optional items that all labs may not have
Error Off
DelayWrite VoltSet = {SVoltSet#}
DelayWrite FreqSet = {SFreqSet#}
// If ProdID changes during test, then reflect this
// -1 tells save as to just change lookup value
Set {Pvalue} = -1
Include Save As

If {Llocation} = 11 Then	! Amana
	If {PFFDrCnt} > 0 Then
		Set {LValue} = Fresh Food Openings {PFFDrCnt}
		Gosub AddComment
		Set {LValue} = Freezer Openings {PFZDrCnt}
		Gosub AddComment
	Endif		
Endif
! End optional
Error On
Result Report {SResultReport}
Result Copies 1
 
! Save test data to the database
Include Database LabResults
If "{SUseYok}" = "Y" Then			! Save Yok info in comments section
    Database TesterComment = Yok Check: Whr Error {PWhrPerDiff}%
Endif
Include Database Performance		! Write stuff to performance table
Database TestName = {LTestName} {PVersion}

! Don't allow short or aborted tests to print out and get saved
If {AMode} <> 3 & {ATestTime} < 300 Then
	goto Restart
ElseIf {ATestTime} > 300 Then
	Database Write	! Write the Labresults entry
	Include Database Performance Flex
	If {ASim} Then
		Include Database Zipresults
	Endif 
	If "{SUseYok}" = "Y" Then      			
		Include Database WhrCorrelation		! Write info to summary table of whr correlations
		Gosub ResetYok						! Have to do this or it will be in Watt mode for some reason
	Endif
	Result Print A
Endif

Result Write Setup
Include Rerun Write

! -- Check for repeating test --
If ({AMode} = 2) & ({STestCnt} > 1) & ({ASim} = 0) Then		! For external lab, allow multiple tests
    Math 0 {STestCnt} = {STestCnt} -1
    Result Close
    !Log Clear
    Trend Clear
    Set 0 {PRevision}= {ARevision}
    Revision
	Set {PValue} = 1						! Trigger new csv and txt file in Save As
    Include Save As
    Result Report {SResultReport}
    If "{SUseYok}" = "Y" Then      
	   	Set {PLoad} = 5				! Reset Yok integrator.  If we don't do this here, then it will be in VAW mode, not Whr mode
	Endif
	DelayWrite PreviousTestNum = {PRevision}	! Store for writing later

    Set 0 {PMessIndex} = 0
	If "{AProcedure}" = "IntHum" Then		! Support the Monterrey internal humidity test
		Include IntHumInit
	Endif
Goto Restart
Endif
! Added 9/26
Include ChainTest


Label TestEnd
End


! -------------------- Process Defrost Data -----------------------------

Sub ProcDef

	Math 0 {PActualCycle}={ATotalCycle}-{POldCycle}
	Set  {POldCycle}={ATotalCycle}

	If {AMode} = 3 Then
		Set 0 {PEndofTest} = 1
	Endif

	DelayWrite TestStable = {AStable}
	DelayWrite TestPeriod = HMS[{AStable_TOtal}]
	If {PSuctStrt} > 0 & {PSuctEnd} = 0 Then
		Math {PSuctEnd} = {ATestTime} - {PSuctStrt}
		If {PSuctEnd} > {PSuctMax} Then
			Set {PSuctMax} = {PSuctEnd}
		Endif
        Math {PSuctTime} = {PSuctTime} + {PSuctEnd}
	Endif
	DelayWrite SuctTime = HMS[{PSuctTime}]
    DelayWrite SuctMax = HMS[{PSuctMax}]

	! 12/99 Added {PPEnd} <> 0 to correct for incorrect recovery proc. at beginning of test
	! This statement is here to allow for defrost processing for long cycles.
	! 2/4/00 Added PDefEnd =0 because when the test ended in defr, it was using it.
	! 2/23/00 Removed PDefEnd =0, added intelligence to procdefend to determine.
	! 4/15/11 Changed from {PDefEnd} <= {PPEnd} to {PDefEnd} <= {PPStart}
	!	Corrected issue with Freezer test 430759 stopping in defrost
	If {PPEnd} <> 0  & {PDefEnd} <= {PPStart} & {PPStart} <> {PPEnd}
		Write NoSkipDE = PPE HMS[{PPEnd}] DE HMS[{PDefEnd}] PPS HMS[{PPStart}]
		Gosub ProcDefEnd
	Else
		Write SkipDE = PPE HMS[{PPEnd}] DE HMS[{PDefEnd}] PPS HMS[{PPStart}]
	Endif
	
	! -- Skip this temp and power period if not the longest associated power period 4.2
	
	Math {PLastPPLen} = {PPEnd}-{PPStart}
	Math {PCurPPLen} = {ATestTime}-{PPEnd}
	Set 0 {PLastStable}={PCurStable}
	Set 0 {PCurStable}={AStable}
	DelayWrite Stable= Last={PLastStable} Cur={PCurStable}
	! -- If shorter, but from defrost to defrost, or > 23 hours then use it.
	If {PCurPPLen} > {PLastPPLen} || {PEndofTest} = 0 || {PCurPPLen} > (3600*23) Then
		DelayWrite NoSkipTP = EOT {PEndofTest} TT HMS[{ATestTime}] CurPP HMS[{PCurPPLen}] LastPP HMS[{PLastPPLen}] PPEnd HMS[{PPEnd}] PPStart HMS[{PPStart}]
   		Set 0 {PSkipPower} = 0
   	Else
		DelayWrite SkipTP = TT HMS[{ATestTime}] CurPP HMS[{PCurPPLen}] LastPP HMS[{PLastPPLen}] PPEnd {PPEnd} PPStart {PPStart}
		! Skip temp period processing, but goto the procpower routine to save cycle summary info.
   		Set 0 {PSkipPower} = 1
   		Goto ProcPower 
	Endif

	! -- Locate the end point of the temp period
	! If Last state was off
	If {AState_Last} = 1 Then
		! Move to the previous cycle
		Cycle End Before {ATestTime} On
		Cycle End Before {ACycle_Right} Off
		! Move start time for typical cycles also
		! This is not the start time for the temp period.
        Cycle Start Before {PCycTime} Off
		Set {PCycTime} = {ACycle_Left}
	Else
		Cycle End Before {ATestTime} Off
		Math {PValue2} = {ATestTime} - {ACycle_Right}
		DelayWrite IncCyc = HMS[{PValue2}] HMS[{ATestTime}] HMS[{ACycle_Right}]
		! If last run time is more than 12 hours then TP is last three hours
		If {PValue2} > (12 * 3600) Then
			Cycle End After {ATestTime}
			!Set {Lvalue} = Incomplete Cycling
	    	!Gosub AddComment
		! If last run time is too short, then don't count either
	    ElseIf {PValue2} < 120 Then
			Log Corrected For short on time
			Cycle End Before {ACycle_Right} On	    
			Cycle End Before {ACycle_Right} Off
		Endif
	Endif

	! -- Product cycled --
	! If pstemp <>0 then there weren't > 2 cycles during the first part of the test
	! and a database marker has been added to set the start point
    ! -- Temp period is 180 min back from end of temp period --
    Error off
	Math {PStemp} = {ACycle_Right} - ({SExtTempPeriod_Right}*3600)
	If {PStemp} < {PCycTime} Then
		Set {PStemp} = {PCycTime}
	Endif

    ! If not 3 hours, then don't write new temp period stuff unless first one
    If {PStemp} < 0 Then  
	    Set {PStemp} = 0
    Endif
	Set {PProStable} = {PStemp}

	DelayWrite TEnd = HMS[{ACycle_Right}]
	DelayWrite DEBUG=Time {ATestTime} PStemp1 HMS[{PStemp}]
	! -- Cycle requests based on this time value --
	! -- Locate the start point --
	If {AState_Last} = 1 Then
		Cycle Start Before {PStemp} Off
	Else
		Cycle Start Before {PStemp} On
	Endif	
	Cycle Start After {ACycle_Left} On
	Set {PValue} = {ACycle_Left}
	! If less then 3 hours then we went forward too far so shift back one cycle
	If {PValue} > {PStemp} Then
		Cycle Start Before {ACycle_Left} Off
		Cycle Start Before {ACycle_Left} On
		Write Debug = TP less than 3 hours, so shifted from HMS[{PValue}] to HMS[{ACycle_Left}]
	Endif
	Set {PStemp} = {ACycle_Left}

	Set {PTempPeriod} = {ACycle_Total_On_Off} 
	! Added 4/20/99 to make sure temp period doesn't include recovery
	! Find Recovery start time
	! If end of Recovery overlaps temp period, or t.p. is less than 3 hours, incmplete cycling, t.p. is 180 min before defrost
	If {PDefFlag} <> 0 & {PActualTime} > 3600 & ({PActualCycle} <=1 | {PDefEnd} > {PStemp} | ({PTempPeriod} > 3600 & {PTempPeriod} < ({SExtTempPeriod_Right}*3600))) Then
		Write DEBUG1 = TT:HMS[{ATestTime}] ACL:HMS[{ACycle_Left}] Temp:HMS[{PStemp}] T.P.:HMS[{PTempPeriod}]
		Cycle End Before {ATestTime}
	    Math {PStemp} = {ACycle_Right} - ({SExtTempPeriod_Right}*3600)
	    Cycle Start Before {PStemp}
		Set {PStemp} = {ACycle_Left}
		Write DEBUG2 = HMS[{ACycle_Left}] HMS[{PStemp}] HMS[{PTempPeriod}]
		DelayWrite TEnd = HMS[{ACycle_Right}]
		Set {LValue} = Incomplete Cycling
		Gosub AddComment
	EndIf
	! End of change

	DelayWrite TempPeriod= Start: HMS[{PStemp}] Stop:HMS[{ACycle_Right}]
	! -- Save time data --
	DelayWrite TStart = HMS[{PStemp}]
	DelayWrite TempPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]
	DelayWrite TMinOn = HMS[{ACycle_Min_On}]
	DelayWrite TMaxOn = HMS[{ACycle_Max_On}]
	DelayWrite TAvgOn = HMS[{ACycle_Avg_On}]
	DelayWrite TMinOff = HMS[{ACycle_Min_Off}]
	DelayWrite TMaxOff = HMS[{ACycle_Max_Off}]
	DelayWrite TAvgOff = HMS[{ACycle_Avg_Off}]

	Set {PTotal} = {ACycle_Total_On_Off}
!	If {AState_Last} = 1 Then		SH Removed 8/2010, seems to not be needed
		! Cycle database incorrectly counts cycles if period ends off
!		Math {PValue} = {ACycle_Cnt} + 1
!	Else
!		Set {PValue} = {ACycle_Cnt}
!	Endif
	
    DelayWrite TUfact = {AUfact}
	DelayWrite TCycles = {ACycle_Cnt}
	Math {PCyc1Hr} = {ACycle_Cnt} / ({PTotal} / 3600)
	Math {PCyc4Hr} = {ACycle_Cnt} / ({PTotal} / 14400)
	Math {PCyc24Hr} = {ACycle_Cnt} / ({PTotal} / 86400)
	DelayWrite TCyc1Hr = {PCyc1Hr}
	DelayWrite TCyc4Hr = {PCyc4Hr}
	DelayWrite TCyc24Hr= {PCyc24Hr}
	DelayWrite TTotal = HMS[{PTotal}]
	Set {PADCT1} = {PTotal}

	Math 1 {PValue} = 100 * {ACycle_Total_On} / ({ACycle_Total_On}+{ACycle_Total_Off}) 
	DelayWrite TPerOn = {PValue}
	DelayWrite TTotOff = HMS[{ACycle_Total_Off}]
	DelayWrite TTotOn = HMS[{ACycle_Total_On}]

	! -- Save watt hour data --
	! Note : the Awhr var uses the cycle database
	DelayWrite TWMinOn = {PWatt_Min_On}
	DelayWrite TWMinOff = {PWatt_Min_Off}
	DelayWrite TWMaxOn = {PWatt_Max_On}
	DelayWrite TWMaxOff = {PWatt_Max_Off}
	DelayWrite TWAvgOn = {PWatt_Avg_On}
	DelayWrite TWAvgOff = {PWatt_Avg_Off}
	DelayWrite TWhr = {AWhr}
	Set {PADCEP1} = {AWhr}
	Math {PWhr1Hr} = {AWhr} / ({PTotal} / 3600)
	Math {PWhr4Hr} = {AWhr} / ({PTotal} / 14400)
	Math {PWhr24Hr} = {AWhr} / ({PTotal} / 86400)
	DelayWrite TWhr1Hr = {PWhr1Hr}
	DelayWrite TWhr4Hr = {PWhr4Hr}
	DelayWrite TWhr24Hr = {PWhr24Hr}

	Set 2 {Pvalue} = 0
	Set 2 {Pvalue2} = 0
	! -- Save temp period averages for freezer and cab
	Include TPMaxMin

	! -- Tpar (Temp Period on database) 5/19 SH
	! Not in database performance include file
	Database  Dome = {PDome_Avg_On}
	Database  EvapIn = {PEvapIn_Avg_On}
	Database  EvapMid = {PEvapMid_Avg_On}
	Database  EvapOut = {PEvapOut_Avg_On}
	Database  SuctionLine = {PSuctionLine_Avg_On}
	Database  Discharge = {PDischarge_Avg_On}
	Database  TBulb	 = {PTBulb_Avg_On}
	Database  HeatLoopOut = {PHLOut_Avg_On}
	Database  MidCond = {PCondMid_Avg_On}
	Database  CondOut = {PCondOut_Avg_On}
	Database  HeadPres = {PHPSI_Avg_On}
	Database  SuctPres  = {PLPSI_Avg_On}

	! -- Temp period all points --
	DelayWrite TP Avg On Rec
	DelayWrite TR MaxM MinM Avg On Off Rec

	DelayWrite TVolt = {PVolt_Avg_On_Off}
	DelayWrite TLeftAmb = {PAmbLeft_Avg_On_Off}
	DelayWrite TRightAmb = {PAmbRight_Avg_On_Off}

	Math {PValue} = {ACycle_Right}-{PCycTime}
	DelayWrite TypicalCycles = V:HMS[{PValue}],CR:HMS[{ACycle_Right}],CT:HMS[{PCycTime}]
	! -- Normal cycle data --
	If {PCycTime} <> 0 & {PValue} > 10800 Then
	    Cycle Start After {PCycTime}
	    Set {PCycTime} = {ACycle_Left}
	    DelayWrite CycTime = HMS[{PCycTime}]
	    DelayWrite CUfact = {AUfact}
	    DelayWrite C MaxM MinM Avg On Off
	    Set {PTotal} = {ACycle_Total_On_Off}
	    DelayWrite CTotal = HMS[{PTotal}]

		If {AState_Last} = 1 Then
		! Cycle database incorrectly counts cycles if period ends off
			Math {PValue2} = {ACycle_Cnt} + 1
		Else
			Set {PValue2} = {ACycle_Cnt}
		Endif
	    
	    Math {PValue} = {PValue2} / ({PTotal} / 3600)
	    DelayWrite CCyc1Hr = {PValue}
	   	Database CycPerHr = {PValue}
	   	
	    DelayWrite CCycles = {PValue2}
	    DelayWrite CMinOn = HMS[{ACycle_Min_On}]
	    DelayWrite CMaxOn = HMS[{ACycle_Max_On}]
	    DelayWrite CAvgOn = HMS[{ACycle_Avg_On}]
		Math 1 {PValue} = {Acycle_Avg_On} / 60
		Database MinOn= {PValue}
	    DelayWrite CMinOff = HMS[{ACycle_Min_Off}]
	    DelayWrite CMaxOff = HMS[{ACycle_Max_Off}]
	    DelayWrite CAvgOff = HMS[{ACycle_Avg_Off}]
		Math 1 {PValue} = {Acycle_Avg_Off} / 60
		Database MinOff= {PValue}

		Include TCycMaxMin	! Cab and Frez Avg, Min, Max - Shared by all procedures
		
	Endif

	! *********************   Power period
	! -- Times cover full test with defrost and recovery --
  Label ProcPower
	Cycle Marker
	If {AMode} = 3 Then
		Set {PEndofTest} = 1
	Endif
	! If no defrost, and end of test, then power period is 12 hours back on even cycle transition
	If {PDefEnd} = 0 & {PEndOfTest} Then  
		Log No defrost in test, so power period is 12 hours back
		If {PActualCycle} < 2 Then
		    Cycle End after {ATestTime}
		ElseIf {AState_Last} = 1 Then
		    Cycle End Before {ATestTime} On
		Else
		    Cycle End Before {ATestTime} Off
		Endif
	    Math {PPStart} = {ACycle_Right} - 43200
	    If {PPStart} < 0 Then
	      	Set {PPStart}=0
			Cycle Start After {PPStart}
		ElseIf {AState_Last} = 1 Then
		    Cycle Start Before {PPStart} Off
    		Math {PActualCycle} = {ACycle_Cnt} + 1
		Else
		    Cycle Start Before {PPStart} On
    		Math {PActualCycle} = {ACycle_Cnt}
		EndIf
		Set {PPEnd} = {ACycle_Right}
		Set {PPStart} = {ACycle_Left}
	Else
		Set {PPStart} = {PPEnd}
		Set {PPEnd} = {ATestTime}
		
		Cycle End After {PPEnd}
		Cycle Start Before {PPStart}
	EndIf
	
	Database RunTimeBD = {PLastRun}
	DelayWrite RunTimeBD = {PLastRun}
	Math 1 {PLastRun} = {Acycle_Total_On} / 3600
	Database RunTimeAD = {PLastRun}
	DelayWrite RunTimeAD = {PLastRun}
	If {PEndofTest} Then  
		! Save run time for next test if at end, but no offset SH 3/2/00
		Math 1 {SLastPartRun}={Acycle_Total_On}/3600
		Set 1 {PLastPartRun}=0
	Elseif {PDefEnd}<>0 Then 
		! Not test end, but a defrost has already happended, so zero out  SH 3/2/00
		Set 1 {SLastPartRun}=0
		! Record run time so we know what to adapt out to next time
		Set 0 {PLastPartRun}=0
	Else
		Set 1 {PLastPartRun}={SLastPartRun}
	Endif
	
	Math {PWhrActual}= {PWhr}-{PWhrStart}
	Set {PWhrStart}={PWhr}
	Set {PPLength}={ACycle_Total_On_Off_Def_Rec}
	
	! Reset temp period value for next time
	Set {PStemp}=0

    If {PCycleIndex} < 30 Then
        Math 0 {PCycleIndex} = {PCycleIndex} + 1
        Set $ = {PCycleIndex}
		Math 0 {PValue} = {Acycle_Total_On} + ({PLastPartRun}*3600)
		! If first defrost include total run time here with run time for this test in()
		If {PDefEnd} = 0 Then
			If {PEndOfTest} Then
				! If end of test and no defr, then don't use the 12 hour power period, use the whole test
				DelayWrite $CYC = {ADate} HMS[{ATime_Raw}], HMS[{ATestTime}], HMS[{PValue}] (HMS[{ATotalOn}])
			Else
				DelayWrite $CYC = {ADate} HMS[{ATime_Raw}], HMS[{ATestTime}], HMS[{PValue}] (HMS[{Acycle_Total_On}])
			Endif			
		Else
			DelayWrite $CYC = {ADate} HMS[{ATime_Raw}], HMS[{ATestTime}], HMS[{PValue}]
		Endif
		If {PEndofTest} Then
			Math {PValue} = ({Acycle_Total_On} / {PPLength}) * 100
			DelayWrite $PCYC = NA,NA, {PValue}, {PCab_Avg_On_Off_Def_Rec}/{PFrez_Avg_On_Off_Def_Rec}
		Else
			! Product defrosted so calculate run time
			Math 1 {PEstRunTime}=({SLastRun}/3600)+{SBimetalLength}-{SLastBimetal}
			Math 0 {PEstRunTime}={PEstRunTime}*3600
			Math 1 {PRunDiff}={PValue}-{PEstRunTime}
			DelayWrite ADC= ERT=HMS[{PEstRunTime}],BMTar={SBimetalLength},BMLast={SLastBimetal},RUNLP={PLastPartRun},RUNL={SLastRun},DIFF=HMS[{PRunDiff}],CURRUN=HMS[{PValue}]
			! Record run time for use next time
			Set 0 {SLastRun}={PValue}
			Math {PValue} = ({Acycle_Total_On} / {PPLength}) * 100
			If {PRunDiff} < 0 Then 
				! HMS doesn't handle negative time, so manually do it.
				Math 1 {PValue2}={PRunDiff} * -1
				DelayWrite $PCYC = HMS[{PEstRunTime}], -HMS[{PValue2}],{PValue},{PCab_Avg_On_Off_Def_Rec}/{PFrez_Avg_On_Off_Def_Rec}
			Else
				DelayWrite $PCYC = HMS[{PEstRunTime}], HMS[{PRunDiff}],{PValue},{PCab_Avg_On_Off_Def_Rec}/{PFrez_Avg_On_Off_Def_Rec}
			EndIf
		Endif
		! Update variables for display
	    If {PCycleIndex} < 10 Then
			Set {PSM$} = {ATestTime}
			Set {PTM$} = {ATime_Raw}
			Set {PRUN$} = {Acycle_Total_On}
		Endif
    Endif

	If {PSkipPower} Then 
		goto SkipPower
	Endif

	DelayWrite NoSkipPower= PV=HMS[{PValue}],PE=HMS[{PPEnd}],PS=HMS[{PPStart}]
	Math {PActualTime} = {ATestTime} - {PPStart}
	! -- Save watt hour data --

	DelayWrite PWhr = {AWhr}
	Math {PWhr1Hr} = {AWhr} / ({PPLength} / 3600)
	Math {PWhr4Hr} = {AWhr} / ({PPLength} / 14400)
	Math {PWhr24Hr} = {AWhr} / ({PPLength} / 86400)
	DelayWrite PWhr1Hr = {PWhr1Hr}
	DelayWrite PWhr4Hr = {PWhr4Hr}
	DelayWrite PWhr24Hr = {PWhr24Hr}
	DelayWrite PTotal = HMS[{PPLength}]

	! -- Save time data --
	DelayWrite PStart = HMS[{ACycle_Left}] 
	DelayWrite PEnd = HMS[{ACycle_Right}]
	DelayWrite PowerPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]
	DelayWrite PMinOn = HMS[{ACycle_Min_On}]
	DelayWrite PMaxOn = HMS[{ACycle_Max_On}]
	DelayWrite PAvgOn = HMS[{ACycle_Avg_On}]
	DelayWrite PMinOff = HMS[{ACycle_Min_Off}]
	DelayWrite PMaxOff = HMS[{ACycle_Max_Off}]
	DelayWrite PAvgOff = HMS[{ACycle_Avg_Off}]

	DelayWrite PCycles = {PActualCycle}
	Math {PCyc1Hr} = {PActualCycle} / ({PPLength} / 3600)
	Math {PCyc4Hr} = {PActualCycle} / ({PPLength} / 14400)
	Math {PCyc24Hr} = {PActualCycle} / ({PPLength} / 86400)
	DelayWrite PCyc1Hr = {PCyc1Hr}
	DelayWrite PCyc4Hr = {PCyc4Hr}
	DelayWrite PCyc24Hr = {PCyc24Hr}
	Math 1 {PValue} = 100 * {ACycle_Total_On} / ({ACycle_Total_On}+{ACycle_Total_Off}) 
	DelayWrite PPerOn = {PValue}

	DelayWrite PTotOff = HMS[{Acycle_Total_Off}]
	DelayWrite PTotOn = HMS[{Acycle_Total_On}]

	! -- Save watt data --
	DelayWrite PWMinOn = {PWatt_Min_On}
	DelayWrite PWMinOff = {PWatt_Min_Off}

	DelayWrite PWMaxOn = {PWatt_Max_On}
	DelayWrite PWMaxOff = {PWatt_Max_Off}

	DelayWrite PWAvgOn = {PWatt_Avg_On}
	DelayWrite PWAvgOff = {PWatt_Avg_Off}

	! -- Save power period averages for freezer and cab
	DelayWrite PFrezMin = {PFrez_Min_On_Off_Def_Rec}
	DelayWrite PFrezMax = {PFrez_Max_On_Off_Def_Rec}
	DelayWrite PFrezAvg = {PFrez_Avg_On_Off_Def_Rec}
	DelayWrite PCabMin = {PCab_Min_On_Off_Def_Rec}
	DelayWrite PCabMax = {PCab_Max_On_Off_Def_Rec}
	DelayWrite PCabAvg = {PCab_Avg_On_Off_Def_Rec}
	Math {PValue} = {PCab_Avg_On_Off_Def_Rec} - {PFrez_Avg_On_Off_Def_Rec}
	DelayWrite PCabDif = {PValue}

	! -- Power period all points --
	DelayWrite PP Avg On Rec

	DelayWrite PVolt = {PVolt_Avg_On_Off}
	DelayWrite PLeftAmb = {PAmbLeft_Avg_On_Off}
	DelayWrite PRightAmb = {PAmbRight_Avg_On_Off}
	
	Math {PValue} = 3600 / {ASample_Avg}
	DelayWrite SampleHr = {PValue}

Label SkipPower
	! -- 11/17/99 Total test for cycle report
	Cycle Start After 0
	Cycle End After 0
	
	DelayWrite TTWhr = {PWhr}
    Math {PTTWhr24Hr} = {PWhr} / ({ATestTime} / 86400)
	DelayWrite TTWhr24hr = {PTTWhr24Hr}
	Math 1 {PValue} = 100 * {ACycle_Total_On} / ({ACycle_Total_On}+{ACycle_Total_Off}) 
	DelayWrite TTPerOn = {PValue}
	DelayWrite TTTotOff = HMS[{ACycle_Total_Off}]
	DelayWrite TTTotOn = HMS[{ACycle_Total_On}]
	
	! Added 2/2/00 to provide more Total test info for cycle analysis
	DelayWrite TT MaxM MinM Avg On Off Def Rec
	! Added 5/2/11 For TC Tree info
	DelayWrite LeftT Title MaxM MinM Avg On Off Def Rec Group8	! Write individual temperatures for tree report
	DelayWrite RightT Title MaxM MinM Avg On Off Def Rec Group9	! Write individual temperatures for tree report
	! TTMaxMin include
	Include TTMaxMin
	If {PEndofTest} Then
		Include TTYok
	Endif

	! Added 3/6/00 To provide Total test info for aham analysis
	Set {PPLength}={ACycle_Total_On_Off_Def_Rec}
	DelayWrite TTWhr = {AWhr}
	Math {PValue} = {AWhr} / ({PPLength} / 86400)
	DelayWrite PWhr24 = {PValue}
	Math 1 {PValue} = 100 * {ACycle_Total_On} / ({ACycle_Total_On}+{ACycle_Total_Off}) 
	DelayWrite TTPerOn = {PValue}
	DelayWrite TTTotOff = HMS[{Acycle_Total_Off}]
	DelayWrite TTTotOn = HMS[{Acycle_Total_On}]
	DelayWrite TTTotDef = HMS[{Acycle_Total_Def}]
	DelayWrite TTDefOff = HMS[{Acycle_Total_Def_Rec}]
	Math 1 {PValue} = {Acycle_Total_Def}/60 
	DelayWrite DefrHtrOn = {PValue}
	Math 1 {PValue} = {Acycle_Total_Def_Rec}/60
	DelayWrite DefrTotTime = {PValue}

	DelayWrite TTWAvgOn = {PWatt_Avg_On}
	DelayWrite TTWAvgOff = {PWatt_Avg_Off}
	DelayWrite TTWAvgDef = {PWatt_Avg_Def}
	DelayWrite TTWAvgRec = {PWatt_Avg_Rec}
	 
	DelayWrite TTVolt = {PVolt_Avg_On_Off_Def_Rec}
	DelayWrite TTLeftAmb = {PAmbLeft_Avg_On_Off_Def_Rec}
	DelayWrite TTRightAmb = {PAmbRight_Avg_On_Off_Def_Rec}
	! In Evansville Room 9,10 users can define the channel directly, using the Curleak point name
	If {PCurLeak_MaxM_On_Off_Def_Rec} > -998 Then
		DelayWrite CurLeakMax = {PCurLeak_MaxM_On_Off_Def_Rec}
	ElseIf {PLAuxType} = 4 Then
		DelayWrite CurLeakMax = {PLAuxInput_MaxM_On_Off_Def_Rec}
	ElseIf {PHAuxType} = 4 |  {PHAuxType} = 9 Then
		DelayWrite CurLeakMax = {PHAuxInput_MaxM_On_Off_Def_Rec}
	Endif
	If {RCurLeakMax} > .75 Then
		Set {LValue} = High Current Leakage {RCurLeakMax}
		Gosub AddComment	! Added 9/26/2011
	Endif
	
	DelayWrite DefrCnt = {PDefrCnt}

	! Calculate ADC Value SH 6/03
	! Setup Value not there, use Old Style ADC calculation
	If {SADCMaxDefr} = ABCD Then
		Math 4 {PADCWhr} = (86400 * {PADCEP1}/{PADCT1}) + (0.4*({PADCEP2}-({PADCEP1}*{PADCT2}/{PADCT1})))
	Else							! New one using min and max defrost lengths
	! 	 Calculate 12/CT
		Math 4 {PValue} = {SADCMaxDefr}*{SADCMinDefr}/(.2*({SADCMaxDefr}-{SADCMinDefr})+{SADCMinDefr})
		Log ADC CT = {PValue}
		Math 4 {PValue} = 12/{PValue}
	! 	 Calculate ADC Value SH 6/03
		Math 4 {PADCWhr} = (86400 * {PADCEP1}/{PADCT1}) + ({PValue}*({PADCEP2}-({PADCEP1}*{PADCT2}/{PADCT1})))
	Endif
	
	DelayWrite ADCWhr = {PADCWhr}

	! -- Save titles for all points --
	DelayWrite D Title
EndSub

Sub ProcDefEnd
    Log Defrost recovery completed
    Status Green {LTestName} v{PVersion} - Recovery complete

    Cycle Start Before {PPEnd}
    ! Get pulse defrost time SH 01/16/01
    Cycle End Before {ATestTime} Def
	Set {PValue} = HMS[{Acycle_Total_Def_Rec}]

    ! Get full defrost time
    Cycle End After {ATestTime}
	
    If {PCycleIndex} < 30 Then
        Math 0 {PCycleIndex} = {PCycleIndex} + 1
        Set $ = {PCycleIndex}
		DelayWrite $CYC = {ADate} HMS[{ATime_Raw}], HMS[{ATestTime}], , HMS[{Acycle_Total_Def}] (HMS[{PValue}]), HMS[{Acycle_Total_Def_Rec}]
		! Update variables for display
	    If {PCycleIndex} < 10 Then
			Set {PSM$} = {ATestTime}
			Set {PTM$} = {ATime_Raw}
			Set {PDH$} = {Acycle_Total_Def}
			Set {PTD$} = {Acycle_Total_Def_Rec}
	    Endif
    Endif
	Math 1 {SLastBimetal}={Acycle_Total_Def}/60
    ! If we entered here because of the end of test, don't write this defr. info
    DelayWrite EndofTest = {PEndofTest}
!     If {PActualCycle} < 1 | {PEndofTest} Then
! 		If {ASim} Then
! 			Log Skipping defrost write at end of test
! 		Endif
! 		Return
!     Endif

    ! Added 12/15/99 to record defrost time
    DelayWrite DStart = HMS[{ACycle_Left}]
	Set {PDefStart} = {ACycle_Left}
	DelayWrite DEnd = HMS[{ACycle_Right}]
	DelayWrite DefPeriods = HMS[{ACycle_Left}], HMS[{ACycle_Right}]
	Set {PDefEnd} = {ACycle_Right}
    DelayWrite PTotDef = HMS[{Acycle_Total_Def}]

    DelayWrite PTotRec = HMS[{Acycle_Total_Rec}]
    Math {PValue} = {Acycle_Total_Def} + {ATotalRec}
    DelayWrite PDefOff = HMS[{Acycle_Total_Def_Rec}]
    
    DelayWrite PDefRec = HMS[{Acycle_Total_On_Off_Def_Rec}]
    Set {PADCT2} = {Acycle_Total_On_Off_Def_Rec}
	Math {PWhrActual}= {PWhr}-{PWhrStart}
    DelayWrite PDefRecWhr = {PWhrActual}
    Set {PADCEP2} = {PWhrActual}

    DelayWrite DR MaxM MinM Avg Def Rec On

	DelayWrite PWAvgDef = {PWatt_Avg_Def}
	DelayWrite PWAvgRec = {PWatt_Avg_Rec}
	DelayWrite PWMinDef = {PWatt_Min_Def}
	DelayWrite PWMinRec = {PWatt_Min_Rec}
	DelayWrite PWMaxDef = {PWatt_Max_Def}
	DelayWrite PWMaxRec = {PWatt_Max_Rec}

    ! -- Save def/rec period averages for freezer and cab
    DelayWrite DFrezMin = {PFrez_Min_Def_Rec_On}
    DelayWrite DFrezMax = {PFrez_Max_Def_Rec_On}
    DelayWrite DFrezAvg = {PFrez_Avg_Def_Rec_On}

    DelayWrite DCabMin = {PCab_Min_Def_Rec_On}
    DelayWrite DCabMax = {PCab_Max_Def_Rec_On}
    DelayWrite DCabAvg = {PCab_Avg_Def_Rec_On}

    ! -- Save def/rec period averages for freezer and cab
	Error Off
	If {SCabAuxVolume} > 0 Then			! Using Cab Aux Group
	    DelayWrite DRCabAvg = {PCabCalc_Avg_Def_Rec_On}
	    DelayWrite DRCabMin = {PCabCalc_Min_Def_Rec_On}
	    DelayWrite DRCabMax = {PCabCalc_Max_Def_Rec_On}
		DelayWrite DRCabMaxAvg = {PCabCalc_Max_Def_Rec_On}
		DelayWrite DRCabMinAvg = {PCabCalc_Min_Def_Rec_On}
	Else
	    DelayWrite DRCabAvg = {PCab_Avg_Def_Rec_On}
	    DelayWrite DRCabMin = {PCab_Min_Def_Rec_On}
	    DelayWrite DRCabMax = {PCab_Max_Def_Rec_On}
		Group Avg {Pvalue} = {PCab_MaxM_On_Off_Def_Rec}
		DelayWrite  DRCabMaxAvg = {PValue}
		Group Avg {Pvalue} = {PCab_MinM_On_Off_Def_Rec}
		DelayWrite  DRCabMinAvg = {PValue}
	Endif
	
    Math {PValue} = {PCab_Avg_Def_Rec_On} - {PFrez_Avg_Def_Rec_On}
    DelayWrite DCabDif = {PValue}
EndSub


! -- The following commands are executed each scan --
Sub InterCmds

	Include AuxInProcess		!Calculate Aux Input Channel

	Math {PActualTime} = {ATestTime} - {PPStart}
	Math {PWhrActual}= {PWhr}-{PWhrStart}
	
    Math {PCyc1Hr} = {PActualCycle} / ({PActualTime} / 3600)
    Math {PCyc4Hr} = {PActualCycle} / ({PActualTime} / 14400)
    Math {PCyc24Hr} = {PActualCycle} / ({PActualTime} / 86400)
    Math {PWhr1Hr} = {PWhrActual} / ({PActualTime} / 3600)
    Math {PWhr4Hr} = {PWhrActual} / ({PActualTime} / 14400)
    Math {PWhr24Hr} = {PWhrActual} / ({PActualTime} / 86400)
    Math {POnPer} = ({Acycle_Total_On} / ({Acycle_Total_On} + {Acycle_Total_Off})) * 100
	If "{SUseYok}" = "Y" Then        
        Math 3 {PYDwhr} = ({PWhr} - {PYWhr})*1000				! Calculate Error in watt hours
        Math 3 {PYok24Hr} = {PYWhr} / ({ATestTime} / 86400)     ! Calculate kwh24hr
        If ({PYWhr} > .01) Then
        	Math 2 {PWhrPerDiff} = 0.10*{PYDWhr}/{PYWhr} 		! Calculate Percent Error        
        Else
        	Set 2 {PWhrPerDiff} = -999 							! Ignore initial readings as %error fluctuates wildly
       	Endif
        If {PYDwhr} > 5 & {PWhrPerDiff} > 5 Then
        	Status Yellow Integrator error exceeding 5%
        Endif
    Endif
    ! -- Project time to temp data and end --
    If {POnPer} > 0 & {ATotalOn} < 25200 Then
        Math {PProStable} = (25200 - {ATotalOn}) / ({POnPer} / 100)
        Math {PProDone} = (36000 - {ATotalOn}) / ({POnPer} / 100)
    Else
        Set {PProStable} = 0
        Set {PProDone} = 0
    Endif
    Error Off
	If {SCabAuxVolume} > 0 Then
		Math 2 {PCabCalc} = (({PCab}*{SCabVolume}) + ({PCabAux}*{SCabAuxVolume}))/({SCabVolume}+{SCabAuxVolume})
	Endif	
	Error On
    Return
EndSub
Sub ResetYok
	If {ASim} Then
		Return
	Endif
	!----------Reset Whrs
    Set {PLoad} = 5		! Request whr reset
    Set 0 {PValue} = {ATestTime}
    Begin
    	If {Pload} = 4 & {ATestTime} > ({PValue}+10) Then		! Whrs have been reset and small time delay
			Status Yellow Whr Check: Whrs Reset
    		leave
    	Endif
    	If {ATestTime} > ({PValue}+30) Then
			Status Red Whr Check: Yok Comm Error: SendVaw not set up correctly.
    		Log Timeout waiting for whr reset
    		leave
    	Endif
    Loop    

	!----------Turn on product outlet (if not already on)
    Set {PLoad} = 10			! Turn on the product outlet
    Set 0 {PValue} = {ATestTime}
    Begin
    	If {Pload} = 2 Then
			Status Yellow Whr Check: Load on
    		leave
    	Endif
    	If {ATestTime} > ({PValue}+30) Then
    		Log Timeout waiting for load on
			Status Red Whr Check: Yok Comm Error: SendVaw not set up correctly.
    		leave
    	Endif
    Loop
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
	
! Defrosts table
!	Database TestNumber=
!	Database Day=
!	Database TestDate=
!	Database EngNum=
!	Database AvgCabTemp=
!	Database AvgFrzTemp=
!	Database PercentRun=
!	Database DefHtrOnTime=
!	Database TotalDefTime=
!	Database RunTimeHrs=
!	Database RunTimeMin=
!	Database ExpectedRun=
!	Database RunDiff=
!	Database MaxCurLeak=
