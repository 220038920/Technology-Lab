! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System		 		 
! --------------------------------------------------------------------------
!
!    Descr          : India Power Interrupt test.  This is included by the cycle.cmd test
!                   : Turns power off for 10 seconds on days 3,4,5 per a different schedule for each day
!    File           : IndiaPwrInt.CMD
!    By             : Scott Hellmer	    
!
!    1.0 SH 04/14/10 Created
!	
	! See if it's day 3
	If {SDay_Left} = 3 Then
		If {ATime_Raw} >= (8*3600) & {ATime_Raw} <= (16.5*3600) Then		! 8am to 4 pm once an hour for 10 seconds
			Set $ = 60														! Time (min) between outages 60 minutes
			Set ? = 10														! Time (sec) for outage
			Gosub ProcPwrInt
		Endif
	ElseIf {SDay_Left} = 4 Then
		If {ATime_Raw} >= (8*3600) & {ATime_Raw} <= (12*3600) Then			! 8am to 11:30 am once every 30 minutes for 10 seconds
			Set $ = 30														! Time between outages 30 minutes
			Set ? = 10														! Time (sec) for outage
			Gosub ProcPwrInt
		ElseIf {ATime_Raw} >= (13.5*3600) & {ATime_Raw} <= (14.1*3600) Then	! 1:30 pm to 4:00pmonce every 30 minutes for 10 seconds
			Set $ = 30														! Time between outages 30 minutes
			Set ? = 10														! Time (sec) for outage
			Gosub ProcPwrInt
		Endif					
	ElseIf {SDay_Left} = 5 Then
		If {ATime_Raw} >= (8*3600) & {ATime_Raw} <= (9.75*3600) Then		! 8am to 9:45 am once every 30 minutes for 10 seconds
			Set $ = 30														! Time between outages 30 minutes
			Set ? = 10														! Time (sec) for outage
			Gosub ProcPwrInt
		ElseIf {ATime_Raw} >= (11.5*3600) & {ATime_Raw} <= (14.1*3600) Then	! 1:30 pm to 4:00pmonce every 30 minutes for 10 seconds
			Set $ = 999														! Time between outages - Just one long one
			Set ? = 7200													! Time (sec) for outage
			Gosub ProcPwrInt
		Endif				
	Endif

Sub ProcPwrInt
	Error off
	If {PCycleState} = 0 Then										! First outage
    	Set 1 {PVoltSet} = {SVoltSet#}								! Store setpoint
		Log India Power Interrupt Day:{SDay} First power outage. $ min between outages, duration ? sec
    	Set {SVoltSet#} = 0	
    	Set {PCycleCount} = 0										! Set volt setpoint to 0 which turns voltage off in some stalls
    	Math 1 {PCycleTimer} = {Atesttime} + ?						! 10 seconds
    	Set {PCycleState} = 1										! Set next state
		Log India Power Interrupt Day:{SDay} Outage:{PCycleCount} Power Off
		Status Blue India Power Interrupt - Pwr Off Day:{SDay} Outage:{PCycleCount}
    Elseif {PCycleState} = 1 & {ATestTime} >= {PCycleTimer} Then	! Turn voltage back on
    	Set 1 {SVoltSet#} =	{PVoltSet} 								! Back to original
    	Set {PCycleState} = 2										! Set next state
    	Math 1 {PCycleTimer} = {Atesttime} + ($*60) - ?				! Convert from minutes to seconds and subtract off time
    	Math 0 {PCycleCount} = {PCycleCount} + 1					! Convert from minutes to seconds and subtract off time
		Status Green India Power Interrupt Day:{SDay} Outage:{PCycleCount}
		Log India Power Interrupt Day:{SDay} Outage:{PCycleCount} Power On
    Elseif {PCycleState} = 2 & {ATestTime} >= {PCycleTimer} Then	! Turn voltage back on
    	Set {SVoltSet#} = 0											! Set volt setpoint to 0 which turns voltage off in some stalls
    	Math 1 {PCycleTimer} = {Atesttime} + ?						! 10 seconds
    	Set {PCycleState} = 1										! Set next state		    	
		Status Blue India Power Interrupt - Pwr Off Day:{SDay} Outage:{PCycleCount}
		Log India Power Interrupt Day:{SDay} Outage:{PCycleCount} Power Off
    Endif
	Error on
    Return
EndSub
