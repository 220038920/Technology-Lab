! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System		 		 
! --------------------------------------------------------------------------
!
!    Descr          : Short Cycle test per WTM-M-130.33.  This is included by the cycle.cmd test
!    File           : ShortCycle.CMD
!    By             : Scott Hellmer	    
!
!    1.0 SH 03/20/09 Created
!    1.1 SH 04/06/09 Fix for overload detection
!    1.2 SH 04/23/09 Fix for overload detection
!    1.3 SH 04/12/10 Added start conditions (timed and manual)
!	
	Error off
	! See if it's time to start cycling
    If {PCycleState} = 0 Then
    	If "{SStartCycling_Left}" = "Y" Then
    		Log Immediate Starting
	    	Set 0 {PCycleState} = 9		! Transition/setup state
    	ElseIf ("{SStartCycling_Left}" = "M") | ("{SStartCycling_Left}" = "OK") Then
    		Log Manual Starting
	    	Status Yellow Waiting for user to manually start
	    	Set {PCycleState} = 4			! Waiting State
	    ElseIf ("{SStartCycling_Left}" = "A") Then
    		Log Auto Starting after 3 cycles
	    	If ({PActualCycle} >= 3) then
	    		If {AState_last} = 1 and {AState} = 2 Then
		    		Set {PCycleState} = 9		! Transition/setup state
		    	Else
		    		Status Yellow Waiting for off to on transition
		    	Endif
			Else    	
				Math 0 {PValue} = 3-{PActualCycle}
	    		Status Yellow Short Cycle: Waiting for {PValue} cycles
	    	Endif
    	ElseIf ("{SStartCycling_Left}" = "Time(hrs)") Then
    		Log Auto Starting after {SStartCycling_Right} hours
	    	Math 0 {PCycleTimer} = {Atesttime} + (3600*{SStartCycling_Right}) 	! Set up cycletime to test start
	    	Set {PCycleState} = 4			! Waiting State
	    Endif
    ElseIf {PCycleState} = 9 Then				! Transition/setup State
    	Log Trans {PCycleState}
		Set {SStartCycling} = OK				! On state first	    	
    	Set 0 {PCycleCount} = 1
    	Set {PCycleState} = 1					! On state first
    	Math 1 {PCycleOff} = {SOffTime}*60		! Start at 7 minutes usually, then decrement by 30 seconds
    	Set 1 {PVoltSet} = {SVoltSet#}			! Store setpoint
    	Math 1 {PCycleTimer} = {Atesttime} + ({SOnTime}*60)
        Trend Annotation 1,0;{AtestTime};MATH[{PWatt}/10];1;Cycling started				!Trend annot
        Log Short Cycle Started Version 1.3 at Volt Setpoint of {PVoltSet}
    
    ElseIf {PCycleState} = 1 Then				! ON STATE
     	Math 0 {PValue2} = ({PCycleTimer} +60) - ({SOnTime}*60)
        If {ATestTime} > {PCycleTimer} Then
	    	Set {PCycleState} = 2				! Go to off state
	    	Set {SVoltSet#} = 0					! Set volt setpoint to 0 which turns voltage off in some stalls
	    	Math 1 {PCycleTimer} = {Atesttime} + {PCycleOff} - {POnDelay} 	! Subtract off the time it takes for the product to turn on
	    	Log Off State Started HMS[{PCycleOff}]
	    Elseif {POnDelay} = -1 Then	! Calculate the delay from on to when product actually turns on
    		If {AState_last} = 1 and {AState} <> 1 Then
	    		Math 0 {POnDelay} = {ATestTime} - {POnEvent}	! Transition/setup state
		    	Log Turned On: HMS[{POnEvent}] Came on:HMS[{ATestTime}] Delay:HMS[{POnDelay}]
		    	Math 0 {PCycleTimer} = {Atesttime} + ({SOnTime}*60)	! Update on time to include the delay
	    	Endif
       	Elseif {ATestTime} > {PValue2} & {AState} <> 2 Then
	    	Math 1 {PCycleOff} = {PCycleOff}+30	! Get actual off time from previous cycle
			Set {LValue} = Product Overloaded - Off time HMS[{PCycleOff}]
		    Status Yellow Short Cycle {LValue}
			Gosub AddComment
	    	Set {PCycleState} = 3				! Stop short cycling
	    	Log AOverload:{AOverload} AState:{AState}  TestTime:HMS[{AtestTime}]  TimeThresh: HMS[{PValue2}]
	        Trend Annotation 2,0;{AtestTime};MATH[{PWatt}/10];1;Offtime HMS[{PCycleOff}]				!Trend annot
       	Else	
	    	Math 1 {PValue} = {PCycleTimer} - {ATestTime}
		    Status Blue Short Cycle On HMS[{PValue}] left
		    ! -- Check for overload -This code doesn't catch the overload thus far
			If {AOverload} | {AState} = 4 Then
		    	Math 1 {PCycleOff} = {PCycleOff}+30	! Get actual off time from previous cycle
				Set {LValue} = Product Overloaded - Off time HMS[{PCycleOff}]
			    Status Yellow Short Cycle {LValue}
				Gosub AddComment
		    	Set {PCycleState} = 3			! Stop short cycling
		    	Log AOverload:{AOverload} AState:{AState}
			Endif
		Endif
    Elseif {PCycleState} = 2 Then				! Product is OFF
        If {ATestTime} > {PCycleTimer} & {AState} = 1 Then
	    	Math 1 {PCycleOff} = {PCycleOff}-30	! Decrement down by 30 seconds
	    	If {PCycleOff} > 0 Then
		    	Set {PCycleState} = 1			! Go to on state
		    	Set {SVoltSet#} = {PVoltSet}	! Set volt setpoint back on
		    	Math 0 {PCycleTimer} = {Atesttime} + ({SOnTime}*60)
		    	Math 0 {PCycleCount} = {PCycleCount} + 1
		    	Log On State Started, cycle {PCycleCount}
		    	Set 0 {POnEvent} = {ATestTime} 	! Record this time to calculate on delay later
		    	Set {POnDelay} = -1				! Delay from when signal sent to when product is actually on
		    Else
	    		Set {SStartCycling} = Done		! On state first
		    	Set {PCycleState} = 0			! Reset state
				Set {LValue} = Product didn't Overload
			    Status Yellow Short Cycle {LValue}
		    	Set {SVoltSet#} = {PVoltSet}	! Set volt setpoint back on
	        	Trend Annotation 3,0;{AtestTime};MATH[{PWatt}/10];1;Cycling Complete				!Trend annot
	    	Endif
       	Else
	    	Math 1 {PValue} = {PCycleTimer} - {ATestTime}
		    Status Blue Short Cycle Off HMS[{PCycleOff}]. HMS[{PValue}] left   
		Endif
    Elseif {PCycleState} = 3 Then				! Product Overloaded
    	If ("{SStartCycling_Left}" = "Y") Then	! Continue
	    	Set 0 {PCycleState} = 9				! Transition/setup state
	    Endif
    Elseif {PCycleState} = 4 Then				! Waiting for starting
	    If {ATestTime} > {PCycleTimer} Then		! Continue
	    	Set 0 {PCycleState} = 9				! Transition/setup state
    	ElseIf "{SStartCycling_Left}" = "Y" Then
    		Log Immediate Starting
	    	Set 0 {PCycleState} = 9		! Transition/setup state
	    Else
			Math 0 {PValue} = {PCycleTimer}-{ATestTime}
    		Status Yellow Waiting for HMS[{PValue}] to start cycling			
	    Endif
    Endif	
	Error on
