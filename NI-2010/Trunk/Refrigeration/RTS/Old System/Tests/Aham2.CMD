! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr          : Noload defrost for single defrost
!    File           : Aham.CMD
!    By             : Mark Hooks/Scott Hellmer
!    Date           : 20-Jun-95
!
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
!	12.0 SH 01/19/12 Fixed previous test number being stored in database
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
!	15.0 SH 04/01/15	Integration with CSA
!			Location now just location info, performancelab.lup now General.lup
!			General.pnt, Group.pnt, LimitsC.lup, LimitsF.lup
!			ProcInit.cmd, SetupResults replaces Save As.cmd
!			ProductID replaces EngNum
!			Added ProductInfo.set
!	15.1 SH 06/12/15	Compare Cycle B to Temp period instead of Cycle A
!						Added Product Height
!	15.2 SH 06/24/15	Support temp period after defrost, added better support for continuous tests
!	15.3 SH 06/29/15	Fix by cycling test detected as continuous
!	15.4 SH 07/13/15	Fix for Temp Period overlapping stable priod
!	15.5 SH 07/17/15	Fix for reporting Cycle A Cab and Frz Avgs
!						Fix for NA for Cycle End for continuous
!						Fix for Continuous run temp period after type B stable
!	15.6 SH 07/21/15	Fix for temp period after defrost, wrong value on report
!	15.7 SH 07/24/15	Fix reset for for temp period after defrost.  If in that mode and get a defrost, forget TPAD
!	15.8 SH 08/04/15	Fix for cycle A avg for Continuous products
!	15.9 SH 08/10/15	Fix for temp period not being called 'good' for seldomly-cycling products
!	16.0 SH 09/01/15	Fix for incorrect value being written for temp period end on report
!	16.1 SH 09/03/15	Added some debugging info to understand difference between report and TPDatabase values for cab and frz
!	16.2 SH 09/17/15	Fix for A type stability period checking for products that went from continuous to cycling
!	16.3 SH 10/8/15	Allow continuous run detection during stability if it's been 5 hours since a cycle
!	16.4 SH 10/12/15	Took out change above
!	16.5 SH 11/04/15	Multiple test, reset testtime, redo stability
!	16.6 SH 12/08/15	Added options to restart to get or not get stability
!	16.7 SH 01/12/16	Added Non-uniform cycling option where A and B cycles are 2 cycles
!	16.8 SH 07/05/17	Change non-standard ADC
!		
! ToDo
!	-Add Support for FrzAux
! 	-Commonize group numbers
! 	-Reconcile subroutines
!
!	Support start now or stable start
!-------------------------------------
!	Stable Start?
!	Y/N
!  Include Stabilization?
! 	Y/N
!	Help- Include stabilization in test result?

! 	Start options
!	1. Start Now
!	2. Start when Stable
!	3. Start at Next Defrost and Stable

!	Stop Options
!	1. Defrost
!
!	-Run Good CSA test
!	-Run Good Whirlpool test Aham2.	
!	-Deploy in India
!	-Deploy at Amana
!	-Deploy at CSA

Lookup Location
Lookup General

Set {LTestName}={LNoloadTestName}
Set {LTestType}=VE
Set {LTestTypeID} = 2
Include Rerun					! To support reruns
Include ProcInit

Set 1 {PVersion} = 16.8
Error Off
Set 4 {PCab} = {PCab}
Set 4 {PFrez} = {PFrez}
If {SCabAuxVolume} > 0 Then	! Load Aux Fresh food group if needed
	Point CabAux
	! Check for cab aux group defined
	If {PCabAux} > -998 Then
	Else
		Prompt YesNo Fresh Food Aux group not defined.  Press Yes to abort.
		Begin
			If {APrompt} = 6 Then
				Leave
			ElseIf {APrompt} = 7 Then
				Status Gray Test Aborted
				Halt			
			Endif
		Loop
	Endif
Endif
If {SFrzAuxVolume} > 0 Then	! Load Aux Freezer group if needed
	Point FrzAux
Endif
Error on

Set 0 {PMessIndex} = 0
If {ASim} = 0 Then
	Status Blue Starting {LTestName} Test v{PVersion} Voltage S.P. {SVoltSet#}
	Log Starting {LTestName} Test v{PVersion} Voltage S.P. {SVoltSet#} {ADate} {ATime}
EndIf

!
! ***************Check Setup Values
!
If "{SStopCond}" = "" Then
	Status Red Please enter Stop Conditions.  If you don't see Stop Conditions then re-select the test
	goto TestEnd
EndIf
Error Off
If {SNonUniform} > -998 then			! Move back one more cycle
Else
	Status Red Please Refresh test setup by selecting another test and then this one
	Prompt OK Please Refresh test setup by selecting another test and then this one
	Begin
		If {APrompt} = 1 Then
			Leave
		ElseIf {APrompt} = 7 Then
			Status Gray Test Aborted
			Halt			
		Endif
	Loop
	Halt
Endif
Error on
If "{SOperator}" = "" Then
	Status Red Please log into RTS and restart test
	goto TestEnd
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
If "{SStableStart}" = "Y"
	Set {SStableStart} = Yes,Check 7 hr period for stability
Endif
Include ADCSetup	! Range checking for ADC calculation parameters
Set {SDefrCnt} = Now,-1
Set {SStopCond} = After Recovery,3
If ("{SOneTest}"="No") & {STestCnt} = 1 & {ASim} = 0 Then
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
Set 0 {Pvalue} = 0
Set 0 {PStartCond} = 0
DelayWrite LastTest = NA
Transfer Interval 60
Cycle Marker

Interval InterCmds
! -- Return to here for multiple tests
Label Restart
Trend Clear
Plot Clear
DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]
Point Fifo Interval 300 Size 1	! Set up fifo for readings, every 5 minsecs.  Used for continous run stabilization

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
Set 4 {PTypeBStable} = 1000
Set 4 {PTypeAStable} = 1000
Set 0 {PTPAfterDef} = 0			! Flag for getting temp period after defrost
Set 0 {PTPStart} = -1
Stable {SStableGrp_Right}

If {ASim} Then     ! Enter stabilization from last test (only for reruns)
	Error off
	DelayWrite StartStable = {SLoadTime}		! Write this value now, at end of test, compare to type B stability
	DelayWrite PreviousTestNum = {PPrevTestNum}	! Store for writing later
	Error on
Else
	Set 2 {PPrevCabAvg} = -100
	Set 2 {PPrevFrzAvg} = -100
Endif

Clear All		! This causes {Astate} = {AState_last} for {ASim} tests
If {SDefrCnt_Right} > 1 Then
	Log Waiting for {SDefrCnt_Right} defrosts
	Status Yellow Waiting for defrost to start
Endif
Set {PValue} = 0
Include Database Setup
Log Starting {LTestName} Energy Test v{PVersion}

Label GetTempPer2
Set 0 {PTPAfterDef} = 0					! Flag to get Temp period after defrost
! Wait for stability if required
If "LEFT[{SStableStart_Left},3]" = "Yes" Then	! Yes and Yes1
	Status Blue {LTestName} v{PVersion}- Checking for Stability
	Begin
		! -- Check for product state change
		If {AState} <> {AState_Last} & {PStartCond} <> 2 Then
			Math 0 {PActualCycle}= {ATotalCycle}-{POldCycle}	! Calculate cycles since defrost
			! -- Typical cycles cycle data --
			! This sets the left boundary for the temp period
			If ({PActualCycle} = 2) Then
				If {AState} = 1 & {AState_Last} = 2 Then
					Set {PCycTime} = {ATestTime}
					Cycle Start Before {ATestTime}
					Cycle Interval 0        ! If it cycled then turn off 15 minute saves
					Set {PContRun} = 0
				Endif
			Endif
			Gosub LocateTPEnd
			Gosub LocateTPStart
			! -- Check for product Stable --
			Gosub ProcStability
			If {PStartCond} <> 2 Then				! Product became stable right before defrost
				Set {PTPStart} = {ACycle_Right}		
				Gosub ProcStability
				If {PStartCond} = 2 Then				! Product became stable right before defrost
					Set {PCycTime} = {ATestTime}		! This makes sure that the temp period doesn't start before defrost
				Endif
			Endif
			!If {AState} = 1 Then
			!	Set {PLastOffTime} = {ATestTime}
			!Endif
		Endif
		
		! -- Continuous run product with at least 10 hrs (3 hrs tp + 7 hrs stable)
		If {PContRun} =1 & {PStartCond} <> 2 & ({ATestTime}-{PDefHeatStart}) > 36000 Then
			Gosub LocateTPEnd
			Gosub LocateTPStart
			! -- Check for product Stable --
			Gosub ProcStability
		Endif
		! Allow operator to force stability
		If "{SStableStart_Left}" = "Force" Then
			Set {SStableStart} = Yes
			Log Operator forced stable start
			Status Blue Operator forced stable start
			Leave
		Endif

		! If continously-running product, add markers to cycle db
		If {PContRun}=0 & ({ATestTime}-{PDefHeatStart}) > 10800 & {PActualCycle}=0  Then
			Status Blue {LTestName} v{PVersion}- Checking for Stability - Continuous run
			! Log PActCyc:{PActualCycle} DefFlat:{PDefFlag}			
			Cycle Interval 300        ! Put a marker in database every 5 min
			Log Continuous run, adding markers, temp period started DefFlg:{PDefFlag} ActCyc:{PActualCycle} TotCyc:{ATotalCycle}
			Cycle Marker        ! Put a marker in database
			Set {PContRun} =1
			Error Off
			If {ASystemRev} >= 3.923 then
				Stable Cont Y		! Tell RTS to use continuous mode for stable
			Endif
			Error On
		Endif
		! Added 2nd way to do continuous run mode
		! If {PContRun} = 0 & ({ATestTime} - {PLastOffTime} > 18000) & {PActualCycle} < 2 Then
	        ! Cycle Interval 300        ! Put a marker in database every 5 min
	        ! Log Continuous run II, adding markers MATH[{ATestTime} - {PLastOffTime}] > 10800) & {PActualCycle} < 2
	        ! Set {PContRun} = 1
			! Error Off
			! If {ASystemRev} >= 3.923 then
				! Stable Cont Y		! Tell RTS to use continuous mode for stable
			! Endif
			! Error On
		! Endif
		! If product cycles turn off continuous mode
		If {PContRun} & {PActualCycle} >= 1 & {AState_last} = 1 & {AState} = 2 Then  
			Status Blue {LTestName} v{PVersion}- Checking for Stability - cycling
			Set {PContRun} = 0
			Log Product cycled, no more markers ActCyc:{PActualCycle}
			Cycle Interval 0        ! If it cycled then turn off 15 minute saves
			Stable Cont N		! Tell RTS to not use continuous mode for stable
		Endif

		! Check for defrost
		If {AState} = 4 Then
			If {AState} <> {AState_Last} Then
				Log Product defrosted - Stable {AStable} period HMS[{AStable_Total}] {PStartCond}
				Set 0 {PDefHeatStart} = {ATestTime}
				Math 0 {PActualCycle}={ATotalCycle}-{POldCycle}
				Set 0 {PLastCycle} = {PActualCycle}		! Store number of cycles in last defrost to defrost period
				!Log LastCyc:{PLastCycle} ActCyc:{PActualCycle} OldCyc:{POldCycle} ActCyc:{ATotalCycle}		! Store number of cycles in last defrost to defrost period
				Set 0 {POldCycle}={ATotalCycle}			! Used for calculations for cycles after defrost
				If {PStartCond} <> 2 Then					! Check for stability right before defrost
					! On defrost, check stability before defrost, if good, then TP will be after recovery
					Gosub LocateTPEnd			
					Stable Calc {ACycle_Right}				! Check type A stability right before defrost (no temp period skip)
					Set {PTPStart} = {ACycle_Right}		
					Gosub ProcStability
					Log Before defrost stability check {PTypeAStable} {PTypeBStable} {PStartCond} {LAhamStable}

					If {PStartCond} = 2 Then				! Product became stable right before defrost
						Set {PCycTime} = {ATestTime}		! This makes sure that the temp period doesn't start before defrost
						Set {PTPAfterDef} = 1				! Flag to get Temp period after defrost
						Log Didn't get temp period before defrost, so getting after defrost
					Endif
				Endif
			Endif		
		Endif
		! -- Test is ready to start
		If {PStartCond} = 2 Then
			If {AState} = 4 Then
				Status Green Stability achieved, product defrosted
			Else
				Status Green Stability achieved
			Endif
			Leave
		Endif
	Loop
Else
	Status Green {LTestName} Energy Test in progress
Endif

Error Off
If {SCabAuxVolume} > 0 Then
	Set {LValue} = Calculating Cab Avg. Cab Volume: {SCabVolume} Cab Aux Volume: {SCabAuxVolume}
	Gosub AddComment
Endif
If {SFrzAuxVolume} > 0 Then
	Set {LValue} = Calculating Frz Avg. Frz Volume: {SFrzVolume} Frz Aux Volume: {SFrzAuxVolume}
	Gosub AddComment
Endif
Error On
DelayWrite StartPeriod = HMS[{AStable_TOtal}]
DelayWrite Version = Aham v{PVersion}
If "LEFT[{SStableStart_Left},3]" = "Yes" Then	! Yes and Yes1
	Log Stable value = {AStable} Period = HMS[{AStable_TOtal}]
Else
	Log Test start stable bypassed
Endif
Transfer Interval 50
DelayWrite AToutLen = HMS[{ATestTime}]
If ("{SOneTest}"="No") Then
	Log Clearing everything.
	Clear Start
	Cycle Clear
	Plot Clear
	Trend Clear
Endif
Log {LTestName} Energy Test in progress, stability achieved {AState} {AState_Last} {PTPAfterDef}

Set {PStartTime} = {ATestTime}
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
Set 0 {PTotal} = 0
Set 0 {PDefRec} = 0
Set 1 {PValue} = 0
Set 0 {PDefEnd} = 0
Set 0 {PStop} = 0
Set 0 {PDefStart} = 0
Set 0 {PADCycCnt} = 0	! After Defrost CYCle Count, index will start at 200
Stable {SStableGrp_Right}
Set 0 {PContRun} = 0
DelayWrite SaveAnnot3 = 1;1;1;1		! Just in case cycle B is not found


! --------------------- Main test loop -----------------------

Begin

	! -- Check for Setup changes
    If {ASettings} Then				  
		Include WideCommand		!Check to see if a Wide command has been requested
    Endif

	Math 0 {PActualCycle}= {ATotalCycle}-{POldCycle}	! Calculate cycles since defrost

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
				!Log ActCyc:{PActualCycle} LastCyce:{PLastCycle} OldCyc:{POldCycle} StabFrz:{PStabFrzAvg} TPStart:HMS[{PTPStart}] TPEnd:HMS[{PTPEnd}]
			Endif
			! Determine which cycle should be the recovery one										
			If {PLastCycle} = 2 Then	! Only cycled once last period
				Set 0 {PValue} = 1		! Seldom-cycling product so only need one cycle to stop
			Else ! Skip the defrost cycle in the report
				Set 0 {PValue} = 2
			Endif
		    If ({PActualCycle} >= {PValue} & {AState} = 1 & {AState_last} <> 1 & {PTPStart} > -1) Then		! Cycling product
			
				Cycle End After {ATestTime}
!				Log Stab Start HMS[{ATestTime}] 
				Cycle Start Before {ATestTime} On
!				Log Stab1 End HMS[{ACycle_Left}] Cab:{PCab_Avg_On_Off_Def_Rec} Frz:{PFrez_Avg_On_Off_Def_Rec} SCab: {PStabCabAvg} SFrz:{PStabFrzAvg}  
				Cycle Start Before {ACycle_Left} Off
				If "{SNonUniform}" = "Yes" then			! Move back one more cycle
					Cycle Start Before {ACycle_Left} On
					Cycle Start Before {ACycle_Left} Off
				Endif
				If {SCabAuxVolume} > 0 Then
					Set 2 {PRunCabAvg} = {PCabCalc_Avg_On_Off_Def_Rec}
				Else
					Set 2 {PRunCabAvg} = {PCab_Avg_On_Off_Def_Rec}
				Endif
				If {SFrzAuxVolume} > 0 Then
					Set 2 {PRunFrzAvg} = {PFrzCalc_Avg_On_Off_Def_Rec}
				Else
					Set 2 {PRunFrzAvg} = {PFrez_Avg_On_Off_Def_Rec}
				Endif
				Trend Annotation 9,0;{ACycle_Left};{PCab};0;BStart
				Trend Annotation 10,0;{ACycle_Right};{PCab};0;BEnd

				Log Stable Detail: End HMS[{ACycle_Left}] CabAvg:{PRunCabAvg} FrzAvg:{PRunFrzAvg} TPCab: {RTCabAvg} TPFrz:{RTFrzAvg}
				Math 2 {PValue1} = ABS[{PRunCabAvg}-{RTCabAvg}]		! Compare B Cycle to Temp period
				Math 2 {PValue2} = ABS[{PRunFrzAvg}-{RTFrzAvg}]
				Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
!				Add a line in the report for each cycle showing the start and end times
!				Limit to 20 cycles and make sure the last 'good' one gets captured
				If {PADCycCnt} < 19 | {PValue} <= {Lout5} Then	
					Math 0 {PADCycCnt} = {PADCycCnt} + 1
					Set ? = {PADCycCnt}
					DelayWrite SDif? = {PValue}
					DelayWrite SFF? = {PRunCabAvg}
					DelayWrite SFZ? = {PRunFrzAvg}
					DelayWrite SS? = HMS[{ACycle_Left}]
					DelayWrite SE? = HMS[{ACycle_Right}]
					DelayWrite SL? = HMS[{ACycle_Total}]
				Endif
				If {PValue} > {Lout5} Then
		    		Set {LValue} = Product cycled after defrost but not recovered. Fresh Food diff:{PValue1} Frz diff:{PValue2} ?
					Status Blue {LValue}
					Log {LValue}
					DelayWrite S? = Cycle ?
		    	Elseif {PCycleB} = 0 Then		! Achieved initial Recovery					
					If "{SNonUniform}" = "Yes" then			! Move back one more cycle
						Set 0 {PCycleB} = 1			! Now get cycle B 2 cycles
					Else
						Set 0 {PCycleB} = 2			! Now get cycle B	1 cycles
					Endif		
					DelayWrite S? = Cycle ?
		    		Set {LValue} = Product cycled after defrost and recovered. Fresh Food diff:{PValue1} Frz diff:{PValue2} ?
					Trend Annotation 4,0;{ATestTime};0;0;DREnd
					Log {LValue}
					Status Green {LTestName} - Initial Recovery completed- recording Cycle B
		    	Elseif {PCycleB} = 1 Then		! Achieved initial Recovery					
					Set 0 {PCycleB} = 2			! Now get cycle B	1 cycles
		    	Elseif {PCycleB} = 2 Then		! Recording cycle B
					DelayWrite S? = After Defrost (B)
		    		Set {LValue} = Recorded cycle B after recovery. Fresh Food diff:{PValue1} Frz diff:{PValue2} ?
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
					DelayWrite SaveAnnot3 = 0;{ACycle_Left};{PRunCabAvg};8;B;WATT;{ACycle_Right}	! Write marker annot for Plot
					Status Green {LTestName} - Recovery completed
					Gosub ProcDefEnd
				    Log 2014 Cycling DefFlag:{PDefFlag} DefEnd:{PDefEnd} TotCyc:{PActualCycle}
					If {PTPAfterDef} = 1 Then		! Don't leave now, get a TP after def, not used after 6/18
						Set {PTPAfterDef} = 2
					ElseIf {SStopCond_Right} >= 3 & {PDefStart} > 0 Then				! Using 2nd defrost, so end test
			        	Leave
			        Endif
				Endif	    	
			!      No cycles before def  No cycles after    Valid Frz avg            1.75 hours from defrost                                   
		    Elseif ({PLastCycle} <=1 & {PActualCycle} <= 1 & {PStabFrzAvg} > -100 & ({ATestTime}-{PDefHeatStart})>6300) Then 
				! See if product is within spec
				Math 2 {PValue1} = ABS[{PRunCabAvg}-{RTCabAvg}]		! Compare B Cycle to Temp period
				Math 2 {PValue2} = ABS[{PRunFrzAvg}-{RTFrzAvg}]
				Math 2 {PValue} = MAX[{PValue1},{PValue2}]
		    	! Log {RStableCycCnt} {PLastCycle} {PActualCycle} {ATestTime} {PDefHeatStart} {PValue1} {PValue2}
				! Check for temperatures back in      and for some measure of stability.  Cass 131810
				! Without the Variation check, the temps could swing through a good zone but not be stable
		    	If (MAX[{PValue1},{PValue2}] < {Lout5} & {PFrzVariation} < ({Lout5}*5) & {PCabVariation} < ({Lout5}*5)) Then		! Continous run, minumum of 60 minute defr and rec
					Math 0 {PADCycCnt} = {PADCycCnt} + 1
					Set ? = {PADCycCnt}
					DelayWrite S? = After defrost
					DelayWrite SDif? = {PValue}
					DelayWrite SFF? = {PRunCabAvg}
					DelayWrite SFZ? = {PRunFrzAvg}
					DelayWrite SS? = NA
					DelayWrite SE? = HMS[{ATestTime}]
					DelayWrite SL? = NA

					DelayWrite SaveAnnot3 = 0;{ATestTime};{PRunCabAvg};2;B;WATT;	! Write marker annot for Plot
					Cycle Marker
					Status Green {LTestName} - Recovery completed Cont 2014
					! Write Stabilization values
					DelayWrite RunCabAvg = {PRunCabAvg}
					DelayWrite RunFrzAvg = {PRunFrzAvg}
!					DelayWrite StabCabAvg = {PStabContCabAvg}
!					DelayWrite StabFrzAvg = {PStabContFrzAvg}
			        Gosub ProcDefEnd
					If {PTPAfterDef} = 1 Then		! Don't leave now, get a TP after def
						Set {PTPAfterDef} = 2
			        ElseIf {SStopCond_Right} >= 3 & {PDefStart} > 0 Then				! Using 2nd defrost, so end test
					    Log 2014 Cont DefFlag:{PDefFlag} DefEnd:{PDefEnd} TotCyc:{PActualCycle} LastCycle:{PLastCycle} DefStart:HMS[{PDefStart}] DefHeatStart: HMS[{PDefHeatStart}]
			        	Leave
			        Endif
			    Elseif ((({ATestime}-{PDefTime})%60)=0) Then							! Show message every 60 minutes
		    		Set {LValue} = Product not recovered. Continuous run. Fresh Food diff:{PValue1} Freezer diff:{PValue2}
					Status Blue {LValue}
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
				If {PTPAfterDef} = 1 Then		! Don't leave now, get a TP after def
					Set {PTPAfterDef} = 2
		        ElseIf {SStopCond_Right} >= 3 & {PDefStart} > 0 Then				! Using 2nd defrost, so end test
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
		Log PActCyc:{PActualCycle} HMS[{PDefHeatStart}] 	    
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
				If {PTPAfterDef} = 2 Then			! If 2 then we were looking for a temp period after recovery so reset
					Set 0 {PTPAfterDef} = 0		! So reset flag
				Endif
				If {PTPAfterDef} = 1 Then				! Flag to get Temp period after defrost
					 Status Green Waiting for Defrost Recovery and Temp Period to end test        
					 Log Waiting for Defrost Recovery and Temp Period to end test        
				Else
					Status Green Waiting for Defrost Recovery to end test        
					Log Waiting for Defrost Recovery to end test {PTPAfterDef}
				Endif
			    !Log DefFlag = {PDefFlag} DefEnd = {PDefEnd} TotCyc={PActualCycle} TestTime = Math[{ATestTime}-{PDefStart}]
				!Reset cycle history
				For 1 to {PADCycCnt}
					DelayWrite S? = -999
					DelayWrite SDif? = -999
					DelayWrite SFF? = -999
					DelayWrite SFZ? = -999
					DelayWrite SS? = -999
					DelayWrite SE? = -999
					DelayWrite SL? = -999
				Next
				Set 0 {PADCycCnt} = 0
				
            Else
				Gosub ProcPowerPer		! Process Power Period info, test runs from defrost to defrost
	        	Error On
            	Leave
            Endif
		ElseIf {SStopCond_Right} <= 2 & {AState_Last} <> 4 & {PDefFlag} = 0 & {ASim} = 0 Then	! Test has only been running 60 minutes, so scrap old data and start at this defrost
			Log Quick Defrost in test, discarding initial data
			Goto Restart
		Endif
    	Set 0 {PDefFlag} = 1		! Don't show recovery if no defrost, defrost bimetal          
    Endif
	     
! Waiting for a temperature period after defrost
	If {PTPAfterDef} = 2 Then		! 
		If {PContRun} = 1 Then 	! Continuous run
			Cycle End Before {ATestTime}	! TPEnd is current time
			Set 0 {PTPEnd} = {ACycle_Right}	
			Gosub LocateTPStart
			Log Cont End TP check: HMS[{ACycle_Left}] to HMS[{ACycle_Right}] DEnd HMS[{PDefEnd}]
			! If good temp period then end
			If {ACycle_Left} > {PDefEnd} Then
				Gosub ProcTempPeriod
				! See if 0.5 limits are still met and update differences from A and B to temp period
				!Reprocess A cycle with new period
				Math 2 {PValue1} = ABS[{RTCabAvg}-{PStabCabAvg}]	! Compare pre-defrost period to temp period
				Math 2 {PValue2} = ABS[{RTFrzAvg}-{PStabFrzAvg}]
				Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
				Log Cont End TP check: {PValue} HMS[{ACycle_Left}] to HMS[{ACycle_Right}] DEnd HMS[{PDefEnd}]
				If {PValue} < {LOut5} Then	! Good A period, check B period
				!Reprocess B cycle with new period
					Set ? = {PADCycCnt}
					Math 2 {PValue1} = ABS[{RSFF?}-{RTCabAvg}]		! Compare B Cycle to Temp period
					Math 2 {PValue2} = ABS[{RSFZ?}-{RTFrzAvg}]
					Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
					If {PValue} <= {Lout5} Then
						DelayWrite SDif? = {PValue}
						Leave
					Endif
				Endif					
				Goto GetTempPer2	!Temp period wasn't < 0.5 with A and B, so make test hit another defrost
			Endif
		ElseIf {AState} <> {AState_Last} Then	! Cycling
			Trend Annotation 4,0;{PDefEnd};0;0;DREnd
			Math 0 {PActualCycle}= {ATotalCycle}-{POldCycle}	! Calculate cycles since defrost
			! -- Typical cycles cycle data --
			! This sets the left boundary for the temp period
			If ({PActualCycle} = 2) Then
				If {AState} = 1 & {AState_Last} = 2 Then
					Set {PCycTime} = {ATestTime}
					Cycle Start Before {ATestTime}
					Cycle Interval 0        	! If it cycled then turn off 15 minute saves
					Set {PContRun} = 0
				Endif
			Endif

			Gosub LocateTPEnd
			Gosub LocateTPStart
			! If good temp period then end
			If {ACycle_Left} > {PDefEnd} Then
				! See if 0.5 limits are still met and update differnces from A and B to temp period
				!Reprocess A cycle with new period
				Gosub Proc2014Stable
				Gosub ProcTempPeriod
				If {PValue} < {LOut5} Then	! Good A period, check B period
				!Reprocess B cycle with new period
					Log TPAD: Cycle A stable with TP.  Diff: {PValue}
					Set ? = {PADCycCnt}
					Math 2 {PValue1} = ABS[{RSFF?}-{RTCabAvg}]		! Compare B Cycle to Temp period
					Math 2 {PValue2} = ABS[{RSFZ?}-{RTFrzAvg}]
					Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
					If {PValue} <= {Lout5} Then
						DelayWrite SDif? = {PValue}
						Leave
					Endif
				Endif					
				Log TPAD: Cycle A not stable with TP.  Diff: {PValue}
				Goto GetTempPer2	!Temp period wasn't < 0.5 with A and B, so make test hit another defrost
				Status Green Waiting for defrost and rec to end test. Temp Period after defrost not stable
			Else
				Log Waiting for Temp Period to end test, TP Start overlaps Defrost end
			Endif
			Math {PValue} = ({SExtTempPeriod_Right}*3600-{ACycle_Total})
			Math {PValue2} = {PDefend} - {ACycle_Left}
			Math {PValue} = MAX[{PValue}, {PValue2}]
			If {PValue} > 0 Then
				Status Green Waiting for Temp Period to end test.  Approx HMS[{PValue}]
			EndIf
		Endif	
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
	If "{LCompany}" = "CSA" Then
		Status Grey {LTestName} Test Complete TN:{ARevision}
	Else
		Status Grey {LTestName} Test Complete TN:{STestNumber}
	Endif
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

! Note non-standard values
Set {LValue} = ADC Max Defrost value (CTm): {SADCMaxDefr}
Gosub AddComment
 
					  
Set {LValue} = ADC Min Defrost value (CTl): {SADCMinDefr}
Gosub AddComment

If "{SNonUniform}" ="Yes" Then
	Set {LValue} = 2 Cycles used for Cycle A and B
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

! At end of test, don't want annotations like during the test
DelayWrite ANNOT0 = {RSaveAnnot0}		! Uses bar format for Steady state
DelayWrite ANNOT1 = {RSaveAnnot1}
DelayWrite ANNOT2 = {RSaveAnnot2}		! Cycle A - Before Defrost
DelayWrite ANNOT3 = {RSaveAnnot3}		! Cycle B - After Defrost
DelayWrite ANNOT4 = 1;1;1;1	! Delete	DR End
DelayWrite ANNOT5 = 1;1;1;1	! Delete
DelayWrite ANNOT6 = 1;1;1;1	! Delete
DelayWrite ANNOT7 = 1;1;1;1	! Delete
DelayWrite ANNOT8 = 1;1;1;1	! Delete
DelayWrite ANNOT9 = 1;1;1;1	! Delete
DelayWrite ANNOT10 = 1;1;1;1	! Delete

Include Database Save
// If ProdID changes during test, then reflect this
// -1 tells save as to just change lookup value
Set {Pvalue} = -1
Include SetupResults

Result Report {SResultReport}

! -- Check for repeating test --
If ({AMode} = 2 & {STestCnt} > 1) Then
    Set 0 {PPrevTestNum}= {ARevision}			! Save test number so next test has previous test num
    Set 2 {PValue1}= {RTestStable}			! Save stability from this test for next time
    Math 0 {STestCnt} = {STestCnt} -1		! Decrement test count
    Result Close
    Trend Clear
    Revision
	Set {PValue} = 1						! Trigger new csv and txt file in Save As
    Include SetupResults
	Include Database Setup
    Result Report {SResultReport}

	If {SStopCond_Right} > 2 Then
    	Set {PDefFlag} = 0		! If running from recovery to recovery, then defrost didn't just happen
	Endif

	Set 0 {PMessIndex} = 0
	Set 0 {POldCycle} = 0		! Total number of cycles from start of test to current defrost
	Set 0 {PLastCycle} = 0		! Total number of cycles from the last defrost to defrost period
	Set 0 {PDefHeatStart} = 0

	If ("{SOneTest}"="No") Then
		Log Test Number from previous test saved as {PRevision}
		DelayWrite PreviousTestNum = {PPrevTestNum}	! Store for writing later
		DelayWrite StartStable = Last Test Stability:{PValue1}		! Write this value now, at end of test, compare to type B stability
	Endif
	Clear Start
	Cycle Clear
	If "{SStableStart_Left}" = "Yes" Then	! Not Yes1 - Don't get stability
		Set {PStartCond} = 0
	Endif
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
	!Log LastCyc:{PLastCycle} ActCyc:{PActualCycle} OldCyc:{POldCycle} ActCyc:{ATotalCycle}		! Store number of cycles in last defrost to defrost period
	Set 0 {POldCycle}={ATotalCycle}			! Used for calculations for cycles after defrost
	Set 0 {PCycleB} = 0			! Reset Cycle B flag

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
	
	Gosub LocateTPEnd
	Gosub LocateTPStart
	Gosub Proc2014Stable	! 2014 stability before and after defrost
	Gosub ProcTempPeriod	! Store temp period info
	Log Temp Period Start HMS[{ACycle_Left}] End HMS[{ACycle_Right}] ContRun: {PContRun}

	Set {PCycTime} = 0						! Reset typical cycles time for next defrost
EndSub
! Process Tempeature Period Information
Sub ProcTempPeriod
	Cycle Start Before {PTPStart}  
	Cycle End After {PTPEnd} 		
	Log ProcTempPeriod ACL:HMS[{ACycle_Left}],ACR:HMS[{ACycle_Right}],HMS[{PTPStart}],ACR:HMS[{PTPEnd}]
! --------------------Write Temp period info-----------------
	DelayWrite TEnd = HMS[{ACycle_Right}]
	DelayWrite TStart = HMS[{ACycle_Left}]
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
	DelayWrite TMinutesOff = {PValue}
	Math 1 {PValue} = {Acycle_Avg_On} / 60
	DelayWrite TMinutesOn = {PValue}
	
	Set {PTotal} = {ACycle_Total_On_Off}
	Set 0 {PADCT1} = {PTotal}
	
	DelayWrite TCycles = {ACycle_Cnt}
	Math {PCyc1Hr} = {ACycle_Cnt} / ({PTotal} / 3600)
	Math {PCyc4Hr} = {ACycle_Cnt} / ({PTotal} / 14400)
	Math {PCyc24Hr} = {ACycle_Cnt} / ({PTotal} / 86400)
	DelayWrite TCyc1Hr = {PCyc1Hr}
	DelayWrite TCyc4Hr = {PCyc4Hr}
	DelayWrite TCyc24Hr = {PCyc24Hr}
	DelayWrite TTotal = HMS[{PTotal}]
	Math 0 {PValue} = {PTotal}/60
	DelayWrite TTotalMin = {PValue}
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
	Set 4 {PADCEP1} = {AWhr}
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
	Include TPDatabase
	Log TPDatabase called Cab Avg {RTCabAvg} {PCab_Avg_On_Off_Def_Rec} {PCabCalc_Avg_On_Off_Def_Rec} Frz Avg {RTFrzAvg} {PFrez_Avg_On_Off_Def_Rec} {PFrzCalc_Avg_On_Off_Def_Rec}
	! -- Temp period all points --
	DelayWrite TP Avg On
	DelayWrite TR MaxM MinM Avg On Off
	
	! -- Stable report information
	DelayWrite B Title Group3		!Ambient TCs
	DelayWrite AmbTP MaxM MinM Avg On Off Group3		!Ambient TCs

	DelayWrite TVolt = {PVolt_Avg_On_Off}
	DelayWrite TLeftAmb = {PAmbLeft_Avg_On_Off}
	DelayWrite TRightAmb = {PAmbRight_Avg_On_Off}
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
EndSub
! Given the endtime in {ACycle_Right}, find the TP Start
! Also updates all Temp period variables
! Added 10/2014 'cause the temp period can change dynamically

! --------------------- Locate the Temp period -----------------------
Sub LocateTPEnd
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
	! 2014 and 2001 Electrolux waiver allows the off period before defrost to be used in ADC calculations
	Else 	! "{SAhamStandard}" = "2001 EW") or "2014"
		! Find Defrost period start which is temp period end
		! Defrost includes cycle before defrost if cycling product
		If {PContRun} = 0 Then
			Cycle End Before {ATestTime} Off
!			Log TPEnd1{AState_Last} HMS[{ACycle_Right}]
			Cycle End Before {ACycle_Right} On
!			Log TPEnd2{AState_Last} HMS[{ACycle_Right}]

			If {PTPAfterDef} < 2 then
				Set {PDefStart} = {ACycle_Right}				! Store defrost start if not getting TP after defrost
				DelayWrite DebugELW = Prev Def Start:HMS[{ATestTime}], New Def Start:HMS[{ACycle_Right}] {AState} {AState_Last} TP End:HMS[{ACycle_Right}]
			Endif
		Else	! Continous run
			If {AState_Last} = 1 Then		! If last state was off, then back up to run time
				Cycle End Before {ATestTime} On
				If {PTPAfterDef} < 2 then
					Set {PDefStart} = {ACycle_Right}				! Store defrost start
				Endif
				! Log TPEnd {AState_Last} HMS[{ACycle_Right}] Cont
			Else
				Cycle End Before {ATestTime}
			Endif
		Endif
	Endif
	Set 0 {PTPEnd} = {ACycle_Right}	
	!Log TP End: HMS[{ACycle_Right}]
EndSub
Sub LocateTPStart
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
	
	!Log HMS[{ACycle_Left}] >= HMS[{PCycTime}] & HMS[{ACycle_Right}] - HMS[{PCycTime}] > 10800	! Valid new temp period 
	If {ACycle_Left} >= {PCycTime} & ({ACycle_Right} - {PCycTime}) > 10800 Then	! Valid new temp period 
		! Special check if getting temp period after defrost
		If {PTPAfterDef} = 2 & {ACycle_Left} < {PDefEnd} then			
			Set {PTPStart} = -1	! Not a valid temp period
			Return	! Temp period overlaps defrost recovery so not good
		Endif
		Set {PTPStart} = {ACycle_Left}	! We have a TPStart on the correct cycle transition	
		Set {PTempPeriod} = {ACycle_Total_On_Off} 	! Find temp period length
		! Get CabAvg from Temp period
		If {SCabAuxVolume} > 0 Then
			DelayWrite TCabAvg = {PCabCalc_Avg_On_Off_Def_Rec}
		Else
			DelayWrite TCabAvg = {PCab_Avg_On_Off_Def_Rec}
		Endif
		! Get FrzAvg from Temp period
		If {SFrzAuxVolume} > 0 Then
			DelayWrite TFrzAvg = {PFrzCalc_Avg_On_Off_Def_Rec}
		Else
			DelayWrite TFrzAvg = {PFrez_Avg_On_Off_Def_Rec}
		Endif
		If {PTypeAStable} < {LAhamStable} Then
!			Log HMS[{PTPStart}] < HMS[{RSSAEndTime}]
			If {PTPStart} < {RSSAEndTime} Then
				Log Temp Period Start HMS[{ACycle_Left}] overlaps with stable HMS[{AStable3}]
				Set {PTPAfterDef} = 1				! Flag to get Temp period after defrost
				!Set {PTPStart} = -1				! Not a valid temp period. If we do this then test doesn't check for recovery after defrost and tp after defrost
			Else
				Log Temp Period Start HMS[{ACycle_Left}] is good
				If {PTPAfterDef} <> 2 Then 
					Set {PTPAfterDef} = 0				! Reset Flag if not actively looking for a temp period after defrost
				Endif
				!Log Good temp period		
				Trend Annotation 5,0;{ACycle_Left};{PCab};0;TPStart
				Trend Annotation 6,0;{ACycle_Right};{PCab};0;TPEnd
			Endif
		ElseIf {PTypeBStable} < {LAhamStable} Then
			Log HMS[{PTPStart}] < HMS[{RSSBEndTime}]
			If {PTPStart} < {RSSBEndTime} Then
				Log Temp Period Start HMS[{ACycle_Left}] overlaps with stable HMS[{AStable3}]
				Set {PTPAfterDef} = 1				! Flag to get Temp period after defrost
				!Set {PTPStart} = -1				! Not a valid temp period. If we do this then test doesn't check for recovery after defrost and tp after defrost
			Else
				Log Temp Period Start HMS[{ACycle_Left}] is good
				Set {PTPAfterDef} = 0				! Reset Flag
				!Log Good temp period		
				Trend Annotation 5,0;{ACycle_Left};{PCab};0;TPStart
				Trend Annotation 6,0;{ACycle_Right};{PCab};0;TPEnd
			Endif
		Endif
	Else
		Set {PTPStart} = -1	! Not a valid temp period
		!Log Unable to find valid temp period		
	Endif
!	Log TP Start: HMS[{ACycle_Left}]

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

	Log ProcDefEnd ?
	If ? >= 1 & {PContRun} = 0 Then	! Defrost stops before stable cycle if cycling
		Cycle End before {ACycle_Left}
	Else
		Cycle End after {ATestTime}
	Endif
    Set {PDefEnd} = {ACycle_Right}
    Cycle Start Before {PDefStart}
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
    DelayWrite DTotal = HMS[{ACycle_Total}]
    Set 0 {PADCT2} = {Acycle_Total}
	Math 0 {PValue} = {ACycle_Total}/60
	DelayWrite DTotalMin = {PValue}
    Set 0 {PDefRecLen} = {ACycle_Total}
	DelayWrite PDefRecWhr = {AWhr}
	DelayWrite DWhr = {AWhr}
	Set 4 {PDefRecWhr} = {AWhr}
	Set 4 {PADCEP2} = {AWhr}
	DelayWrite PWAvgDef = {PWatt_Avg_Def}
	DelayWrite PWAvgRec = {PWatt_Avg_Rec}
    DelayWrite DR MaxM MinM Avg Def Rec On
	DelayWrite DefPeriods = HMS[{ACycle_Left}],HMS[{ACycle_Right}]

	! -- Stable report information
	DelayWrite I Title Group3		!Ambient TCs
	DelayWrite AmbDP MaxM MinM Avg Def Rec On Off Group3		!Ambient TCs

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

    If {SStopCond_Right} >= 3 Then		! Test stops at recovery, so power period just ended as well
		Gosub ProcPowerPer
	EndIf

    Return
EndSub
! -- The following commands are executed each scan --
Sub InterCmds
	Include AuxInProcess		!Calculate Aux Input Channel
	Include LoopFunctions
	Error Off
	If {SCabAuxVolume} > 0 Then
		Math 2 {PCabCalc} = (({PCab}*{SCabVolume}) + ({PCabAux}*{SCabAuxVolume}))/({SCabVolume}+{SCabAuxVolume})
	Endif	
	If {SFrzAuxVolume} > 0 Then
		Math 2 {PFrzCalc} = (({PFrez}*{SFrzVolume}) + ({PFrzAux}*{SFrzAuxVolume}))/({SFrzVolume}+{SFrzAuxVolume})
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
! This checks that Cycle A is 0.5 from Temp period
! {ACycle} set to temp period when called
Sub Proc2014Stable
	If ("{SAhamStandard}" = "2001") Then		! Only for 2014 energy test
		return
	Endif
	! Cycling product. ProcDefrost has {ACycle} period as the cycle before defrost and Temp Period defined
	! So check to see if those 2 periods are within 0.5 deg F of each other
	If {PContRun} = 0 Then
		! Get CabAvg from Temp period
		If {SCabAuxVolume} > 0 Then
			DelayWrite TCabAvg = {PCabCalc_Avg_On_Off_Def_Rec}
		Else
			DelayWrite TCabAvg = {PCab_Avg_On_Off_Def_Rec}
		Endif
		! Get FrzAvg from Temp period
		If {SFrzAuxVolume} > 0 Then
			DelayWrite TFrzAvg = {PFrzCalc_Avg_On_Off_Def_Rec}
		Else
			DelayWrite TFrzAvg = {PFrez_Avg_On_Off_Def_Rec}
		Endif
		! Find the A Cycle before defrost, which is included in the 'defrost' period
		Cycle End After {PDefStart} ! End of period is start of defrost
		Cycle Start Before {PDefStart} On ! Move back to off to on
		! Log Proc14Stable {AState_Last} HMS[{ACycle_Left}]
		Cycle Start Before {ACycle_Left} Off	! Move back to on to off
		! If using 2 cycles 
		Error Off
		If "{SNonUniform}" = "Yes" then			! Move back one more cycle
			Cycle Start Before {Acycle_Left} On ! Move back to off to on
			Cycle Start Before {ACycle_Left} Off	! Move back to on to off		
		Endif		
		Error on
		Log Proc14Stable DS:HMS[{PDefStart}] CL:HMS[{ACycle_Left}] CR:HMS[{ACycle_Right}] LS:{AState_Last} 
		
		Set $ = 0
Label PrevCycle
		If {SCabAuxVolume} > 0 Then
			Set 2 {PStabCabAvg} = {PCabCalc_Avg_On_Off_Def_Rec}	! Using Aux Cab compartment
		Else
			Set 2 {PStabCabAvg} = {PCab_Avg_On_Off}	! Save for future use
		Endif 
		If {SFrzAuxVolume} > 0 Then
			Set 2 {PStabFrzAvg} = {PFrzCalc_Avg_On_Off}
		Else
			Set 2 {PStabFrzAvg} = {PFrez_Avg_On_Off}
		Endif
		Math 2 {PValue1} = ABS[{RTCabAvg}-{PStabCabAvg}]	! Compare pre-defrost period to temp period
		Math 2 {PValue2} = ABS[{RTFrzAvg}-{PStabFrzAvg}]
		Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
		Math 2 {PValue2} = ABS[{RTFrzAvg}-{PStabFrzAvg}]
!		Log Cycle to Cycle check: {PValue} HMS[{ACycle_Left}] to HMS[{ACycle_Right}] {RTCabAvg} {PStabCabAvg}
		! See if Temp period is stable with pre-defrost period
		If {PValue} > {LOut5} & {ACycle_Left} > {PTPStart} Then
			Log 2014 Cycle HMS[{ACycle_Left}] to HMS[{ACycle_Right}] not stable with TP. Diff {PValue} Cab Avg {PStabCabAvg} FrzAvg {PStabFrzAvg}. TP CabAvg {RTCabAvg} TP FrzAvg {RTFrzAvg}
			Cycle End Before {ACycle_Right} Off			
			Cycle End Before {ACycle_Right} On
			Gosub LocateTPStart	! {ACycle_Right} is new Temp period end, find new Temp period start
	        Cycle Start Before {ACycle_Right} On	! Just want one cycle now
			Cycle Start Before {ACycle_Left} Off
			If "{SNonUniform}" = "Yes" then			! Move back one more cycle if non-uniform
				Cycle Start Before {Acycle_Left} On ! Move back to off to on
				Cycle Start Before {ACycle_Left} Off	! Move back to on to off		
			Endif		
			Math $ = $ + 1
			! Move back one cycle if cycle is valid and not before typical cycles
			If (({ACycle_Right}-{ACycle_Left}) > 900) & ({ACycle_Left} >={PCycTime}) & $ < 30  Then	! At least a 15 minute cycle to be valid
!				Log {ACycle_Left} {PCycTime}
				Goto PrevCycle	
			Else
				! Couldn't find a good period so reset period
				Cycle End After {PDefStart} ! End of period is start of defrost
				Gosub LocateTPStart	! {ACycle_Right} is new Temp period end, find new Temp period start
				Cycle Start Before {PDefStart} On ! End of period is start of defrost
				Cycle Start Before {ACycle_Left} Off		
				If {SCabAuxVolume} > 0 Then
					Set 2 {PStabCabAvg} = {PCabCalc_Avg_On_Off_Def_Rec}	! Using Aux Cab compartment
				Else
					Set 2 {PStabCabAvg} = {PCab_Avg_On_Off}	! Save for future use
				Endif
				If {SFrzAuxVolume} > 0 Then
					Set 2 {PStabFrzAvg} = {PFrzCalc_Avg_On_Off}
				Else
					Set 2 {PStabFrzAvg} = {PFrez_Avg_On_Off}
				Endif
				Set {LValue} = Couldn't find Pre-defrost cycle stable with temp period
				Log {LValue}
				Gosub AddComment				
				Set {LValue} = Pre-defrost CabAvg: {PStabCabAvg} FrzAvg: {PStabFrzAvg} Temp period CabAvg: {RTCabAvg} FrzAvg: {RTFrzAvg}
				Log {LValue}
				Gosub AddComment				
				Math 2 {PValue1} = ABS[{RTCabAvg}-{PStabCabAvg}]	! Compare pre-defrost period to temp period
				Math 2 {PValue2} = ABS[{RTFrzAvg}-{PStabFrzAvg}]
				Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
			Endif
		Endif
		DelayWrite SaveAnnot2 = 0;{ACycle_Left};{PStabCabAvg};8;A;WATT;{ACycle_Right}	! Write marker annot for Plot
		Trend Annotation 7,0;{ACycle_Left};{PCab};0;AStart
		Trend Annotation 8,0;{ACycle_Right};{PCab};0;AEnd
		DelayWrite StabLabel = Before Defrost (A)
		DelayWrite StabStart = HMS[{ACycle_Left}]
		DelayWrite StabEnd = HMS[{ACycle_Right}]
		DelayWrite StabCabAvg = {PStabCabAvg}
		DelayWrite StabFrzAvg = {PStabFrzAvg}
		DelayWrite StabLength = HMS[{ACycle_Total}]
		DelayWrite StabDiff = {PValue}			! Write diff from Temp period
		Log 2014 Stability recorded for cycle before defrost from HMS[{ACycle_Left}] to HMS[{ACycle_Right}]. Cab Avg {RStabCabAvg} FrzAvg {RStabFrzAvg} {ACycle_Cnt}
		Set {PTPEnd} = {ACycle_Right}
		Set {PDefStart} = {ACycle_Right}
	Else
	! If Continus run, take the average right when 'defrost' period starts
		Cycle End Before {PDefStart} On ! End of period is start of defrost
		Set $ = 0
		Set 0 {PValue} = {PDefStart}
Label PrevCycle2
		Cycle End Before {PValue} On
		Math {PValue} = {PValue} -300
		Cycle Start Before {PValue} On
		
		If {SCabAuxVolume} > 0 Then
			Set 2 {PStabCabAvg} = {PCabCalc_Avg_On}	! Using Aux Cab compartment
		Else
			Set 2 {PStabCabAvg} = {PCab_Avg_On}	! Save for future use
		Endif
		If {SFrzAuxVolume} > 0 Then
			Set 2 {PStabFrzAvg} = {PFrzCalc_Avg_On}
		Else
			Set 2 {PStabFrzAvg} = {PFrez_Avg_On}
		Endif
		Math 2 {PValue1} = ABS[{RTCabAvg}-{PStabCabAvg}]	! Compare pre-defrost period to temp period
		Math 2 {PValue2} = ABS[{RTFrzAvg}-{PStabFrzAvg}]
		Gosub MaxValue		! Finds max of the above and handles case with missing cab and frz
		Math 2 {PValue2} = ABS[{RTFrzAvg}-{PStabFrzAvg}]
		Log Continuous check: {PValue} HMS[{ACycle_Left}] to HMS[{ACycle_Right}] {RTCabAvg} {PStabCabAvg}
		If {PValue} > {LOut5} & $ < 100 Then
			Math $ = $ + 1
			Log 2014 Point HMS[{ACycle_Left}] to HMS[{ACycle_Right}] not stable with TP. Diff {PValue} Cab Avg {PStabCabAvg} FrzAvg {PStabFrzAvg}. TP CabAvg {RTCabAvg} TP FrzAvg {RTFrzAvg}
			Math 0 {PValue} = {ACycle_Left} - 300		! Move left 5 minutes
			!Gosub LocateTPStart	! {ACycle_Right} is new Temp period end, find new Temp period start
			Goto PrevCycle2
		Else
			DelayWrite StabCabAvg = {PStabCabAvg}
			DelayWrite StabFrzAvg = {PStabFrzAvg}
			DelayWrite StabStart = HMS[{ACycle_Left}]
			DelayWrite StabEnd = NA		! This is a point in time, so no end or length
			DelayWrite StabLength = NA	
			DelayWrite StabDiff = {PValue}			! Write diff from Temp period
			Set 2 {PStabCabAvg} = {PCab}	! Save for future use
			Set 2 {PStabFrzAvg} = {PFrez}	
			DelayWrite StabLabel = Before Defrost
			Log 2014 Stability recorded for point before defrost at HMS[{ACycle_Left}]. Cab Avg {RStabCabAvg} FrzAvg {RStabFrzAvg} HMS[{ACycle_Left}]
			DelayWrite SaveAnnot2 = 0;{ATestTime};{PStabCabAvg};2;A;WATT	! Write marker annot for Plot
		Endif
	Endif
EndSub
! Calculates type B Stability
! Only called when defrost just happened
Sub StableCalcB
    Gosub LocateTPEnd
	Math {PValue1} = {ACycle_Right} - (2*3600)				! 2 hours back
	If {PActualCycle} = 0 Then	! Continuous run
		Cycle Start Before {PValue1} 
	Else
		Cycle Start Before {PValue1} On
	Endif
	If {ACycle_Right} = {PPrevCycRight} Then	! This keeps it from being called twice
		Return
	Endif
	!Log SCB: HMS[{PPrevCycLeft}] HMS[{PPrevCycRight}] HMS[{ACycle_Left}] HMS[{ACycle_Right}]	
	DelayWrite StableCycCnt = {ACycle_Cnt}
	! Write pre-defrost type B stability so it can be saved to database for next test to use
	! Performance Flex saves this to DB
	! This is only needed if individual tests are used
	DelayWrite SSStart = HMS[{ACycle_Left}]
	DelayWrite SSEnd = HMS[{ACycle_Right}]
	DelayWrite SSLength = HMS[{ACycle_Total}]
	DelayWrite SSCabAvg = {PCab_Avg_On_Off}
	DelayWrite SSFrzAvg = {PFrez_Avg_On_Off}
	If {ACycle_Total_On_Off} >= (2*3600) Then						! Make sure we have enough time
		! If previous test 2 hour avg is available before defrost calculate test to test stability
		If {PPrevCabAvg} > -100 Then
			DelayWrite PrevFrzAvg = {PPrevFrzAvg}
			DelayWrite PrevCabAvg = {PPrevCabAvg}
			DelayWrite PrevCycLeft = {PPrevCycLeft}
			DelayWrite PrevCycRight = {PPrevCycRight}
			DelayWrite CurCycLeft = {ACycle_Left}
			DelayWrite CurCycRight = {ACycle_Right}
			Math 4 {PValue1} = ABS[{PPrevCabAvg}-{PCab_Avg_On_Off}]		! Find the cab delta (prev test-current test)
			Math 4 {PValue2} = ABS[{PPrevFrzAvg}-{PFrez_Avg_On_Off}]		! Find the frez delta
			Math 4 {PTypeBStable} = MAX[{PValue1},{PValue2}]				! Find the largest 
			Log Type B Check:{PPrevFrzAvg} {PFrez_Avg_On_Off} {PPrevCabAvg} {PCab_Avg_On_Off} {PValue1} {PValue2}
			Log Type B Check2:HMS[{PPrevCycLeft}],HMS[{PPrevCycRight}],HMS[{ACycle_Left}],HMS[{ACycle_Right}]
			Math 4 {PTypeBStable} = {PTypeBStable} / (({ACycle_Left}-{PPrevCycLeft})/3600)		! Divide by the number of hours
		Else
			Set {PTypeBStable} = 2001							! No previous defrost
		Endif
		Set 4 {PPrevFrzAvg} = {PFrez_Avg_On_Off}		! Save this one for next defrost	
		Set 4 {PPrevCabAvg} = {PCab_Avg_On_Off}
		Set 0 {PPrevCycLeft} = {ACycle_Left}
		Set 0 {PPrevCycRight} = {ACycle_Right}	
	Else
		Set {PTypeBStable} = 2002		! Not enough time
	Endif
EndSub
		
! --------------------- ProcStability -----------------------
! Process the Stability values for Type A and Type B
! Determines best stable method and write detailed info
- Every state transition, check type A and type B stability
- Type B only gets updated on defrost transition
- Tell user the status
- If stable, then drop out of loop and write information

Sub ProcStability
	Stable Calc {PTPStart}	! Calculate type A stability before temp period {PValue}
	Math 3 {Pvalue} = ({AStable_Total})/3600		! Number of hours period 1 to period 2 to divide
	If {AStable} < 1000 Then
		Math 3 {PTypeAStable} = {AStable}/{PValue}			! Calculate stability to compare to .042
	Else
		Set 0 {PTypeAStable} = {AStable}			! Save 1001, etc value
	Endif
	If {AState} = 4 & {AState} <> {AState_Last} Then
		Gosub StableCalcB		! Calculate type B stability before defrost {PTypeBStable}
	Endif
	! See if we are stable
	If {PTypeAStable} < {LAhamStable} Then	! Meet type A Stability
		If {PStartCond} <> 2 Then
			Log AHAM type A stability achieved with {PTypeAStable} temp/hr and {LAhamStable} limit and HMS[{AStable_TOtal}] period
			DelayWrite StableTxt = AHAM stable method with {PValue} value
			DelayWrite StableLim = {LAhamStable}
			DelayWrite StableRes = PASS
			Status Cyan Type A Stability Achieved. Waiting for defrost
			Set 0 {PStartCond} = 2
		Endif
		Error off		! 
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
		Log Cab Avg Period 1:{PValue} Period 2:{PValue1} TPS:HMS[{PTPStart}] STABEND: HMS[{AStable3}]
		Error on
		DelayWrite SSType = Type A Stability
		DelayWrite SSLabel1 = Period 1
		DelayWrite SSStart1 = HMS[{AStable0}]
		DelayWrite SSEnd1 = HMS[{AStable1}]
		Math 0 {Pvalue} = {AStable1} - {AStable0}
		DelayWrite SSLength1 = HMS[{PValue}]
		DelayWrite SSLabel2 = Period 2
		DelayWrite SSStart2 = HMS[{AStable2}]
		DelayWrite SSEnd2 = HMS[{AStable3}]
		DelayWrite SSAEndTime = {AStable3}
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
			Math 5 {Pvalue} = ({AStable_Total})/3600		! Number of hours period 1 to period 2 to divide
			Math 5 {PValue} = {AStable}/{PValue}			! Calculate stability
			DelayWrite TestStable = {PValue}
		Endif
		Set $ = SSA
		Trend Annotation 0,0;{AStable0};1;{PStartCond};$1
		Trend Annotation 1,0;{AStable1};1;{PStartCond};$1
		Trend Annotation 2,0;{AStable2};1;{PStartCond};$2
		Trend Annotation 3,0;{AStable3};1;{PStartCond};$2
		! Write annotations for report
		DelayWrite SaveAnnot0 = 0;{AStable0};1;8;$1;WATT;{AStable1}
		DelayWrite SaveAnnot1 = 0;{AStable2};1;8;$2;WATT;{AStable3}
		! Set up info for stable detail
		Cycle Start after {AStable2}	! Select second period
		Cycle End Before {AStable3}
		Math 5 {PValue3} = {AStable_Total}/3600
		Gosub StableDetail	! {PValue3} Needs to have the Stable Period
	ElseIf {PTypeBStable} < {LAhamStable} Then		! See if this stable value is a better value than 7 hr method
		Log Type B Stability Used: {PTypeBStable} TypeA: {PTypeAStable} Period HMS[{ACycle_Right}]
		If {PStartCond} <> 2 Then
			Log AHAM type B stability achieved with {PTypeBStable} temp/hr and {LAhamStable} limit and HMS[{AStable_TOtal}] period
			DelayWrite StableTxt = AHAM stable method with {PTypeBStable} value
			DelayWrite StableLim = {LAhamStable}
			DelayWrite StableRes = PASS
			Status Cyan Type B Stability Achieved. Waiting for defrost
			Set 0 {PStartCond} = 2		! Flag for loop
		Endif
		! Setup cycle database with type b stable values
		Cycle Start after {RCurCycLeft}
		Cycle End before {RCurCycRight}
		! Added 3/23/2011 - Create a STability report to show stability values and time period
		DelayWrite STFF Title Avg On Off Def Rec Group2		! Write Avg FF temps
		DelayWrite STFZ Title Avg On Off Def Rec Group1		! Write Avg FZ temps
		DelayWrite SSType = Type B Stability
		DelayWrite TestStable = {PTypeBStable}
		If ("{SOneTest}"="No") Then
			Log PrevTestNum:{PPrevTestNum}
			Set ? = {PPrevTestNum}
			DelayWrite SSLabel1 = Prev Test ?
			DelayWrite SSLabel2 = This test
		Else
			DelayWrite SSLabel1 = 1st Period
			DelayWrite SSLabel2 = 2nd Period
			DelayWrite SSStart1 = HMS[{RPrevCycLeft}]
			DelayWrite SSEnd1 = HMS[{RPrevCycRight}]
			Math 0 {Pvalue} = {RPrevCycRight} - {RPrevCycLeft}
			DelayWrite SSLength1 = HMS[{PValue}]	
		Endif
		DelayWrite SSCabAvg1 = {RPrevCabAvg}
		DelayWrite SSFrzAvg1 = {RPrevFrzAvg}
		DelayWrite SSStart2 = HMS[{ACycle_Left}]
		DelayWrite SSEnd2 = HMS[{ACycle_Right}]
		DelayWrite SSLength2 = HMS[{ACycle_Total}]
		DelayWrite SSCabAvg2 = {PCab_Avg_On_Off}
		DelayWrite SSFrzAvg2 = {PFrez_Avg_On_Off}
		DelayWrite SSBEndTime = {ACycle_Right}
		! Annotations for trend
		Set $ = SSB
		DelayWrite SaveAnnot0 = 0;{RPrevCycLeft};1;8;$1;WATT;{RPrevCycRight}
		DelayWrite SaveAnnot1 = 0;{ACycle_Left};1;8;$2;WATT;{ACycle_Right}
		Trend Annotation 0,0;{RPrevCycLeft};1;{PStartCond};$1
		Trend Annotation 1,0;{RPrevCycRight};1;{PStartCond};$1
		Trend Annotation 2,0;{ACycle_Left};1;{PStartCond};$2
		Trend Annotation 3,0;{ACycle_Right};1;{PStartCond};$2
		Math 0 {PValue} = {ACycle_Left}-{RPrevCycRight}
		Math 0 {PValue3} = {ACycle_Left}-{RPrevCycLeft}
		DelayWrite SSBetween = Period HMS[{PValue3}] Between HMS[{PValue}]
		Math 5 {PValue3} = {PValue3}/3600
		Gosub StableDetail	! {PValue3} Needs to have the Stable Period in hrs
		! Can't use temp period before defrost since 2nd b cycle came from there.
		Set {PTPAfterDef} = 1				! Flag to get Temp period after defrost
		Set {PNeedTempPeriod} = 1
	Else
		Set $ = Chk
!		Log Trend annotation refresh
		Trend Annotation 0,0;{AStable0};1;{PStartCond};$1
		Trend Annotation 1,0;{AStable1};1;{PStartCond};$1
		Trend Annotation 2,0;{AStable2};1;{PStartCond};$2
		Trend Annotation 3,0;{AStable3};1;{PStartCond};$2
		If {PTypeAStable} = 1001 | {PTypeAStable} = 1002 Then
			Status Blue Waiting for Aham Stable - Not enough time for stability Period 1
		ElseIf {PTypeAStable} = 1005 Then
			Status Blue Waiting for Aham Stable - Not enough time for stability Period between
		ElseIf {PTypeAStable} = 1006 Then
			Status Blue Waiting for Aham Stable - Defrost in stable period
		ElseIf {PTypeAStable} = 1007 Then
			Status Blue Waiting for Aham Stable - Not enough time for stability Period 2
		Else
			Status Blue Waiting for Aham stable {PTypeAStable} less than {LAhamStable} limit and HMS[{AStable_TOtal}] period
		Endif
	Endif
EndSub

! {PValue3} Needs to have the Stable Period
Sub StableDetail
		Set 3 {PValue} = 0			! Set decimal places
		Set 3 {PValue1} = 0		! Set decimal places
		! Write info for detailed stable report
		! End Period
		Log second period HMS[{ACycle_Left}],HMS[{ACycle_Right}]
		DelayWrite E Title Group1
		DelayWrite FrzStE MaxM MinM Avg On Off Group1
		DelayWrite F Title Group2
		DelayWrite CabStE MaxM MinM Avg On Off Group2
		DelayWrite G Title Group11
		DelayWrite FrzAuxStE MaxM MinM Avg On Off Group11
		DelayWrite H Title Group10
		DelayWrite CabAuxStE MaxM MinM Avg On Off Group10
		DelayWrite StE MaxM MinM Avg On Off	! This needed to get Group values later
		! For full period
		If "{RSSType}" = "Type B Stability" Then
			Cycle Start after {RPrevCycLeft}	
		Else
			Cycle Start after {AStable0}	
		Endif	
		DelayWrite A Title Group3		!Ambient TCs
		DelayWrite AmbStP MaxM MinM Avg On Off Group3		!Ambient TCs
		! For First Period
		If "{RSSType}" = "Type B Stability" Then
			Cycle End Before {RPrevCycRight}
		Else
			Cycle End Before {AStable1}
		Endif
		Log first period HMS[{ACycle_Left}],HMS[{ACycle_Right}]
		DelayWrite FrzStS MaxM MinM Avg On Off Group1
		DelayWrite CabStS MaxM MinM Avg On Off Group2
		DelayWrite FrzAuxStS MaxM MinM Avg On Off Group11
		DelayWrite CabAuxStS MaxM MinM Avg On Off Group10
		DelayWrite StS MaxM MinM Avg On Off
		Result Get {PValue} = StECab 3	! Get Cab end value
		Result Get {PValue1} = StSCab 3	! Get Cab Beg Value
		Math 2 {PValue2} = ABS[{PValue} - {PValue1}]
		DelayWrite STCab = {PValue2}
		Log Cab End:{PValue} Cab Beg:{PValue1} Stable Temp: {PValue2} Period: {PValue3}
		Math 6 {PValue2} = {PValue2}/{PValue3}
		Log Stable Deg/Hr: {PValue2}
		DelayWrite STCabDegHr = {PValue2}
		Result Get {PValue} = StECabAux 3	! Get Cab end value
		Result Get {PValue1} = StSCabAux 3	! Get Cab Beg Value
		Math 2 {PValue2} = ABS[{PValue} - {PValue1}]
		If {PValue2} < 999 Then
			DelayWrite STCabAux = {PValue2}
			Math 6 {PValue2} = {PValue2}/{PValue3}
			DelayWrite STCabAuxDegHr = {PValue2}
		Endif
		Result Get {PValue} = StEFrez 3	! Get Cab end value
		Result Get {PValue1} = StSFrez 3	! Get Cab Beg Value
		Math 2 {PValue2} = ABS[{PValue} - {PValue1}]
		DelayWrite STFrez = {PValue2}
		Math 6 {PValue2} = {PValue2}/{PValue3}
		DelayWrite STFrezDegHr = {PValue2}
		Result Get {PValue} = StEFrezAux 3	! Get Cab end value
		Result Get {PValue1} = StSFrezAux 3	! Get Cab Beg Value
		Math 2 {PValue2} = ABS[{PValue} - {PValue1}]
		If {PValue2} > 999 Then
			DelayWrite STFrezAux = {PValue2}
			Math 6 {PValue2} = {PValue2}/{PValue3}
			DelayWrite STFrezAuxDegHr = {PValue2}
		Endif
		Math {PValue3} = {PValue3} * 3600
		DelayWrite StablePeriod = HMS[{PValue3}]
EndSub
		

