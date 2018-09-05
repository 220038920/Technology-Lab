! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr          : Noload defrost for single defrost
!    File           : Aham.CMD
!    By             : Mark Hooks/Scott Hellmer
!    Date           : 20-Jun-95
!
!    3-Nov-98  MH  Moved the defrost data to the front of the test to match
!                  the VAX result data. Also fixed the typical cycle values.
!   11-Nov-98  MH  Fix for total cycles and total defrost time.
!   18-Jan-99  SH  Fix for EngNum, added Yokagawa support
!   20-Jan-99  SH  Added Def&Rec Whr
!   10-Feb-99  MH  Added stop test at fixed time
!   29-Mar-99  SH  Added location/tester update to database
!   20-Apr-99  SH  Fixed bug for long tests predicting end&stable
! 		   Fixed situation of temp period for pulldown where prod is now cycling
!   23-Apr-99  SH  Made defrost bimetal time 60 min (was 15)
!   26-May-99  SH  Added meat pan and crisper differential
!   25-Jun-99  SH  Added in defr while off message, added stall to file name
!   09-Jul-99  SH  Added Yokogawa reset at start of test
!   10-Sep-99  SH  Changed things to make compat with cycle test  - 3.1
!   28-Sep-99  SH  Defrost flag added so recovery not reported unless defrost happened
!                  For short tests, changed beginning of temp per. to be whole cycles
!                  Fix for location storage
!   13-Oct-99  SH  3.3 Check for Meatpan and Crisperpan before write
!   15-Oct-99  SH  3.4 Took out meatpan and crisper stuff
!   ----------------------
!    3.5 SH 11/3/99  Added Version to report, added wait for cab <> 0 to start  
!    3.6 SH 11/17/99 Added timeout for cab average
!    3.7 SH 12/8/99  Added Test type and test spec
!	 3.8 SH 12/15/99 Put freezer over 25 in the event lines, added defrost times. 
!					 Added incomplete cycling
!	 3.9 SH 12/16/99 Check for t.p. < 3 hours, fixed version write prob.
!	 4.1 SH 1/25/00  Fix for when defrost starts in off cycle
!	 4.2 SH 2/3/00   Incomplete cycle only if def and t.p. overlap
!					 Added database fields
!	 4.3 SH 2/4/00   Fix for in defr. while off - move back a cycle.
!	 4.4 SH 3/16/00  Add ambients and voltages to report.
!	 4.5 SH 4/13/00  Changed start time like cycle test, added check OTC
!	 4.6 SH 5/12/00  Added group functions
!	 4.7 SH 5/19/00  Added variable sample rate
!	 4.8 SH 5/22/00  Transfer filter off removed
!	 4.9 SH 5/22/00  21,40 changed to Left,Right Ambient
!	 5.0 SH 6/21/00  Database stuff added
!	 5.1 SH 6/23/00  Ambient fixe as well as power period actual start time.
!	 5.2 SH 7/7/00   Added tempperiods,powerperiods,defrostperiods
!	 5.3 SH 7/12/00  Slight change to try to get rid of 5 sec pp start.
!	 5.4 SH 7/13/00  Fix for percent run calculation changed from on/total to on/on+off
!	 5.5 SH 8/9/00   Incorrect test number with data fixed.  Fixed min on and min off values
!	 5.6 SH 8/30/00  Renamed all files to Aham instead of nldefr
!	 5.7 SH 8/31/00  Added total test for cyc analysis and Added typical cycles and tt info for cabmax/min and frezmax/min avgs
!	 5.8 SH 9/25/00  Aham handles continuous run like cycle test, adding markers every 15 minutes if cont.
!	 5.9 SH 10/3/00  Always check for suction, chnaged to general.set, plotlist.set, etc
!    6.0 SH 10/27/00 Volt 1/2 scale changes at 150 volts instead of 120
!    6.1 SH 01/26/01 Wait 5 hours instead of 3 before determining continuous run
!    6.2 SH 03/22/01 Wait 3 hours instead of 6 but it product cycles, then stop Cycle Interval
!    6.3 SH 03/22/01 Cycle marker added at start to Fix re-running tests, + allow for new recovery if it starts cycling
!    6.4 SH 03/22/01 Allow for new recovery if it starts cycling, made ProcRecovery subroutine
!					  Wait 4 hours and 5 minutes to make sure defrost is at least 4 hours long
!					  5 minute cycle marker
!    6.5 SH 03/27/01 Turn off cycle markers after 1 cycle instead of waiting for 2
!    6.6 SH 03/27/01 Allowed test to start with 1 less scan.Changed amps scale to 10
!    6.7 SH 03/28/01 Turn off cycle markers after 1 cycle only if test time < 5 hours
!    6.8 SH 04/17/01 Removed "intelligence" that would change temp period if it overlapped defrost
!    7.1 SH 05/15/02 Changed date saving
!    7.2 SH 06/03/02 Added database header
!    7.4 SH 06/13/02 Change for number of copies, 0 = pdf only
!    7.6 SH 07/05/02 Fix for result copies
!	 7.7 SC 11/05/02 Fix for no pdf created when SPrintRep is Y and SResultcopies is set to a negative number.
!	 7.8 SC 01/30/03 Fix for result copies
!	 7.9 SH 05/15/03 Added UL/Codes support, write out volt/freq setpoint and stall name for db cal query
!	 8.0 SH 05/20/03 Removed typical cycles for continuous run
!	 8.1 SH 05/23/03 Added TTFrezMaxAvg and TTCabMaxAvg and min using group functions
!	 8.2 SH 06/27/03 Added Electrolux waiver for use in ADC calculations
!	 8.3 SH 07/09/03 Fix for beginning of extra defrost period for Electrolux waiver
!	 8.4 SH 08/18/03 Added extended temp period - 10 hours
!                    Changed to new database structure   				                  
!	 8.6 SH 08/26/03 Added Defrost Heater and Total Defrost times
!	 8.7 SC 10/02/03 Added lookup variables and new includes for database stuff
!	 8.8 SH 10/07/03 Made Aham structure more like Cycle for data writing
!	 8.9 SH 03/07/04 Fixed a way that database fields could get written to products
!	 9.0 SH 03/18/04 Changed database setup so recovery db fields get written
!	 9.1 SH 05/27/04 Corrected ADC calculation in database
!	 9.2 SH 01/12/05 Fixed performance database problem for first test run
!	 9.3 SH 08/05/05 Added Aux settings, Options setup, like Cycle
!	 9.4 SH 09/12/05 Stop adding markers after first cycle - use normal cycle database
!	 9.5 SH 12/01/05 Added previous test number
!	 9.6 SH 01/30/06 Added flex lab, added delaywrites
!	 9.7 SH 02/16/06 Fix for flex entries, added SP entries
!	 9.8 SH 02/16/06 Added Yokogawa support from Mexico
!	 9.9 SH 20/05/06 Go into continuous run mode or no cycles for 5 hours
!	10.0 SH 01/19/07 Add ADCWhr Calculation for min and max defr length.  Fixed number of defrosts start.
!						Added Rits defrost trigger
!	10.1 SH 10/08/07 Make sure temperature period isn't before typical cycles
!					 If Start Now chosen and quick defrost happens, catch defrost and discard data 
!					 Supports O option for 6 hour temp period
!	10.3 SH 12/03/07 Added part b processing after defrost, added ProcDef subroutine
!	10.4 SH 12/04/07 Fix for short run time before defrost
!	10.5 SH 01/02/08 Fix for cycle count for repeating tests
!	10.6 SH 04/04/08 Fix for starting in defrost
!	10.7 SH 06/23/08 Added include files for WideCommand in {Asettings} block
!	10.8 SH 11/19/08 Using Database performance include file
!	10.9 SH 04/09/09 Using Group 3 for ambient
!	11.0 SH 08/18/09 If start now and Use Second Defrost, restart test at first defrost
!	11.1 SH 08/26/09 Start test at recovery and run until recovery, report 2 hour stabilization value
!					 Allows variable temp period lengths, fixes Cycle count issue, Setup changes for start/stop test
!	11.2 SH 12/17/09 Stability fixes
!	11.3 SH 01/22/10 Added comment to denote using type B stability
!	11.4 SH 04/29/10 Added more parenthesis for math statements
!	11.5 SH 06/23/10 Added check for a blank temp period time   
!	11.6 SH 08/16/10 Fix for multiple tests after stopping After recovery
!	11.7 SH 01/04/11 Fix for recovery to recovery when reprocessing
!	11.8 SH 02/04/11 Added Fresh food auxiliary temp calculation and saving Previous test stability
!	11.9 SH 06/06/11 Changed Cab Aux temp average for Cycle report as well as Aham
!	     NB 01/17/12 New WIDE incorporated into this test
!	12.0 SH 01/19/12 Fixed previous test number being stored in database
!	12.1 SH 01/19/12 Fix for previous test number being stored in database
!	12.2 SH 02/03/12 Continuous run doesn't reset temp period to 3 hours.
!	12.3 SH 10/11/12 Max defrost length from 4 hrs 5 minutes to 4 hours (Quiram)
!	12.4 SH 10/23/12 Diff Diff, Cab Diff and Suction displayed on report of needed
!	12.5 SH 12/05/12 Support for 2014 Test standard with these options
!					 Cycling Product - Test and defrost starts at the beginning of the off period before defrost
!					 Continous Run - Test and defrost start at defrost
!	12.6 SH 08/12/13 Support for 2014 Test standard with these options
!					 Cycling Product - Defrost period ends if one cycle temp is within 0.5 deg of before defrost temp (temp period)
!					 Continous Run - Defrost period ends when one cycle temp is within 0.5 deg of before defrost (temp period)
!	12.9 SH 01/16/14 Fixed After defrost value on report.  Changed from running avg
!	13.0 SH 04/16/14 Reset stable checker if another defrost happens
!	13.1 SH 05/16/14 Handle situation if all freezer or fresh food
!	13.2 SH 06/20/14 Added more information for Sinisa for stable and after defrost periods
!	13.3 SH 07/03/14 Improved continuous run check for defrost recovery.  Looking at number of cycles before defrost
!	13.4 SH 07/09/14 Added 2014 reporting as required by Sinisa during the UL audit.  Shows before defrost and after defrost and ambient gradients
!	13.5 SH 07/22/14 {PStabCabAvg} is 2014 stability during the test, 
!					 {PPrevCabAvg} is 2 hour average from previous test
!	13.6 SH 08/05/14 {PStabCabAvg} is 2014 stability during the test, 
!	13.7 SH 08/07/14 Using database query now for previous testnumber and stability information
!						If test is started within an hour of the previous test ending, will use that for stability
!	13.8 SH 08/18/14 Selects only one cycle before defrost for 2014 stability
!						Fix for handles a missing cab or frz avg for freezer testing
!	13.9 SH 08/29/14 Fix for continous run temp period
!	14.0 SH 09/25/14 Better stability reporting.  Better choosing of temp period for low-cycling products
!	14.1 SH 10/2/14 Don't let temp period start before typical cycles
!	14.2 SH 10/10/14 Don't shorten temp period < 3 hours
!	14.3 SH 10/13/14 Fix for TP starting at 0
!	14.4 SH 10/31/14 Fix for continuous run with off cycle before defrost
!                    Also also handles when there's an off period before defrost.  Doesn't count as a cycle
!	14.5 SH 11/6/14   Fix for some old Aham standard issues with typical cycles
!	14.6 SH 01/02/15 Defrost starts with off period before defrost, fix for continuous pre-defrost value being used instead of cycling one
!	14.7 SH 01/20/15 Fix for Aux Cab compartment 205123 and issue with Continuous run after defrost causing report issue 205129
!	14.8 SH 02/10/15 Added Fifo to calculate running average, allow continuous run if only 1 cycle happens and was continuous before
!						For Cassinetta 131945 which cycled once after defrost. 
!						Also waits 2 hours for continuous run product 
!		     02/13/15 If RTS can't find pre-defrost stable with TP, resets periods and adds comment. BHTC 20127
Prompt Ok Please refresh Aham test
Begin
	If {APrompt} = 7 Then	! No
		Set {STestCnt} = 2
		Leave
	ElseIf {APrompt} = 6 Then	! Yes
		Leave
	Endif
Loop
Halt

Lookup location
Lookup performancelab

Include Rerun					! To support reruns
Transfer Monitor norm cycle
!***************Load Point Files for the test
Point Clear
Point vaw
Point Aham
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

Set 1 {PVersion} = 14.8
Set 0 {PMessIndex} = 0
Set {LTestName}={LNoloadTestName}
If {ASim} = 0 Then
	Status Blue Starting {LTestName} Energy Test v{PVersion} Voltage S.P. {SVoltSet#}
	Log Starting {LTestName} Energy Test v{PVersion} Voltage S.P. {SVoltSet#} {ADate} {ATime}
EndIf

Error off
!Load point file, Initialize and Setup Aux Input channel
Include AuxInInit
Include AuxInSetup
Error On
!Point Fifo Interval 300 Size 1	! Set up fifo for readings, every 5 minsecs.  Used for continous run stabilization
!
! ***************Check Setup Values
!
If "{SStopCond}" = "" Then
	Status Red Please enter Stop Conditions.  If you don't see Stop Conditions then re-select the test
	goto TestEnd
EndIf
If "{SHumidityEnable}" = "Y" Then
	Include HumiditySetup
EndIf
If "{SUseYok}" = "Y" Then
    Point Yok
    Set 1 {PYVolt} = 0
    Set 3 {PYAmp} = 0
    Set 2 {PYWatt} = 0
	Prompt YesNo Is this a Yokogawa Whr check?
	Begin
    	If {APrompt} = 7 Then	! No
    		Set {SUseYok} = N
    	ElseIf {APrompt} = 6 Then	! Yes
    		Leave
    	Endif
	Loop
!   Gosub ResetYok - This happens when wattage is turned off
    If {ASystem} <> {LRerunSys} Then
		Calibrate AuxGain {PYWhr} 0.001 
	    Plot Scale YWatt = 0.1
	Else
		Calibrate AuxGain {PYWatt} 10.0
	Endif
	Set {SPlotList5}=WHR;YWHR;WHRPERDIFF
	Set {SResultReport}=Aham
	Set {SCheckOTC} = 1
    Set 4 {PYWhr} = 0
    Log Yokogawa Enabled    
Endif

If "{SOperator}" = "" Then
	Status Red Please log into RTS and restart test
	goto TestEnd
EndIf
If "{SPlotList1}" = "" Then
	Set {SPlotList1}=VOLT;WATT;FREZ;CAB;AMB
EndIf
If "{SResultReport}" = "" Then
	Set {SResultReport} = Aham
EndIf
If "{SAhamStandard}" = "" Then
	Log Aham Standard set to 2001
	Set {SAhamStandard} = 2001
ElseIf "{SAhamStandard}" = "Y" Then
	Log Aham Standard set to 2014
	Set {SAhamStandard} = 2014
Else
 	Log Aham Standard is {SAhamStandard}
EndIf
If {SStopCond_Right} < 3 & (("{SAhamStandard}" = "2001 EW") | ("{SAhamStandard}" = "2014"))
	Status Red For 2014 or Elec Waiver, Must use Recovery for Stop conditions
	goto TestEnd
Endif
If {SDefrCnt_Right} = 0 & (("{SAhamStandard}" = "2001 EW") | ("{SAhamStandard}" = "2014"))
	Status Red For 2014, use Now for Start conditions to capture before defr
	goto TestEnd
Endif
Error Off
If "{SInitDefrNow}" = "ABCD" Then
	! Setup didn't exist
Else
	If "{SInitDefrNow}" = "Y" Then
		Log RITS: Triggered a defrost
		Driver RitsCommand STATUS START !To trigger a defrost
		Set {SInitDefrNow} = OK
	Endif
Endif
Error On
Transfer units {STempUnits}
Set Lock {STempUnits}

If "{SExtTempPeriod}" = "N" Then
	Set {SExtTempPeriod} = 3 Hours,3
ElseIf "{SExtTempPeriod}" = "" Then
	Set {SExtTempPeriod} = 3 Hours,3
ElseIf "{SExtTempPeriod}" = "Y" Then
	Set {SExtTempPeriod} = 10 Hours,10
ElseIf "{SExtTempPeriod}" = "O" Then
	Set {SExtTempPeriod} = 6 Hours,6
Endif

If {SDefrCnt_Right} = -1 & {STestCnt} = 1 & {ASim} = 0 Then
	Prompt YesNo You sure you want just one test
	Begin
    	If {APrompt} = 7 Then	! No
    		Set {STestCnt} = 2
    		Leave
    	ElseIf {APrompt} = 6 Then	! Yes
    		Leave
    	Endif
	Loop
Endif

! Lookup file containing limits
Lookup Aham{STempUnits}
Revision
Set 0 {Pvalue} = 0
Log Test Number {ARevision}
Include WideChk
Wide Load
Include Database Stability		! Get previous test number and stability info from that test

DelayWrite LastTest = NA
Transfer Interval 60
Cycle Marker

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
Status Blue {LTestName} Test v{PVersion} - Waiting for good TC reading
Begin
	If {ASim} Then
		Leave
	Endif
    If ({PCab_Avg} > -998 & {PCab_Avg} <> 0 & {PCab_Avg} <130) Then
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
Interval InterCmds
Include AuxInProcess	! Calculate Aux Input Channel - Still needed to do this to initialize Aux Inputs even with above statement
Include AmbGroupCheck	! See if ambient group is set up.  Temporary transition helper SH 4/9/2009
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

Include Save As

If {SSampleRate} <10 Then
	Set 0 {SSampleRate}=50
Endif
Plot Interval {SSampleRate}
Trend Interval {SSampleRate}
Transfer Interval {SSampleRate}

Trend Clear
Plot Clear
DelayWrite StartTime = HMS[{ATime_Raw}]
! -- Init vars and set number of decimal places needed
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
Set 2 {PStabCabAvg} = -100	! Used for 2014 stability during the test comparing before defrost to after
Set 2 {PStabFrzAvg} = -100
Set 2 {PStabContCabAvg} = -100	! Used for 2014 stability during the test comparing before defrost to after
Set 2 {PStabContFrzAvg} = -100

If {ASim} Then     ! Enter stabilization from last test (only for reruns)
	Error off
	DelayWrite StartStable = {SLoadTime}		! Write this value now, at end of test, compare to type B stability
	DelayWrite PreviousTestNum = {PPrevTestNum}	! Store for writing later
Else
	Set 2 {PPrevCabAvg} = -100
	Set 2 {PPrevFrzAvg} = -100
Endif

Clear All		! This causes {Astate} = {AState_last} for {ASim} tests
Log Waiting for {SDefrCnt_Right} defrosts
Status Yellow Waiting for defrost to start
Set {PValue} = 0
Stable {SStableGrp_Right}
Set Lock {SStableGrp}

Log Before Loop {AState} {AState_Last}
! Wait for the defrost count
If {ASim} = 0 Then
	Begin
		! -- Check for product in defrost --
		If {AState} = 4 Then
			If {AState} <> {AState_Last} || {ASim} Then
				Log Product defrosted - Stable {AStable} period HMS[{AStable_Total}]
				Status Blue Product in defrost
				If {SDefrCnt_Right} > 0 Then
					Math {SDefrCnt_Right} = {SDefrCnt_Right} -1
				ElseIf {AStable} < ({AStable_TOtal} / {LStableLim}) Then
					Math {SDefrCnt_Right} = 0
				Endif
				! See if product was off before defrost
				If {AState_Last} = 1 Then
					Set {Lvalue} = Product went into defrost while off
					Status Yellow {LValue}
					Gosub AddComment
				Endif
			Endif
			! -- Test is ready to start
			If {SDefrCnt_Right} = 0 Then
				Status Blue Product in defrost
				Leave
			Endif
		Endif
		! -- Check for product run after defrost count
		If ({AState} = 2) & ({AState_Last} = 8) Then
			Status Yellow Defrost complete {SDefrCnt_Right} more to go
			Clear All
			Plot Clear
			Trend Clear
			Stable {SStableGrp_Right}
			If {SDefrCnt_Right} = -2 Then
				Log Recovery Complete, starting test
				Leave
			Else
				Status Yellow Defrost complete {SDefrCnt_Right} more to go		
			Endif
		Endif
		! -- Check for Setup changes while waiting for defrost
		If {ASettings} Then				  
			! -- Open TC Requested? 
			If ({SCheckOTC} = 1) Then
				Log Open TC detect performed
				Set {SCheckOTC} = 0
				! If RTP sees interval of 1, it does OTC check, then resets rate
				If {LLocation} = 4 Then
					Transfer Interval 1
				Endif
			ElseIf ("{SCheckOTC}" = "TP") Then
				Set {SCheckOTC} = 0
				Gosub ProcDefrost
			Endif
			Include WideCommand		!Check to see if a Wide command has been requested
		Endif

		If {SDefrCnt_Right} = -1 Then
			Log Operator forced start
			Leave
		Endif

	Loop
Endif
Set 2 {PRunCabAvg} = {PCab}		! Initialize these averages, used for 2014
Set 2 {PRunFrzAvg} = {PFrez}	

! -- Return to here for multiple tests
Label Restart

Include ADCSetup	! Range checking for ADC calculation parameters
Error Off
If {SCabAuxVolume} > 0 Then
	Set {LValue} = Calculating Cab Avg. Cab Volume: {SCabVolume} Cab Aux Volume: {SCabAuxVolume}
	Gosub AddComment
Endif
Error On
DelayWrite StartPeriod = HMS[{AStable_TOtal}]
DelayWrite Version = Aham v{PVersion}
DelayWrite TestType = {STestType_Left}
DelayWrite TestSpec = {STestType_Right}
Log Stable value = {AStable} Period = HMS[{AStable_TOtal}]
Transfer Interval 50
DelayWrite AToutLen = HMS[{ATestTime}]
Clear Start
Cycle Clear
Plot Clear
Trend Clear
Log Starting {LTestName} Energy Test v{PVersion}
If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASystem} = {LRerunSys} Then
		Database {LDatabase} Table Performance key {STestNumber}
	Else
		Database {LDatabase} Table Performance key {ARevision}
	Endif
	If {PPrevTestNum} >0 Then
		Database PreviousTestNum = {PPrevTestNum}
		Log Previous TestNum recorded {PPrevTestNum}
	Endif	
Endif  
Status Green {LTestName} Energy Test in progress
Log {LTestName} Energy Test in progress {AState} {AState_Last}
Set {PStartTime} = {ATestTime}
DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]
Cycle Start Before 0
Cycle End Before 0
! -- Set up ambient checker
Error Off
If {ASim} then
	Group Lim 3						! Use ambient group
	Group Lim Nom {SAmbient_Right}	! Set nominal target (usually 90 deg F)
	Group Lim Win {LOut1}				! Max of 91, Min of 89 or 32 deg C +- 0.55
Endif
Error On

! -- Init vars and set number of decimal places needed
Set 2 {POut25} = 0
Set 2 {PTimeOut25} = 0
Set 2 {PSuctStrt} = 0
Set 2 {PSuctEnd} = 0
Set 2 {PSuctTime} = 0
Set 2 {PSuctMax} = 0
Set 0 {PCycTime} = 0
Set 0 {PTPStart} = -1
Set 0 {PTotal} = 0
Set 0 {PDefRec} = 0
Set 1 {PValue} = 0
Set 0 {PDefEnd} = 0
Set 0 {PStop} = 0
Set 0 {PDefStart} = 0
Set 0 {PDefHeatStart} = 0
Set 0 {POldCycle} = 0		! Total number of cycles from start of test to current defrost
Set 0 {PLastCycle} = 0		! Total number of cycles from the last defrost to defrost period
Set 0 {PADCycCnt} = 199	! After Defrost CYCle Count, index will start at 200
Stable {SStableGrp_Right}

Set 0 {PContRun} = 0
Cycle Marker

! --------------------- Main test loop -----------------------

Begin

	! -- Check for Setup changes
    If {ASettings} Then				  
		! -- Open TC Requested? 
	    If ({SCheckOTC} = 1) Then
	        Log Open TC detect performed
	        Set {SCheckOTC} = 0
	        ! If RTP sees interval of 1, it does OTC check, then resets rate
	        If {LLocation} = 4 Then
	        	Transfer Interval 1
	        Endif
	    Endif
		Include WideCommand		!Check to see if a Wide command has been requested
    Endif

	Math 0 {PActualCycle}= {ATotalCycle}-{POldCycle}	! Calculate cycles since defrost
   	! -- Open TC Requested? 
    If ({SCheckOTC} = 1) Then
        Log Open TC detect performed
        Set {SCheckOTC} = 0
        ! If RTP sees interval of 1, it does OTC check, then resets rate
        Transfer Interval 1
    Endif

    ! -- Check for freezer above 25F (-3.9C) degrees --
    If ({PFrez} > {LOut25}) & ({POut25} = 0) Then
        Set {POut25} = {ATestTime}+1
		Set {Lvalue} = Freezer over {LOut25} degrees
    	Gosub AddComment
    Endif

    If ({PFrez} < {LOut25}) & ({POut25} > 0) Then
        Math {PTimeOut25} = ({ATestTime} - {POut25}) / 60
        Write Out25Tot = {PTimeOut25}
        Write In25At = HMS[{ATestTime}]
		Set {Lvalue} = Freezer under {LOut25}. Over for {PTimeOut25} minutes
    	Gosub AddComment
        Set {POut25} = 0
    Endif

    ! -- Check for suction line below 50F (10C) Deg --
    ! Temp transition under 50F 10C deg
    If ({PSuctionLine} < {LOut50}) & ({PSuctionLine_Last} > {LOut50} | {PSuctStrt}=0) Then
        ! Interpolate the transition time
        Math {PSuctStrt} = ({LOut50} - {PSuctionLine}) / ({PSuctionLine_Last} - {PSuctionLine})
        Math {PSuctStrt} = {ATestTime} - ({PSuctStrt} * {SSampleRate})
        Log Suction line under {LOut50} at HMS[{PSuctStrt}]
    Endif		  

    ! Temp transition over 50 deg
    If ({PSuctionLine} > {LOut50}) & ({PSuctionLine_Last} < {LOut50}) & ({PSuctEnd} < {PSuctStrt}) Then
        ! Interpolate the transition time
        Math {PSuctEnd} = ({PSuctionLine} - {LOut50}) / ({PSuctionLine} - {PSuctionLine_Last})
        Math {PSuctEnd} = {ATestTime} - ({PSuctEnd} * {SSampleRate})
        Math {PSuctEnd} = ({PSuctEnd} - {PSuctStrt}) 
        If {PSuctEnd} > {PSuctMax} Then
            Set {PSuctMax} = {PSuctEnd}
        Endif
        Set {LValue} = Suction line over {LOut50}. Under for HMS[{PSuctTime}] 
		Gosub AddComment
        Math {PSuctTime} = {PSuctTime} + {PSuctEnd}
        Set {PSuctEnd} = {ATestTime}	! Added to avoid multiple messages
    Endif

    ! -- Check for end of defrost / recovery period --
    !    SH 9/99 DefFlag added so if no defrost at start, no recovery info
	!    SH 7/14 If not stable value before defrost, don't look at recovery either
  	If {PDefFlag} =1 & {PDefend} = 0 Then
    	! Log {POldCycle} {PActualCycle} {ATestTime} {PDefHeatStart} {PValue1} {PValue2}
	
		If ("{SAhamStandard}" = "2014") Then	! Need to have a valid stable average to find defrost end
!			2014 Cycling   
			If {AState} <> {AState_last} Then
				!Log ActCyc:{PActualCycle} LastCyce:{PLastCycle} OldCyc:{POldCycle} StabFrz:{PStabFrzAvg}
			Endif
		    If ({PActualCycle} >= 2 & {AState} = 1 & {AState_last} <> 1 & {PStabFrzAvg} > -100) Then		! Cycling product
			
			Cycle End After {ATestTime}
!				Log Stab Start HMS[{ATestTime}] 
				Cycle Start Before {ATestTime} On
!				Log Stab1 End HMS[{ACycle_Left}] Cab:{PCab_Avg_On_Off_Def_Rec} Frz:{PFrez_Avg_On_Off_Def_Rec} SCab: {PStabCabAvg} SFrz:{PStabFrzAvg}  
				Cycle Start Before {ACycle_Left} Off
				If {SCabAuxVolume} > 0 Then
					Set 2 {PRunCabAvg} = {PCabCalc_Avg_On_Off_Def_Rec}
				Else
					Set 2 {PRunCabAvg} = {PCab_Avg_On_Off_Def_Rec}
				Endif
				Set 2 {PRunFrzAvg} = {PFrez_Avg_On_Off_Def_Rec}
				Log Stable Detail: End HMS[{ACycle_Left}] CabAvg:{PRunCabAvg} FrzAvg:{PRunFrzAvg} BeforeD_Cab: {PStabCabAvg} BeforeD_Frz:{PStabFrzAvg}
				Math 2 {PValue1} = ABS[{PRunCabAvg}-{PStabCabAvg}]
				Math 2 {PValue2} = ABS[{PRunFrzAvg}-{PStabFrzAvg}]
				Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
!				Add a line in the report for each cycle showing the start and end times
!				Limit to 20 cycles and make sure the last 'good' one gets captured
				If {PADCycCnt} < 219 | {PValue} <= {Lout5} Then	
					Math 0 {PADCycCnt} = {PADCycCnt} + 1
					Set ? = {PADCycCnt}
					Math $ = {PADCycCnt} -199
					DelayWrite D? = Cycle $
					DelayWrite SDif? = {PValue}
					DelayWrite SFF? = {PRunCabAvg}
					DelayWrite SFZ? = {PRunFrzAvg}
					DelayWrite SS? = HMS[{ACycle_Left}]
					DelayWrite SE? = HMS[{ACycle_Right}]
					DelayWrite SL? = HMS[{ACycle_Total}]
				Endif
				If {PValue} > {Lout5} Then
		    		Set {LValue} = Product cycled after defrost but not recovered. Fresh Food diff:{PValue1} Frz diff:{PValue2} $
					Log {LValue}
		    	Else
		    		Set {LValue} = Product cycled after defrost and recovered. Fresh Food diff:{PValue1} Frz diff:{PValue2} $
					Log {LValue}
					Math 0 {PValue} = {ATestTime} - {RStabEndSecs}
					DelayWrite TimeBetween = HMS[{PValue}]
					!Log: Wrote Fresh Food stab:{PStabCabAvg} Freezer stab:{PStabFrzAvg} Cab After {PRunCabAvg} Frez After {PRunFrzAvg}
					DelayWrite CabAvgDiff = {PValue1}
					DelayWrite FrzAvgDiff = {PValue2}
					DelayWrite AfterDefCabAvg = {PRunCabAvg}
					DelayWrite AfterDefFrzAvg = {PRunFrzAvg}
					! Write Stabilization values
					DelayWrite RunCabAvg = {PRunCabAvg}
					DelayWrite RunFrzAvg = {PRunFrzAvg}
					DelayWrite StabCabAvg = {PStabCabAvg}
					DelayWrite StabFrzAvg = {PStabFrzAvg}
					Status Green {LTestName} - Recovery completed
			        Gosub ProcDefEnd
			        If {SStopCond_Right} >= 3 & {PDefStart} > 0 Then				! Using 2nd defrost, so end test
					    Log 2014 Cycling DefFlag:{PDefFlag} DefEnd:{PDefEnd} TotCyc:{PActualCycle} TestTime: Math[{ATestTime}-{PDefStart}]
			        	Leave
			        Endif
				Endif	    	
			!      No cycles before def  No cycles after    Valid Frz avg            1.75 hours from defrost                                   
		    Elseif ({PLastCycle} <=1 & {PActualCycle} <= 1 & {PStabFrzAvg} > -100 & ({ATestTime}-{PDefHeatStart})>6300) Then 
				! See if product is within spec
				Math 2 {PValue1} = ABS[{PRunCabAvg}-{PStabCabAvg}] ! only used for continuous running product
				Math 2 {PValue2} = ABS[{PRunFrzAvg}-{PStabFrzAvg}]
				Math 2 {PValue} = MAX[{PValue1},{PValue2}]
		    	!Log {RStableCycCnt} {PLastCycle} {PActualCycle} {ATestTime} {PDefHeatStart} {PValue1} {PValue2}
				! Check for temperatures back in      and for some measure of stability.  Cass 131810
				! Without the Variation check, the temps could swing through a good zone but not be stable
		    	If (MAX[{PValue1},{PValue2}] < {Lout5} & {PFrzVariation} < ({Lout5}*5) & {PCabVariation} < ({Lout5}*5)) Then		! Continous run, minumum of 60 minute defr and rec
					Math 0 {PADCycCnt} = {PADCycCnt} + 1
					Set ? = {PADCycCnt}
					Math $ = {PADCycCnt} -199
					DelayWrite D? = After defrost
					DelayWrite SDif? = {PValue}
					DelayWrite SFF? = {PRunCabAvg}
					DelayWrite SFZ? = {PRunFrzAvg}
					DelayWrite SS? = NA
					DelayWrite SE? = HMS[{ATestTime}]
					DelayWrite SL? = NA

					Cycle Marker
					Status Green {LTestName} - Recovery completed Cont 2014
					! Write Stabilization values
					DelayWrite RunCabAvg = {PRunCabAvg}
					DelayWrite RunFrzAvg = {PRunFrzAvg}
!					DelayWrite StabCabAvg = {PStabContCabAvg}
!					DelayWrite StabFrzAvg = {PStabContFrzAvg}
			        Gosub ProcDefEnd
			        If {SStopCond_Right} >= 3 & {PDefStart} > 0 Then				! Using 2nd defrost, so end test
					    Log 2014 Cont DefFlag:{PDefFlag} DefEnd:{PDefEnd} TotCyc:{PActualCycle} LastCycle:{PLastCycle} DefStart:HMS[{PDefStart}] DefHeatStart: HMS[{PDefHeatStart}]
			        	Leave
			        Endif
			    Elseif ((({ATestime}-{PDefTime})%60)=0) Then							! Show message every 60 minutes
		    		Set {LValue} = Product not recovered. Continuous run. Fresh Food diff:{PValue1} Freezer diff:{PValue2}
					Log {LValue}		    
			    Endif
			    
		    Endif
	  	Else
		    If (({PActualCycle} = 1 & {AState} = 2) | ({ATestTime}-{PDefStart}) > 14400) Then
		        If ({ATestTime}-{PDefStart}) > 14400 Then
		        	Cycle Marker
				    Status Green {LTestName} - Recovery completed C
				Else
				    Status Green {LTestName} - Recovery completed
		        Endif
		        Gosub ProcDefEnd
		        If {SStopCond_Right} >= 3 & {PDefStart} > 0 Then				! Using 2nd defrost, so end test
				    Log 2001 DefFlag:{PDefFlag} DefEnd:{PDefEnd} TotCyc:{PActualCycle} TestTime: Math[{ATestTime}-{PDefStart}]
		        	Leave
		        Endif
		    Endif  	
	  	Endif
	Endif
    ! -- Check for product cycling --  Changed 9/12/2005 SH per TN 222866
	! Make sure state was from off to on.  
    If {PContRun} & {PActualCycle} >= 1 & {AState_last} = 1 & {AState} = 2 Then  
        Set {PContRun} = 0
        Log Product cycled, no more markers ActCyc:{PActualCycle}
        Cycle Interval 0        ! If it cycled then turn off 15 minute saves
	Endif
    ! -- Check for on to off transition
	! This is just needed for 2014 energy where the value right before off
	! And the time needs to be recorded						! Before defrost
    If {PContRun} = 1 & {AState_last} = 2 & {AState} = 1 & {PDefFlag} = 0 Then
		DelayWrite StabStart = HMS[{ATestTime}]		! Time is time when went into defrost
		DelayWrite StabEnd = NA			! Just in case a cycle stable value was already written
		DelayWrite StabLength = NA		! Just in case a cycle stable value was already written
		Set 2 {PStabContCabAvg} = {PCab}	! Save for future use
		Set 2 {PStabContFrzAvg} = {PFrez}	
	Endif
    ! --- Time to temp period and no cycles ----
    ! TPStart records the last cycle or is zero initially
    ! So if it doesn't cycle after 5 hrs or 5hrs after the last cycle then add markers TN 274086
	! DefFlag means defrost has ended
    If {PContRun}=0 & ({ATestTime}-{PDefHeatStart}) > 10800 & {PActualCycle}=0  Then
		! Log PActCyc:{PActualCycle} DefFlat:{PDefFlag}
	    
		Cycle Interval 300        ! Put a marker in database every 5 min
		Log Continuous run, adding markers, temp period started DefFlg:{PDefFlag} ActCyc:{PActualCycle} TotCyc:{ATotalCycle}
		Log No cycles in test temp period started
		Cycle Marker        ! Put a marker in database
		Set {PContRun} =1
    Endif

    ! -- Typical cycles cycle data --
	! 2014 test starts on on to off transition, 2001 starts on off to on
    If ({PActualCycle} = 2) & ({PCycTime} = 0) Then
		If (("{SAhamStandard}" = "2001") & {AState} = 2 & {AState_Last} = 1) | (("{SAhamStandard}" = "2014") & {AState} = 1 & {AState_Last} = 2) Then
			Set {PCycTime} = {ATestTime}
			Cycle Start Before {ATestTime}
			Log Typical cycles started 1
			Status Green {LTestName} - Typical cycle started
			Cycle Interval 0        ! If it cycled then turn off 15 minute saves
			Set {PContRun} = 0
		Endif
    Endif

    ! ----------- Unit in defrost ----------------------
    ! Only check 60 min after last defrost - if product has defrost bimetal
    If ({AState} = 4 & ({AState_Last} <> 4 | {ATestTime} = 0) & ({PDefEnd} >= {PDefHeatStart} | ({ATestTime} - {PDefHeatStart}) > 7200)) THEN
 	   Log In Defrost State:{AState} PrevDefStart:HMS[{PDefHeatStart}] PrevDefEnd:HMS[{PDefEnd}] 
	    ! Only check 120 min after last defrost - if product has defrost bimetal
	    If ({ATestTime} > 7200) THEN
            Gosub ProcDefrost				! Process Defrost
            Error Off
            ! Don't end test, until after recovery and use that defr/recovery for Part B of adc calc
            If {SStopCond_Right} >= 3 Then		! Stop after recovery, don't check for stable
            	Set 0 {PDefEnd} = 0				! Tell RTS to look for another end of defrost
            	Status Green Waiting for Defrost Recovery to end test        
            	Log Waiting for Defrost Recovery to end test        
			    !Log DefFlag = {PDefFlag} DefEnd = {PDefEnd} TotCyc={PActualCycle} TestTime = Math[{ATestTime}-{PDefStart}]
            Else
				Gosub ProcPowerPer		! Process Power Period info, test runs from defrost to defrost
	        	Error On
            	Leave
            Endif
		ElseIf {SStopCond_Right} <= 2 & {AState_Last} <> 4 & {PDefFlag} = 0 & {ASim} = 0 Then	! Test has only been running 60 minutes, so scrap old data and start at this defrost
			Log Quick Defrost in test, discarding initial data
			Goto Restart
		Endif
    	Set {PDefFlag} = 1		! Don't show recovery if no defrost, defrost bimetal          
    Endif
	     
Loop

! -------------------- Store test data -----------------------------

Abort
If {PTPStart} = -1	Then ! If no temp period information
	Gosub ProcDefrost	! Calculates defrost info and temp period information
Endif
If {RPWhr} > -998 Then	! If no Power Period information
	! Power period exists
Else
	Gosub ProcPowerPer
Endif
If ({ASim} = 1 & {SStopCond_Right} >= 3 & {PDefStart} > 0 & {PDefEnd} = 0) Then				! Last on transition wasn't recorded by RTS
	Cycle Marker
    Gosub ProcDefEnd
Endif

If {ASim} = 0 Then
	Status Grey {LTestName} Test Complete TN:{ARevision}
Else
	Status Grey {LTestName} Test Complete TN:{STestNumber}
Endif

DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
DelayWrite Comment = Temp Units °{STempUnits}
Error Off
DelayWrite VoltSet = {SVoltSet#}
DelayWrite FreqSet = {SFreqSet#}
Error On

! Total Test info - to make compatible with cycle analysis
Cycle Start Before 0
Cycle End Before 0
DelayWrite TT MaxM MinM Avg On Off Def Rec
! Added 5/2/11 For TC Tree info
DelayWrite LeftT Title MaxM MinM Avg On Off Def Rec Group8	! Write individual temperatures for tree report
DelayWrite RightT Title MaxM MinM Avg On Off Def Rec Group9	! Write individual temperatures for tree report
Include TTMaxMin				! TTMaxMin include
Include PPYok					! Power Period Yok

! Note non-standard values
If {SADCMaxDefr} <> 96 Then
	Set {LValue} = Nonstandard ADC Max Defrost value used: {SADCMaxDefr}
	Gosub AddComment
Endif
If {SADCMinDefr} <> 8 Then
	Set {LValue} = Nonstandard ADC Min Defrost value used: {SADCMinDefr}
	Gosub AddComment
Endif
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

! Write suction time comment if > 0
If {PSuctTime} > 0 Then
	Set {Lvalue} = Suction > 50. Max time {PSuctMax} min, Total time {PSuctTime} min.
Endif

! -- Save titles for all points --
DelayWrite D Title
DelayWrite TotalTest = HMS[{ATestTime}]

// If ProdID changes during test, then reflect this
// -1 tells save as to just change lookup value
Set {Pvalue} = -1
Include Save As
Include Database LabResults
Database Write
Include Database Performance			! Write stuff to performance table
Database TestName = Aham {PVersion}
Database LoadTime = {RStartStable} 		! Store previous test stability
Database Write
Include Database Performance Flex
Result Report {SResultReport}
Result Copies 1
Result Print A

Result Write Setup
Include Rerun Write

! -- Check for repeating test --
If ({AMode} = 2 & {ASim} = 0 & {STestCnt} > 1) Then
    Set 0 {PPrevTestNum}= {ARevision}			! Save test number so next test has previous test num
    Set 2 {PValue1}= {RTestStable}			! Save stability from this test for next time
    Math 0 {STestCnt} = {STestCnt} -1		! Decrement test count
    Result Close
    Trend Clear
    Revision
	Wide Load
	Set {PValue} = 1						! Trigger new csv and txt file in Save As
    Include Save As
    Result Report {SResultReport}

	If {SStopCond_Right} > 2 Then
    	Set {PDefFlag} = 0		! If running from recovery to recovery, then defrost didn't just happen
	Endif

	Set 0 {PMessIndex} = 0

    Log Test Number from previous test saved as {PRevision}
	DelayWrite PreviousTestNum = {PPrevTestNum}	! Store for writing later
	DelayWrite StartStable = {PValue1}		! Write this value now, at end of test, compare to type B stability
    Goto Restart
Endif
Label TestEnd
End

! --------------------- Process Defrost -----------------------
! Processes temp period, power period information after defrost
Sub ProcDefrost
	Set 0 {PDefStart}={ATestTime}			! Store defrost start time, this will get moved back for 2014
	Set 0 {PDefHeatStart}={ATestTime}		! Store defrost heater start time, doesn't get changed
	Math 0 {PActualCycle}={ATotalCycle}-{POldCycle}
	Set {PLastCycle} = {PActualCycle}		! Store number of cycles in last defrost to defrost period
!	Log LastCyc:{PLastCycle} ActCyc:{PActualCycle} OldCyc:{POldCycle} ActCyc:{ATotalCycle}		! Store number of cycles in last defrost to defrost period
	Set 0 {POldCycle}={ATotalCycle}			! Used for calculations for cycles after defrost

	! DelayWrite TestStable = {AStable}
	DelayWrite TestPeriod = HMS[{AStable_TOtal}]
	If {PSuctStrt} > 0 & {PSuctEnd} = 0 Then
		Math {PSuctEnd} = {ATestTime} - {PSuctStrt}
		If {PSuctEnd} > {PSuctMax} Then
			Set {PSuctMax} = {PSuctEnd}
		Endif
        Math {PSuctTime} = {PSuctTime} + {PSuctEnd}
	Endif
	DelayWrite SuctTime = {PSuctTime}
	DelayWrite SuctMax = {PSuctMax}
	
	! Find Temp period End and Defrost Start
	! Electrolux waiver allows the off period before defrost to be used in ADC calculations
	! This only applies if the last state was off before defrost	
	! 2014 standard is the same way
	If ("{SAhamStandard}" = "2001") Then
		Log Using 2001 Standard for Defrost Start
		! Locate temp period end
		! If Last state was off
		If {AState_Last} = 1 Then
			Log Last State was off
			! Move to the previous cycle
			Cycle End Before {ATestTime} On
			Cycle End Before {ACycle_Right} Off			
	        Cycle Start Before {PCycTime} Off	! Move start time for typical cycles also
	        Cycle Start Before {ACycle_Left} On	! Move start time for typical cycles also
			!Log Changing from HMS[{PCycTime}] to HMS[{ACycle_Left}]
			Set {PCycTime} = {ACycle_Left}		! This is not the start time for the temp period.		
		Else
			Log Last State was on
			Cycle End Before {ATestTime} Off
			Math {PValue2} = {ATestTime} - {ACycle_Right}
			DelayWrite IncCyc = HMS[{PValue2}] HMS[{ATestTime}] HMS[{ACycle_Right}]
			! If last run time is more than 12 hours then TP is last three hours
			If ({PValue2} > (12 * 3600)) Then
				Cycle End After {ATestTime}
				Set {Lvalue} = Incomplete Cycling
		    	Gosub AddComment
			! If last run time is too short, then don't count either
		    ElseIf {PValue2} < 120 Then
				Log Corrected For short on time
				Cycle End Before {ACycle_Right} On	    
				Cycle End Before {ACycle_Right} Off
			Endif
		Endif
	Else 	! "{SAhamStandard}" = "2001 EW") or "2014"
		Log Using 2014 or Electrolux Waiver Standard for Defrost Start Cont:{PContRun} Last State:{AState_Last}
		! Find Defrost period start which is temp period end
		! Defrost includes cycle before defrost if cycling product
		If {PContRun} = 0 Then
			If {AState_Last} = 2 Then	! Last state was on, so move back to off time
				Cycle Start Before {ATestTime} On
				!Log DefStart1{AState_Last} HMS[{ACycle_Left}]
				Cycle Start Before {ACycle_Left} Off
				!Log DefStart2{AState_Last} HMS[{ACycle_Left}]
			Else
				Cycle Start Before {ATestTime} On
				!Log DefStart1{AState_Last} HMS[{ACycle_Left}]
				Cycle Start Before {ACycle_Left} Off		
				!Log DefStart2{AState_Last} HMS[{ACycle_Left}]
			Endif
	
			Set {PDefStart} = {ACycle_Left}				! Store defrost start
			Cycle End Before {PDefStart} On 			! End of TP is the Start of the pre-defrost cycle
			DelayWrite DebugELW = Prev Def Start:HMS[{ATestTime}], New Def Start:HMS[{ACycle_Left}] {AState} {AState_Last} TP End:HMS[{ACycle_Right}]
		Else	! Continous run
			If {AState_Last} = 1 Then		! If last state was off, then back up to run time
				Cycle End Before {ATestTime} On
				Set {PDefStart} = {ACycle_Right}				! Store defrost start
				Log DefStartCR {AState_Last} HMS[{ACycle_Right}]
			Else
				Cycle End Before {ATestTime}
			Endif
		Endif
	Endif
	DelayWrite TEnd = HMS[{ACycle_Right}]
	Gosub ProcTPStart
	Gosub Proc2014Stable	! 2014 stability before and after defrost
	Gosub ProcStability		! Type a or b stability from test to test
! -- Normal cycle data --
	If {PCycTime} <> 0 Then
	    Cycle Start After {PCycTime}
	    Set {PCycTime} = {ACycle_Left}
	    DelayWrite CycTime = HMS[{PCycTime}]
	    DelayWrite CUfact = {AUfact}
	    DelayWrite C MaxM MinM Avg On Off
	    Set {PTotal} = {ACycle_Total_On_Off}
	    DelayWrite CTotal = HMS[{PTotal}]
	    Math {PValue} = {ACycle_Cnt} / ({PTotal} / 3600)
	    DelayWrite CCyc1Hr = {PValue}
	    DelayWrite CCycles = {ACycle_Cnt}
	    DelayWrite CMinOn = HMS[{ACycle_Min_On}]
	    DelayWrite CMaxOn = HMS[{ACycle_Max_On}]
	    DelayWrite CAvgOn = HMS[{ACycle_Avg_On}]
	    DelayWrite CMinOff = HMS[{ACycle_Min_Off}]
	    DelayWrite CMaxOff = HMS[{ACycle_Max_Off}]
	    DelayWrite CAvgOff = HMS[{ACycle_Avg_Off}]
		Math 1 {PValue} = 100 * {ACycle_Total_On} / ({ACycle_Total_On}+{ACycle_Total_Off}) 
		DelayWrite CPerOn = {PValue}
	
		Include TCycMaxMin	! Cab and Frez Avg, Min, Max - Shared by all procedures
	Endif

	Set {PCycTime} = 0						! Reset typical cycles time for next defrost
EndSub
! Given the endtime in {ACycle_Right}, find the TP Start
! Also updates all Temp period variables
! Added 10/2014 'cause the temp period can change dynamically

Sub ProcTPStart
	! Find Temp period start
	! Temp period start is 3,6 or 10 hrs back from end of temp period
	Math {PTPStart} = {ACycle_Right} - ({SExtTempPeriod_Right}*3600)
	
	! If not 3 hours, then don't write new temp period stuff unless first one
	If {PTPStart} < 0 Then  
	    ! SH 9/99 Added to only have complete cycles in temp period for short test
		Cycle Start After 0 Off
		Set {PTPStart} = {ACycle_Left}
	Endif
	
	! Find correct cycle transition from time
	If {PContRun} = 1 Then
	    Cycle Start Before {PTPStart}
	Else
		If "{SAhamStandard}" = "2014" Then
			!og TP Start1 HMS[{ACycle_Left}]
			Cycle Start Before {PTPStart} Off
			!Log TP Start2 HMS[{ACycle_Left}]
		ElseIf {AState_Last} = 1 Then
			Cycle Start Before {PTPStart} Off
			Cycle Start After {ACycle_Left} On
		Else
			Cycle Start Before {PTPStart} On
			Cycle Start After {ACycle_Left} On
		Endif	
		Set {PValue} = {ACycle_Left}
		! If less then 3 hours then we went forward too far so shift back one cycle
		If {PValue} > {PTPStart} Then
			Cycle Start Before {ACycle_Left} Off
			Cycle Start Before {ACycle_Left} On
			Write Debug = TP less than 3 hours, so shifted from HMS[{PValue}] to HMS[{ACycle_Left}]
		Endif
	Endif
	! If temp period is starting before typical cycles then move after, if still have 3 hours
	If {ACycle_Left} < {PCycTime} & ({ACycle_Right} - {PCycTime}) > 10800 Then				
		Log Changing Temp Start from HMS[{ACycle_Left}] to HMS[{PCycTime}] HMS[{PTPStart}]
		Cycle Start Before {PCycTime}
		Set {PTPStart} = {ACycle_Left}	! Temp period start should not be before typical cycles start
	Endif
	Log Temp Period Start HMS[{ACycle_Left}] End HMS[{ACycle_Right}] ContRun: {PContRun}
	Trend Annotation 5,0;{ACycle_Left};{PCab};1;TPStart
	Trend Annotation 6,0;{ACycle_Right};{PCab};1;TPEnd

	Set {PTPStart} = {ACycle_Left}	! We have a TPStart on the correct cycle transition
		
	Set {PTempPeriod} = {ACycle_Total_On_Off} 	! Find temp period length
	DelayWrite TStart = HMS[{PTPStart}]
	DelayWrite TempPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]
	
	! -- Save time data --
	DelayWrite TMinOn = HMS[{ACycle_Min_On}]
	DelayWrite TMaxOn = HMS[{ACycle_Max_On}]
	DelayWrite TAvgOn = HMS[{ACycle_Avg_On}]
	DelayWrite TMinOff = HMS[{ACycle_Min_Off}]
	DelayWrite TMaxOff = HMS[{ACycle_Max_Off}]
	DelayWrite TAvgOff = HMS[{ACycle_Avg_Off}]
	DelayWrite TUfact = {AUfact}
	Math 1 {PValue} = {Acycle_Avg_Off} / 60
	Database MinOff= {PValue}
	Math 1 {PValue} = {Acycle_Avg_On} / 60
	Database MinOn= {PValue}
	
	Set {PTotal} = {ACycle_Total_On_Off}
	Set {PADCT1} = {PTotal}
	
	DelayWrite TCycles = {ACycle_Cnt}
	Math {PCyc1Hr} = {ACycle_Cnt} / ({PTotal} / 3600)
	Math {PCyc4Hr} = {ACycle_Cnt} / ({PTotal} / 14400)
	Math {PCyc24Hr} = {ACycle_Cnt} / ({PTotal} / 86400)
	DelayWrite TCyc1Hr = {PCyc1Hr}
	Database CycPerHr  = {PCyc1Hr}
	DelayWrite TCyc4Hr = {PCyc4Hr}
	DelayWrite TCyc24Hr = {PCyc24Hr}
	DelayWrite TTotal = HMS[{PTotal}]
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
	! -- Yokogawa values if needed
	Include TPYok
	
	! -- Tpar (Temp Period on database) 5/19 SH
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
	If {PHAuxType} = 5 | {PHAuxType} = 13 | {PHAuxType} = 14 Then	! Setra 0-1000
		Database HeadPres = {PHAuxInput_Avg_On}
	Else
		Database HeadPres = {PHPSI_Avg_On}
	EndIf
	Database  SuctPres  = {PLPSI_Avg_On}
	
	! -- Temp period all points --
	DelayWrite TP Avg On
	DelayWrite TR MaxM MinM Avg On Off
	
	DelayWrite TVolt = {PVolt_Avg_On_Off}
	DelayWrite TLeftAmb = {PAmbLeft_Avg_On_Off}
	DelayWrite TRightAmb = {PAmbRight_Avg_On_Off}
EndSub	
! --------------------- Process Power Period -----------------------
! Processes power period
! -- Times cover full test with defrost and recovery --
Sub ProcPowerPer
	Cycle Start After 0
	Cycle End After 0
	
	! -- Save watt hour data --
	DelayWrite CalcWhr = {ATotalWhr}
	DelayWrite PWhr = {PWhr}
	Math {PWhr1Hr} = {PWhr} / ({ATestTime} / 3600)
	Math {PWhr4Hr} = {PWhr} / ({ATestTime} / 14400)
	Math {PWhr24Hr} = {PWhr} / ({ATestTime} / 86400)
	DelayWrite PWhr1Hr = {PWhr1Hr}
	DelayWrite PWhr4Hr = {PWhr4Hr}
	DelayWrite PWhr24Hr = {PWhr24Hr}
	
	! -- Save time data --
	DelayWrite PMinOn = HMS[{ACycle_Min_On}]
	DelayWrite PMaxOn = HMS[{ACycle_Max_On}]
	DelayWrite PAvgOn = HMS[{ACycle_Avg_On}]
	DelayWrite PMinOff = HMS[{ACycle_Min_Off}]
	DelayWrite PMaxOff = HMS[{ACycle_Max_Off}]
	DelayWrite PAvgOff = HMS[{ACycle_Avg_Off}]
	
	DelayWrite PCycles = {ACycle_Cnt}
	Math {PCyc1Hr} = {ACycle_Cnt} / ({ATestTime} / 3600)
	Math {PCyc4Hr} = {ACycle_Cnt} / ({ATestTime} / 14400)
	Math {PCyc24Hr} = {ACycle_Cnt} / ({ATestTime} / 86400)
	DelayWrite PCyc1Hr = {PCyc1Hr}
	Database CycPerHr = {PCyc1Hr}
	DelayWrite PCyc4Hr = {PCyc4Hr}
	DelayWrite PCyc24Hr = {PCyc24Hr}
	DelayWrite PTotal = HMS[{ATestTime}]
	! Leave Pend and PStart in
	DelayWrite PEnd = HMS[{ATestTime}]
	DelayWrite PStart = HMS[{ACycle_Left}]
	DelayWrite PowerPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]
	Math 1 {PValue} = 100 * {ATotalOn} / ({ATotalOn}+{ATotalOff}) 
	DelayWrite PPerOn = {PValue}
	
	DelayWrite PTotOff = HMS[{ATotalOff}]
	DelayWrite PTotOn = HMS[{ATotalOn}]
	
	Math 1 {PValue} = {ATotalOn} / 3600
	DelayWrite RunTimeAD = {PValue}
	
	! -- Save watt data --
	DelayWrite PWMinOn = {PWatt_Min_On}
	DelayWrite PWMinOff = {PWatt_Min_Off}
	DelayWrite PWMinDef = {PWatt_Min_Def}
	DelayWrite PWMinRec = {PWatt_Min_Rec}
	
	DelayWrite PWMaxOn = {PWatt_Max_On}
	DelayWrite PWMaxOff = {PWatt_Max_Off}
	DelayWrite PWMaxDef = {PWatt_Max_Def}
	DelayWrite PWMaxRec = {PWatt_Max_Rec}
	
	DelayWrite PWAvgOn = {PWatt_Avg_On}
	DelayWrite PWAvgOff = {PWatt_Avg_Off}
	DelayWrite PWAvgDef = {PWatt_Avg_Def}
	DelayWrite PWAvgRec = {PWatt_Avg_Rec}
	
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
	DelayWrite PP Avg On
	DelayWrite PR MaxM MinM Avg On Off Def Rec
	Math {PValue} = 3600 / {ASample_Avg}
	DelayWrite SampleHr = {PValue}
	
	DelayWrite PVolt = {PVolt_Avg_On_Off}
	DelayWrite PLeftAmb = {PAmbLeft_Avg_On_Off}
	DelayWrite PRightAmb = {PAmbRight_Avg_On_Off}
	DelayWrite PAmbMax = {PAmb_Max_On_Off_Def_Rec}
	DelayWrite PAmbMin = {PAmb_Min_On_Off_Def_Rec}
EndSub

Sub ProcDefEnd
    Log Defrost recovery completed
    Status Green {LTestName} v{PVersion} - Recovery complete

    Set {PDefEnd} = {ATestTime}
    If {SStopCond_Right} >= 3 Then		! Test stops at recovery, so power period just ended as well
		Gosub ProcPowerPer
	EndIf

    Cycle Start Before {PDefStart}
    Cycle End After {ATestTime}
    ! Added 12/15/99 to record defrost time
	DelayWrite DStart = HMS[{ACycle_Left}]
	DelayWrite DEnd = HMS[{ACycle_Right}]
	Set 0 {PDefRecStart} = {ACycle_Left}
	Set 0 {PDefRecEnd} = {ACycle_Right}
    
    DelayWrite PTotDef = HMS[{Acycle_Total_Def}] 
    DelayWrite PTotRec = HMS[{Acycle_Total_Rec}]
    DelayWrite PDefOff = HMS[{Acycle_Total_Def_Rec}]
    
! - Math {PValue} = {PValue} + {ATotalOn} + {ATotalOff} -- Changed 2/15 SH
    DelayWrite PDefRec = HMS[{ACycle_Total}]
    Set {PADCT2} = {Acycle_Total_On_Off_Def_Rec}
    Set 0 {PDefRecLen} = {ACycle_Total}
	If {SStopCond_Right} >= 3 Then		! Use cycle database for second defrost method
	    DelayWrite PDefRecWhr = {AWhr}
	    Set 4 {PDefRecWhr} = {AWhr}
	    Set {PADCEP2} = {AWhr}
		DelayWrite PWAvgDef = {PWatt_Avg_Def}
		DelayWrite PWAvgRec = {PWatt_Avg_Rec}
	Else						! Use straight whr value, which might be slightly more accurate
	    DelayWrite PDefRecWhr = {PWhr}
	    Set 4 {PDefRecWhr} = {PWhr}
	    Set {PADCEP2} = {PWhr}
	    DelayWrite WhrCheck = {AWhr},{PWhr}			! Temporary check to see how they compare
	Endif
    DelayWrite DR MaxM MinM Avg Def Rec On
	DelayWrite DefPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]

	Math 1 {PValue} = {Acycle_Total_Def}/60 
	DelayWrite DefrHtrOn = {PValue}
	Math 1 {PValue} = {Acycle_Total_Def_Rec}/60
	DelayWrite DefrTotTime = {PValue}

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
	Error off
	DelayWrite DRFrezMin = {PFrez_Min_Def_Rec_On}
    DelayWrite DRFrezMax = {PFrez_Max_Def_Rec_On}
    DelayWrite DRFrezAvg = {PFrez_Avg_Def_Rec_On}
	Group Avg {Pvalue} = {PFrez_MaxM_On_Off_Def_Rec}
	DelayWrite  DRFrezMaxAvg = {PValue}
	Group Avg {Pvalue} = {PFrez_MinM_On_Off_Def_Rec}
	DelayWrite DRFrezMinAvg = {PValue}
    Math {PValue} = {RDCabAvg} - {RDFrezAvg}
    DelayWrite DCabDif = {PValue}
    Return
EndSub
! -- The following commands are executed each scan --
Sub InterCmds
	Include AuxInProcess		!Calculate Aux Input Channel
	Error Off
	If {ASim} then
		Group Lim Win {LOut1}				! Check Ambient group +- 1 deg
	Endif
	Error On
	
	Math {PCyc1Hr} = {ATotalCycle} / ({ATestTime} / 3600)
    Math {PCyc4Hr} = {ATotalCycle} / ({ATestTime} / 14400)
    Math {PCyc24Hr} = {ATotalCycle} / ({ATestTime} / 86400)
    Math {PWhr1Hr} = {PWhr} / ({ATestTime} / 3600)
    Math {PWhr4Hr} = {PWhr} / ({ATestTime} / 14400)
    Math {PWhr24Hr} = {PWhr} / ({ATestTime} / 86400)
    Math {POnPer} = ({ATotalOn} / ({ATotalOn} + {ATotalOff})) * 100
	If "{SUseYok}" = "Y" Then
        Math 3 {PYDwhr} = 1000*({PYWhr} - {PWhr})			! Calculate Error in watt hours
        Math 2 {PWhrPerDiff} = 0.10*{PYDWhr}/{PYWhr}		! Calculate Percent Error        
        Math 3 {PYok24Hr} = {PYWhr} / ({ATestTime} / 86400)	! Calculate kwh24hr
    Endif
    Error Off
	If {SCabAuxVolume} > 0 Then
		Math 2 {PCabCalc} = (({PCab}*{SCabVolume}) + ({PCabAux}*{SCabAuxVolume}))/({SCabVolume}+{SCabAuxVolume})
	Endif	
	Error On
	! This used only for continuous run tests
	Math 2 {PRunCabAvg} = ({PCab_L1}*0.985) + ({PCab}*0.015)		! Running average for Cab and Frz
	Math 2 {PRunFrzAvg} = ({PFrez_l1}*0.985) + ({PFrez}*0.015)		! Smoothes out cycling for 2014 recovery chec
	Math 2 {PCabVariation} = ABS[{PCab} - {PCab_L1}]		! Subtract current reading from reading 5 minutes ago
    Math 2 {PFrzVariation} = ABS[{PFrez} - {PFrez_L1}]		! Subtract current reading from reading 5 minutes ago
    Return
EndSub
! --------------------- AddComment -----------------------
! Adds a comment to the test and creates a log entry
Sub AddComment
	If {PMessIndex} < 100 Then
	    Math 0 {PMessIndex} = {PMessIndex} + 1
	    Set $ = {PMessIndex}
	    Write $TM = HMS[{ATestTime}]
		Write $CM = {LValue}
	Endif
	Return
EndSub
! --------------------- MaxValue -----------------------
! 
! Find Max value and handles case with missing cab or frez
Sub MaxValue
	If {PValue1} > -998 & {PValue1} < 999 Then		! This handles the condition if there is no Cab Avg
		Set {PValue1} = {PValue1}	! Do nothing
	Else
		Set {PValue1} = -900		! Set to a small number
	Endif
	If {PValue2} > -998 & {PValue2} < 999 Then		! This handles the condition if there is no Frz Avg
		Set {PValue2} = {PValue2}	! Do nothing
	Else
		Set {PValue2} = -900		! Set to a small number
	Endif
	Math 2 {PValue} = MAX[{PValue1},{PValue2}]
EndSub
! --------------------- Proc2014Stability -----------------------
! 
! Find cycle before the defrost period for 2014 energy
! This is called at defrost
Sub Proc2014Stable
	If ("{SAhamStandard}" = "2001") Then		! Only for 2014 energy test
		return
	Endif
	! Cycling product. ProcDefrost has {ACycle} period as the cycle before defrost and Temp Period defined
	! So check to see if those 2 periods are within 0.5 deg F of each other
	If {PContRun} = 0 Then
		! Find the cycle before defrost, which is included in the 'defrost' period
		 Cycle End After {PDefStart} ! End of period is start of defrost
		 Cycle Start Before {PDefStart} On ! Move back to off to on
		! Log Proc14Stable {AState_Last} HMS[{ACycle_Left}]
		 Cycle Start Before {ACycle_Left} Off	! Move back to on to off
		! Log Proc14Stable {AState_Last} HMS[{ACycle_Left}]
Label PrevCycle
		If {SCabAuxVolume} > 0 Then
			Set 2 {PStabCabAvg} = {PCabCalc_Avg_On_Off_Def_Rec}	! Using Aux Cab compartment
		Else
			Set 2 {PStabCabAvg} = {PCab_Avg_On_Off}	! Save for future use
		Endif
		Set 2 {PStabFrzAvg} = {PFrez_Avg_On_Off}
		Math 2 {PValue1} = ABS[{RTCabAvg}-{PStabCabAvg}]	! Compare pre-defrost period to temp period
		Math 2 {PValue2} = ABS[{RTFrezAvg}-{PStabFrzAvg}]
		Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
		! See if Temp period is stable with pre-defrost period
		If {PValue} > {LOut5} & {ACycle_Left} > {PTPStart} Then
			Log 2014 Cycle HMS[{ACycle_Left}] to HMS[{ACycle_Right}] not stable with TP. Diff {PValue} Cab Avg {PStabCabAvg} FrzAvg {PStabFrzAvg}. TP CabAvg {RTCabAvg} TP FrzAvg {RTFrezAvg}
			Cycle End Before {ACycle_Right} Off			
			Cycle End Before {ACycle_Right} On
			Gosub ProcTPStart	! {ACycle_Right} is new Temp period end, find new Temp period start
	        Cycle Start Before {ACycle_Right} On	! Just want one cycle now
			Cycle Start Before {ACycle_Left} Off
			! Move back one cycle if cycle is valid and not before typical cycles
			If (({ACycle_Right}-{ACycle_Left}) > 900) & ({ACycle_Left} >={PCycTime})  Then	! At least a 15 minute cycle to be valid
				Log {ACycle_Left} {PCycTime}
				Goto PrevCycle	
			Else
				! Couldn't find a good period so reset period
				Cycle End After {PDefStart} ! End of period is start of defrost
				Cycle Start Before {PDefStart} On ! End of period is start of defrost
				Cycle Start Before {ACycle_Left} Off		
				If {SCabAuxVolume} > 0 Then
					Set 2 {PStabCabAvg} = {PCabCalc_Avg_On_Off_Def_Rec}	! Using Aux Cab compartment
				Else
					Set 2 {PStabCabAvg} = {PCab_Avg_On_Off}	! Save for future use
				Endif
				Set 2 {PStabFrzAvg} = {PFrez_Avg_On_Off}
				Cycle End Before {ACycle_Left} On 			! End of TP is the Start of the pre-defrost cycle
				Gosub ProcTPStart	! {ACycle_Right} is new Temp period end, find new Temp period start
				Set {LValue} = Couldn't find Pre-defrost cycle stable with temp period
				Log {LValue}
				Gosub AddComment				
				Set {LValue} = Pre-defrost CabAvg: {PStabCabAvg} FrzAvg: {PStabFrzAvg} Temp period CabAvg: {RTCabAvg} FrzAvg: {RTFrezAvg}
				Log {LValue}
				Gosub AddComment				
			Endif
		Endif
		DelayWrite StabLabel = Before Defrost
		DelayWrite StabStart = HMS[{ACycle_Left}]
		DelayWrite StabEnd = HMS[{ACycle_Right}]
		DelayWrite StabCabAvg = {PStabCabAvg}
		DelayWrite StabFrzAvg = {PStabFrzAvg}
		DelayWrite StabLength = HMS[{ACycle_Total}]
		Log 2014 Stability recorded for cycle before defrost from HMS[{ACycle_Left}] to HMS[{ACycle_Right}]. Cab Avg {RStabCabAvg} FrzAvg {RStabFrzAvg} {ACycle_Cnt}
		Set {PDefStart} = {ACycle_Right}
	Else
	! If Continus run, take the average right when 'defrost' period starts
		If {AState_Last} = 1 Then		! If last state was off, then back up to run time
			Cycle End After {PDefStart} ! End of period is start of defrost
			Log Proc14Stable Time:{RStabStart} Cab:{PStabCabAvg} Frz:{PStabFrzAvg}				
			DelayWrite StabCabAvg = {PStabContCabAvg}
			DelayWrite StabFrzAvg = {PStabContFrzAvg}
		Else							! Product went from run into defrost		
			DelayWrite StabStart = HMS[{PDefStart}]		! Time is time when went into defrost
			Set 2 {PStabCabAvg} = {PCab}	! Save for future use
			Set 2 {PStabFrzAvg} = {PFrez}
			DelayWrite StabCabAvg = {PStabCabAvg}
			DelayWrite StabFrzAvg = {PStabFrzAvg}
		Endif
		Set 2 {PStabCabAvg} = {PCab}	! Save for future use
		Set 2 {PStabFrzAvg} = {PFrez}	
		DelayWrite StabLabel = Before Defrost
		Log 2014 Stability recorded for point before defrost at HMS[{ATestTime}]. Cab Avg {RStabCabAvg} FrzAvg {RStabFrzAvg} HMS[{ACycle_Left}]
	Endif
EndSub
! --------------------- ProcStability -----------------------
! Process the Stability values before defrost for the type B stability value
! Where 2 power periods are compared
Sub ProcStability
	! Save previous values
    Cycle End After {ATestTime}
	Math {PValue} = {ACycle_Right} - (2*3600)				! 2 hours back

	If {PActualCycle} = 0 Then	! Continuous run
		Cycle Start Before {PValue} 
		Log continuous run Procstability
	Else
		! -- Locate the start point --
		If {AState_Last} = 1 Then
			Cycle Start Before {PValue} Off
		Else
			Cycle Start Before {PValue} On
		Endif	
		! -- Make sure we have an even number of cycles --
		If ({ACycle_Cnt}%2) = 1 Then	! Don't want odd number of cycles
			Log Odd number of cycles: {ACycle_Cnt}, previous Left edge HMS[{ACycle_Left}]
			If {AState_Last} = 1 Then
				Cycle Start Before {ACycle_Left} On
				Cycle Start Before {ACycle_Left} Off
			Else
				Cycle Start Before {ACycle_Left} Off
				Cycle Start Before {ACycle_Left} On
			Endif	
			Log Cycles after correction: {ACycle_Cnt}, new Left edge HMS[{ACycle_Left}]
		Endif
	Endif
	
	DelayWrite StableCycCnt = {ACycle_Cnt}
	! Write stability so it can be saved to database for next test to use
	DelayWrite SSStart = HMS[{ACycle_Left}]
	DelayWrite SSEnd = HMS[{ACycle_Right}]
	DelayWrite SSLength = HMS[{ACycle_Total}]
	DelayWrite SSCabAvg = {PCab_Avg_On_Off}
	DelayWrite SSFrzAvg = {PFrez_Avg_On_Off}
	If {ACycle_Total_On_Off} >= (2*3600) Then						! Make sure we have enough time
		! Added 3/23/2011 - Create a STability report to show stability values and time period
		DelayWrite STFF Title Avg On Off Def Rec Group2		! Write Avg FF temps
		DelayWrite STFZ Title Avg On Off Def Rec Group1		! Write Avg FZ temps
		! If previous test 2 hour avg is available before defrost calculate test to test stability
		If {PPrevCabAvg} > -100 Then
			DelayWrite PrevFrzAvg = {PPrevFrzAvg}
			DelayWrite PrevCabAvg = {PPrevCabAvg}
			Math 2 {PValue1} = ABS[{PPrevCabAvg}-{PCab_Avg_On_Off}]		! Find the cab delta (prev test-current test)
			Math 2 {PValue2} = ABS[{PPrevFrzAvg}-{PFrez_Avg_On_Off}]		! Find the frez delta
			Math 2 {PValue} = MAX[{PValue1},{PValue2}]				! Find the largest 
			Math 3 {PValue3} = {PValue} / ({ACycle_Right}/3600)		! Divide by the number of hours
			If {AStable} < 1000 & {AStable_Total} > 0 Then
				Math 3 {Pvalue} = {AStable_Total}/3600		! Number of hours period 1 to period 2 to divide
				Math 3 {PValue} = {AStable}/{PValue}			! Calculate stability
			Else
				Set {PValue} = 1000
			Endif
			If {PValue3} < {PValue} Then		! See if this stable value is a better value than 7 hr method
				!Set {LValue} = Type B Stability Used CabAvgDiff:{PValue1} FrzAvgDiff:{PValue2} Stable Length HMS[{ACycle_Right}] StableValue: {PValue3}
				!Gosub AddComment
				DelayWrite SSType = Type B Stability Used
				DelayWrite TestStable = {PValue3}
				Log PrevTestNum:{PPrevTestNum}
				Set ? = {PPrevTestNum}
				DelayWrite SSLabel1 = Prev Test ?
!				DelayWrite SSStart1 = {QSSStart}	This occurs when query is execute in Save As.cmd
!				DelayWrite SSEnd1 = {QSSEnd}
!				DelayWrite SSLength1 = {QSSLength}
				DelayWrite SSCabAvg1 = {PPrevCabAvg}
				DelayWrite SSFrzAvg1 = {PPrevFrzAvg}
				DelayWrite SSLabel2 = This test
				DelayWrite SSStart2 = HMS[{ACycle_Left}]
				DelayWrite SSEnd2 = HMS[{ACycle_Right}]
				DelayWrite SSLength2 = HMS[{ACycle_Total}]
				DelayWrite SSCabAvg2 = {PCab_Avg_On_Off}
				DelayWrite SSFrzAvg2 = {PFrez_Avg_On_Off}
				DelayWrite SSBetween = Period HMS[{ACycle_Right}]
			Endif
		Endif
		If {AStable} < 1000 & {AStable_Total} > 0 Then
			Math 3 {Pvalue} = {AStable_Total}/3600		! Number of hours period 1 to period 2 to divide
			Math 4 {PValue} = {AStable}/{PValue}			! Calculate stability
		Else
			Set {PValue} = 1000
		Endif
		If ({PPrevCabAvg} > -100 & {PValue3} < {PValue}) Then ! Previous test available and using type
			Log Type B Stability Used: {PValue3} TypeA: {PValue} Period HMS[{ACycle_Right}]
			Set {LValue} = Type B Stability Used CabAvgDiff:{PValue1} FrzAvgDiff:{PValue2} Stable Length HMS[{ACycle_Right}] StableValue: {PValue3}
		Else											! Previous test availabe but not using type B or previous test not available
			Log Type A Stability Used: {PValue} TypeB:{PValue3} Period HMS[{AStable_Total}] {AStable}
			Error off		! Requires 9/26/2014 or newer version of RTS
			Set 2 {PValue} = 0
			Set 2 {PValue1} = 0
			Group 1 Stable 1 {PValue}			! Gets Group1 (Frz) Averge from Period 1
			Group 2 Stable 1 {PValue1}		! Gets Group2 (Cab) Averge from Period 1
			DelayWrite SSFrzAvg1 = {PValue}
			DelayWrite SSCabAvg1 = {PValue1}
			!Log Freezer Avg Period 1:{PValue} Period 2:{PValue1}
			Group 1 Stable 2 {PValue}
			Group 2 Stable 2 {PValue1}
			DelayWrite SSFrzAvg2 = {PValue}
			DelayWrite SSCabAvg2 = {PValue1}
			Log Cab Avg Period 1:{PValue} Period 2:{PValue1}
			Error on
			DelayWrite SSType = Type A Stability Used
			DelayWrite SSLabel1 = Period 1
			DelayWrite SSStart1 = HMS[{AStable0}]
			DelayWrite SSEnd1 = HMS[{AStable1}]
			Math 0 {Pvalue} = {AStable1} - {AStable0}
			DelayWrite SSLength1 = HMS[{PValue}]
			DelayWrite SSLabel2 = Period 2
			DelayWrite SSStart2 = HMS[{AStable2}]
			DelayWrite SSEnd2 = HMS[{AStable3}]
			Math 0 {Pvalue} = {AStable3} - {AStable2}
			DelayWrite SSLength2 = HMS[{PValue}]
			Math 0 {Pvalue} = {AStable2} - {AStable1}
			DelayWrite SSBetween = Period HMS[{AStable_Total}] Between HMS[{PValue}]
			DelayWrite SSPrevTest = Prev Test {PPrevTestNum}
			If {AStable} = 1001 | {AStable} = 1002 Then
				DelayWrite TestStable = Not enough time for stability Period 1
			ElseIf {AStable} = 1005 Then
				DelayWrite TestStable = Not enough time for stability Period between
			ElseIf {AStable} = 1006 Then
				DelayWrite TestStable = Defrost in stable period
			ElseIf {AStable} = 1007 Then
				DelayWrite TestStable = Not enough time for stability Period 2
			Else
				Math 3 {Pvalue} = ({AStable_Total})/3600		! Number of hours period 1 to period 2 to divide
				Math 3 {PValue} = {AStable}/{PValue}			! Calculate stability
				DelayWrite TestStable = {PValue}
			Endif
		Endif
	Else	! Invalid value
		DelayWrite StabFrzAvg = -998
		DelayWrite StabCabAvg = -998
	Endif
EndSub
		

