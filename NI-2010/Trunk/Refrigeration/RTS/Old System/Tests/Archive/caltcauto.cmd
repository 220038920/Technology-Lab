! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr   : Calibration procedure for TC inputs
!    File    : CALTCAUTO.CMD
!
!    1.1 SH 4/18/00  Added plot and open TC check
!    1.3 SH 7/24/02  Removed result and plot saveas functions to keep from gen a report
!    1.4 SC 10/5/04  Added ability to turn transfer filter off and on
!    2.0 SH 8/18/06  Added save as option, report, LabResults database
!	 2.1 SC 8/31/06  Added support for As Received 90 degree saving; Saved SEquipment to Equipment field added to TCS table.
!					 Saved SCalComment1 to Comment field in TCS table.
!	 2.2 SH 11/7/06  Added other ranges, changed setups for saving values
!					 Added annotations, Report, support deg F and deg C
!	 2.3 DK 01/30/07 Added support for new TC table with Temp and Type fields.  No longer  have to generate a fake Revision as multiple entries with the same testnumber are supported.
!	 2.4 SC 05/22/07 Added write for every snapshot to TCCalibration table to work properly with calibration database.
!	 2.5 SH 08/27/07 Added support for partial calibrations.  1-10, etc instead of all of them at one time
!					 Procedure also auto calculates the next series for calibration.
!	 2.6 SH 01/02/08 Added 40 channel chart for 32 and 90 values
!	 2.7 SH 01/18/08 Faster save zero and save gain
!	 2.8 SH 09/17/08 Added SampleRate monitoring (got from Sid)
!	 3.0 SH 09/17/08 Changed name to caltcauto.cmd.  Don't use the RTSMan cal interface.  Using dialogs.
!						Store stddev, don't calibrate if inside a certain range.
!	 3.1 SH 12/17/08 Changed 32 after cal to use new gain
!	 3.2 SH 07/01/09 If no channels requried calibration, then skip the 90deg after cal
!	 3.3 SH 11/06/09 Added Uncertainty of measurements
!	 3.4 SH 02/23/10 Skip calibration for open TCS - (Mexico)
!	 3.5 SH 04/11/11 Check for out of Whirlpool 1 deg and UL/IED 3.6 deg Tolerance
!	 3.6 SH 04/10/14 Retry setpoint change for auto cal procedure

!	The short term variation is calculated during the procedure
!	The type T TC wire is a spec and is +-.9 deg F  (this drive almost all of the Uncertainty)
!	Channel variation is .158 from Sid Creekmur's experiment
!	Standard variation is location-specific and is stored in a lookup file.  For a 5520 it is .1
!
!	U of TC = SQRT(short term^2   + type T TC^2 + channel^2 + standard (bath)^2 + probe^2)
! 	U of TC = SQRT( STDEV(TC_x)^2 + 0.9^2       + .158^2	+ .054^2			+ .027^2
!                   Measured 		Spec		Evv			Hart	Hart
!					during 						Experiment  Bath	Probe
!			= SQRT( STDEV(TC_x)^2 + .83)
!
! 	U of TC = SQTR( STDEV(TC_x)^2 + 0.9^2       + .158^2		+ .1^2)
!                   Measured 		Type T		Evv			Fluke 5520
!					during 			Spec Limits	Experiment  Spec
!
!			= SQRT( STDEV(TC_x)^2 + .88)
!	? and Recordtype values
!	0 = Zero
!	1 = Gain
!	2 = 32°F After Cal
!	3 = 90°F After Cal
!	4 = 32°F As Recvd
!	5 = 90°F As Recvd
!	6 = -4°F As Recvd
!	8 = 45°F As Recvd
!	10 = 110°F As Recvd
!
!	Step Values
!	10 = Prompt for next step
!	11 = Received OK, proceed with 90 as received
!	14 = Get averages
!	15 = Calculate averages
!	16 = Done with step, figure out where to go next
!
! PCommand variables - Added Feb 2012 by Hooks in to RTS
!	Commands:
!     0    Not active
!     1    Dialog opened
!     2    Start pressed
!     3    Stop pressed
!     4    Set output and go to operate
!     5    Go to standby
!Registry entries
!     Cal Source Port = comxx
!     Cal Source Type = 5520A

!point 71 is used for the setpoint.
!Point 77 is used to read/write the commands


Transfer nodevice 1
Lookup location
Lookup caltc
Point Clear
Point caltc

If "{SNumChans_right}" == "" Then
	Set {SNumChans} = 40 TCs,40
Endif

If "{SNumChans_left}" <> "Custom" Then
	Log Point Numbers{SNumChans_right}
	Point Numbers{SNumChans_right}
Else
	Log Custom Point file {SPointCustom}
	Point {SPointCustom}
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

Set 1 {PVersion} = 3.6
Revision

Plot SaveAs stands\TCCAL_{AStation_Title}_{ARevision}
Result SaveAs stands\TCCAL_{AStation_Title}_{ARevision}
Log SaveAs stands\TCCAL_{AStation_Title}_{ARevision}

Transfer Filter Off
Transfer units {STempUnits}
Transfer Interval {SSampleRate}
Set Lock {STempUnits}
Lookup CalTC{STempUnits}

Plot Interval {SSampleRate}
Trend Interval {SSampleRate}
Trend Clear

DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]

Clear All
Log CALTC Auto Version {PVersion}

Set {SStartChan} = 1
Set 0 {PStep} = 8
Set 0 {PLastSample} = 0
Set 0 {PCalFlag} = 0		! Flag if any channel needed calibration
Set 0 {PCommand} = 0		! Init pcommand
Calibrate Enable

! Partial calibration
If "{SPartial}" = "Y" Then
	If {SStartChan} <> 1 Then
		Prompt OK Start channel set to Channel 1.  RTS will write values when StopChan is {SNumChans_right}
		Begin
			If {Aprompt} = 1 Then
				Leave
			Endif
		Loop	
	Endif
Else
	Set {SStopChan} = {SNumChans_right}	! Full calibration
Endif

Status Green TC Calibration {PVersion} Ready
Begin
    If {ASettings} Then
	    If "{SResetCalConst}" = "R" Then
			Gosub ResetCalConst
	        Set {SResetCalConst} = N
	    Endif
	    If "{SFilter}"="Y" Then
	    	Transfer Filter On
	    Else
	    	Transfer Filter Off
	    Endif
		Plot Interval {SSampleRate}
		Trend Interval {SSampleRate}
	Endif
    If {PStep} = 8 Then
		Set $ = 0			! Flag for step 9

        Set {PSetpoint} = {LTemp?}
        If {PCommand} > 0 Then
			If {PSetpoint} = 0 Then
				Prompt OK AutoCal: Press Start Button on Automated Calibration box
				Begin
					If {Aprompt} = 1 | {PCommand} = 2 | {PSetpoint} > 0 Then
						Set {PStep} = 9
						! Prompt Cancel
						Leave
					Endif
					Set {PSetpoint} = {LTemp?}
				Loop
			Else
				Prompt Cancel
			Endif
		Else
   			Prompt OK Click Special->Auto Calibration for Auto Cal, or OK to continue
			Begin
				If {Aprompt} = 1 Then
					Leave
				Elseif {PCommand} = 1 | {PCommand} = 2 Then
					Prompt Cancel
					Leave
				Endif
			Loop			
		Endif
    ElseIf {PStep} = 9 Then
        Set {PStep} = 10
        Set ? = 5	! 90°F As Recvd
        If {PCommand} > 0 Then
	        Set {PSetpoint} = {LTemp?}
			Set {PCommand} = 4				! Change setpoint
			Status Blue Changing Setpoint to {PSetpoint} 1
	        Math {PTimer} = {ATestTime} + 3     			
			Begin
				If {ATestTime} > {PTimer} Then
					Leave
				Endif
			Loop
	        Math {PTimer} = {ATestTime} + 3   			
			Begin
				If {ATestTime} > {PTimer} Then
					Leave
				Endif
			Loop	

			Status Blue Changing Setpoint to {PSetpoint} 2
			If "{STempUnits}" = "C" Then
				Set {PCommand} = 7				! Change units one time
			Else
				Set {PCommand} = 6				! Change units one time
			Endif
	        Math {PTimer} = {ATestTime} + 3     			
			Begin
				If {ATestTime} > {PTimer} Then
					Leave
				Endif
			Loop
				! Rooms 1-4          Mobile Daq 1-20 K, 21-30 T
			If {SStartChan} = 29 | ({SStartChan} = 1 & {ASystem} = 5) Then
				Set {PCommand} = 9				! K type
			Else
				Set {PCommand} = 8				! T type
			Endif				

			Math {PTimer} = {ATestTime} + 3     			
			Begin
				If {ATestTime} > {PTimer} Then
					Leave
				Endif
			Loop	
			Set {PCommand} = 4				! Change setpoint (send again)
			Status Blue Changing Setpoint to {PSetpoint} 3
   			Prompt OK AutoCal: Check for Open TCs or incorrect readings.  Procedure won't stop after this point.
			Begin
				If {Aprompt} = 1 Then
					Leave
				Endif
			Loop	
		Endif
    ! Wait for prompt 
    ElseIf {PStep} = 10 Then
        Status Green TC Calibration {PVersion}: {LLabel?}
        Set {PStep} = 11
		Gosub ClearAverages		! Clear averages
        If {PCommand} > 0 Then		! Auto Cal        
	        Set {PSetpoint} = {LTemp?}
	        Set {PCommand} = 4
	        Log Auto Cal - Temp setpoint changed to {LTemp?}
	        Math {PTimer} = {ATestTime} + 20       
            Set 0 {PAvgCnt} = 0
        Else						! Manual Cal
	        Prompt OKCancel Press OK when ready to do {LLabel?}.            (Cancel to skip)
        Endif

    ! Wait for prompt 
    ElseIf {PStep} = 11 Then
    	If {PCommand} > 0 Then		! Auto Cal
			!If {PSetpoint} = 0 & ({ATestTime} % 10) = 0 Then		! Setpoint didn't 'take' so resend
			!	Set {PSetpoint} = {LTemp?}
			!	If {PValue} = -1 Then
			!		Set {PCommand} = 4		! Put in active mode
			!		Set {PValue} = -1		! Only try standby mode once, just keep resending sp now
			!		Log Resent Setpoint:P{PSetpoint} L{LTemp?} {PCommand} {PStep}
			!	Else
			!		Set {PCommand} = 5		! Put it standby mode
			!		Set {PValue} = -1
			!		Log Set to Standby:P{PSetpoint} L{LTemp?} {PCommand} {PStep}
			!	Endif
			!Endif
	    	If ({ATestTime} < {PTimer} | {PValue2} > 0) Then ! Get Averages
		        Math 0 {PValue} = {PTimer} - {ATestTime}
       	        Math 0 {PValue2} = 3-{PAvgCnt}			! Wait for 3 samples
		        Status Blue {LLabel?} stabilizing for HMS[{PValue}] and {PValue2} samples 
		        Gosub BuildAverages		! Build average values - just used for sample count
		        Prompt Cancel
		    Else
	    		Set {PStep} = 12		! Get 90 avg
	    	Endif
	    Else
	    	If {APrompt} = 1 Then		! Start 90°F As Recvd
	    		Set {PStep} = 12		! Get 90 deg avg
	    	Elseif {APrompt} = 2 Then	! Skip
	    		Set {PStep} = 16		! Go to next Calibration
	    	Endif	    
	    Endif
    ElseIf {PStep} = 12 Then		! Verify 90 and proceed
   		Gosub ClearAverages		! Clear averages
    	Set $ = {SStartChan}
    	If {PTC$} < ({LTemp?}+1) & {PTC$} > ({LTemp?}-1) Then	! Ok to start averaging
	        Math {PTimer} = {ATestTime} + 30
    		Set {PStep} = 14		! 
	    Else
	        Math {PTimer} = {ATestTime} + 10
	        Prompt AbortRetryIgnore Actual readings not at {LTemp?} +- 1. (Ignore to skip)
	        Set {PStep} = 13
	    Endif
    ElseIf {PStep} = 13 Then		! Waiting for prompt
		! Continue calibration if within limits
    	If {PTC$} < ({LTemp?}+1) & {PTC$} > ({LTemp?}-1) Then	! Ok to start averaging
			Gosub ClearAverages		! Clear averages
	        Math {PTimer} = {ATestTime} + 30
    		Set {PStep} = 14		! 
			Prompt Cancel
		Endif
    	If {PCommand} > 0 Then		! Auto Cal
			If {ATestTime} > {PTimer} & ({PTC$} < ({LTemp?}-3) || {PTC$} > ({LTemp?}+3)) Then 		! Setpoint didn't 'take' so resend
				Math {PTimer} = {ATestTime} + 10
				Set {PSetpoint} = {LTemp?}
				If {PValue} = -1 Then
					Set {PCommand} = 4		! Put in active mode
					Set {PValue} = 0
					Log Resent Setpoint:P{PSetpoint} L{LTemp?} {PCommand}
					Set {PStep} = 11		! Go back to stabilizing
					Set {PValue} = -1 		! Don't want to put in standby mode
			        Math {PTimer} = {ATestTime} + 20       ! for 20 seconds

				Else
					Set {PCommand} = 5		! Put it standby mode
					Set {PValue} = -1
					Log Standby:P{PSetpoint} L{LTemp?} {PCommand} {PStep}

				Endif
			Endif
			If {PCommand} = 5 Then		! Setpoint didn't 'take' so resend
				Set {PSetpoint} = {LTemp?}
				Set {PCommand} = 4
				Log Resent Setpoint:P{PSetpoint} L{LTemp?} {PCommand}
			Endif
		Endif
    	If {APrompt} = 4 Then		! Retry
    		Set {PStep} = 12		! 
    	ElseIf {APrompt} = 3 Then	! Abort
    		Status Yellow Calibration Cancelled
    		Halt
    	ElseIf {APrompt} = 5 Then	! Ignore
	        Math {PTimer} = {ATestTime} + 30
    		Set {PStep} = 14		! 
	    Endif
    ElseIf {PStep} = 14 Then
    	If ? < 6 Then
	        Math 0 {PValue2} = 10-{PAvgCnt}			! Take 10 samples for 32 and 90 values
	        Math 0 {PValue2} = LIM[{PValue2},0,10]	! Don't let go negative	        	
	    Else
	        Math 0 {PValue2} = 5-{PAvgCnt}			! Only take 5 samples for the -4,45 and 110 values
	        Math 0 {PValue2} = LIM[{PValue2},0,5]	! Don't let go negative	        	
	    Endif
    	If ({ATestTime} < {PTimer} | {PValue2} > 0) Then ! Get Averages
	        Math 0 {PValue} = {PTimer} - {ATestTime}
	        Status Blue {LLabel?} averaging for HMS[{PValue}] and {PValue2} samples
	        Gosub BuildAverages		! Build average values
	    Else
	    	Set {PStep} = 15		! Got averages
	    Endif
    ElseIf {PStep} = 15 Then		
        Gosub CalcAverages			! Calculate averages and new values 
        If {PCommand} > 0 Then
        	Set {PCommand} = 5
        	Log AutoCal - Standby
        Endif
		! Add annotation
		If ? < 8 Then
			If "{SPartial}" = "Y" Then
			    Trend Annotation ?,0;{AtestTime};{LTemp?};1;{LLabel?} {SStartChan}-{SStopChan}	!Trend annot
			    Log Saving Values for {LTemp?} {LLabel?} Start:{SStartChan} Stop:{SStopChan}
			Else
			    Trend Annotation ?,0;{AtestTime};{LTemp?};1;{LLabel?}								!Trend annot
			    Log Saving Values for {LTemp?} {LLabel?} All Channels
			Endif
		Endif
        Set $ = {SStartChan}		
        Log {LLabel?} TC$Avg = {PTC$Avg}
		Label SaveVals
		    If ? = 5 Then		! 90 as Received
		    	DelayWrite D$ = TC$
   		    	If {PTC$} > -900 & {PTC$_Avg} < ({LTemp?}+2) & {PTC$_Avg} > ({LTemp?}-2) Then	! Ok to write as received
			    	DelayWrite 90AR$ = {PTC$_Avg}
			    Endif
				! Check As received for out of tolerance.  Added 4/2011 SH
		   	    If {R90AR$} > ({LTemp3}+{LARRedTol}) | {R90AR$} < ({LTemp3}-{LARRedTol}) Then			! Red
					DelayWrite 90CLR$ = 2
					Log Channel $ 90 As received out of UL/IEC spec {R90AR$}.  Spec {LTemp3} +- {LARRedTol}
				    Set 0 {PTolFlag} = 2
			    ElseIf {R90AR$} > ({LTemp3}+{LARYelTol}) | {R90AR$} < ({LTemp3}-{LARYelTol}) Then		! Yellow
					DelayWrite 90CLR$ = 1
					Log Channel $ 90 As received out of Whirlpool spec {R90AR$}.  Spec {LTemp3} +- {LARYelTol}
				    Set 0 {PTolFlag} = MAX[1,{PTolFlag}]
				Endif

	    	Elseif ? = 4 Then	! 32 as Received and after cal
	    		Set 4 {PValue} = {PTC$_Zero}
		    	DelayWrite ZeroStD$ = {PTC$_Stdev}							! Write standard deviation
		    	DelayWrite ZeroRaw$ = {PTC$Avg}								! Write standard deviation
   		    	If {PTC$} > -900 & ({PTC$_Avg} > ({LTemp?}+{STCwin}) | {PTC$_Avg} < ({LTemp?}-{STCwin})) Then	! See if we need to calibrate
			    	DelayWrite 32AR$ = MATH[({PTC$Avg}+{PTC$_Zero})*{PTC$_Gain}]	! Write as received
				    ! Check As received for out of tolerance.  Added 4/2011 SH
			    	If {R32AR$} > ({LTemp2}+{LARRedTol}) | {R32AR$} < ({LTemp2}-{LARRedTol}) Then			! Red
						DelayWrite 32CLR$ = 2
						Log Channel $ 32 As received out of UL/IEC spec {R32AR$}.  Spec {LTemp2} +- {LARRedTol}
					    Set 0 {PTolFlag} = 2
				    ElseIf {R32AR$} > ({LTemp2}+{LARYelTol}) | {R32AR$} < ({LTemp2}-{LARYelTol}) Then		! Yellow
						DelayWrite 32CLR$ = 1
						Log Channel $ 32 As received out of Whirlpool spec {R32AR$}.  Spec {LTemp2} +- {LARYelTol}
					    Set 0 {PTolFlag} = MAX[1,{PTolFlag}]													! Record Yellow unless already Red
					Endif

   		    		Math 4 {PValue2} = ({LTemp?}-{PTC$Avg})/{PTC$_Gain}
			        Calibrate SetZero {PTC$} {PValue2} 								! Set Zero for this TC
			    	!DelayWrite 32AC$ = MATH[({PTC$Avg}+{PTC$_Zero})*{PTC$_Gain}]	! Write after cal
					Math 2 {PValue1} = ({PTC$Avg}+{PTC$_Zero})*{PTC$_Gain}
			    	Log PTC$ Zero Avg: {PTC$_Avg} Calc Avg: {PValue1} New Zero: {PTC$_Zero} Old Zero: {PValue}
			    	DelayWrite ZeroStD$ = {PTC$_Stdev}								! Write standard deviation
			    	DelayWrite Zero$ = *{PValue2}			! New zero
					Set 0 {PCalFlag} = 1					! A channel needed calibration
	   		    	If ((ABS[{PTC$_Avg}-{LTemp?}]) > 3) Then	! See if it is out of the 3 deg window
	   		    		Math {POutCnt} = {POutCnt}+1		! Count up the number that are out
	   		    	Endif
			    Elseif {PTC$} > -900 Then			! No calibration needed
			    	DelayWrite Zero$ = {PValue}			! Old zero
	    		    Math 3 {PValue2} = ({PTC$Avg}+{PTC$_Zero})*{PTC$_Gain}
			    	DelayWrite 32AR$ = {PValue2}			! Write as received
				Else										! Invalid channel
			    	DelayWrite Zero$ = {PValue}			! Old zero
			    	Log PTC$ Is Invalid, was skipped					
			    Endif
		    	Math 3 {PValue} = SQRT[{PTC$_Stdev}*{PTC$_Stdev}+{LCalTCStdUncert}]	! Calculate measurement uncertainty by adding the square of the std dev to the constant (experimental+spec) deviation
		    	DelayWrite U$ = {PValue}					! Write U of M		 
	    	Elseif ? = 3 Then	! 90 after cal
   		    	If {PTC$} > -900 & ({PTC$_Avg} > ({LTemp?}+{STCwin}) | {PTC$_Avg} < ({LTemp?}-{STCwin})) Then	! See if we need to calibrate
   		    		Set 4 {PValue} = {PTC$_Gain}
   		    		Math 4 {PValue2} = {LTemp?}/({PTC$Avg}+{PTC$_Zero})				! Calculate new gain
			        Calibrate SetGain {PTC$} {PValue2} 								! Set Gain for this TC
			    	Log TC$ New Gain: {PTC$_Gain} Old Gain {PValue}
	    		    Set 4 {Pvalue} = {PTC$_Gain}
			    	DelayWrite Gain$ = *{PValue}			! New zero
					Set 0 {PCalFlag} = 1					! A channel needed calibration
	   		    	If ((ABS[{PTC$_Avg}-{LTemp?}]) > .3) Then	! See if it is out of the .3 deg window
	   		    		Math {POutCnt} = {POutCnt}+1		! Count up the number that are out
				    	Log TC$ out of .3 window {PTC$_Avg}.  Number out:{POutCnt}
	   		    	Endif
			    Else
	    		    Set 4 {Pvalue} = {PTC$_Gain}
			    	DelayWrite Gain$ = {PValue}			! Old gain
			    Endif
		    	If {PTC$} > -900 Then
					DelayWrite 90AC$ = MATH[({PTC$Avg}+{PTC$_Zero})*{PTC$_Gain}]	! Write after cal
					DelayWrite 32AC$ = MATH[({RZeroRaw$}+{PTC$_Zero})*{PTC$_Gain}]	! Write after cal
				Endif
		    ElseIf ? = 6 Then		! -4 after Calibration
		    	If {PTC$} > -900 Then
					DelayWrite 4AC$ = {PTC$_Avg}
				Else
					DelayWrite 4AC$ = -999
				Endif	
		    ElseIf ? = 8 Then		! 45 after Calibration
		    	If {PTC$} > -900 Then
					DelayWrite 45AC$ = {PTC$_Avg}
				Else
					DelayWrite 45AC$ = -999
				Endif	da
		    ElseIf ? = 10 Then		! 110 after Calibration
		    	If {PTC$} > -900 Then
					DelayWrite 110AC$ = {PTC$_Avg}
				Else
					DelayWrite 110AC$ = -999
				Endif	
		    Endif
	    	Math $ = $ +1
	    If $ <= {SStopChan} Then
	        Goto SaveVals
	    Endif
		! Done with this Temp range, so save all chans to DB
    	If {SStopChan} = {SNumChans_right} Then		
			Gosub SetupDatabase
			Gosub SaveToDatabase
		Endif
    	Set {PStep} = 16			
    ElseIf {PStep} = 16 Then		    
    	If "{SDo110Check}" = "Y" Then	! Figure out which is the last check
    		Set {PLastCheck} = 10
    	ElseIf "{SDo45Check}" = "Y"
    		Set {PLastCheck} = 8
    	ElseIf "{SDo4Check}" = "Y"
    		Set {PLastCheck} = 6
		Endif    		
	    If ? = 5 Then				! --90 as Received
	    	DelayWrite D90AR = {LLabel?}
    		Set {PStep} = 10		! Done with 90, time for 32 as received        	    			         	
			Set ? = 4				! Do 32°F As Recvd next
    	Elseif ? = 4 Then			! --32 as Received/after cal
	    	If {POutCnt} > 0 Then
    			Prompt AbortRetryIgnore {POutCnt} Channels were more than .3 deg out.  Could be a calibrator issue
				Begin
					If {APrompt} = 4 Then		! Retry
						Leave					! Don't change ? to move to next
					ElseIf {APrompt} = 3 Then	! Abort
						Status Yellow Calibration Cancelled
						Halt
					ElseIf {APrompt} = 5 Then	! Ignore
						Set ? = 3				! Do 90°F after cal next		
						Leave
					Endif
				Loop	
	    	Else
				DelayWrite D32AR = {LLabel?}
				Set ? = 3				! Do 90°F after cal next		
			Endif				    				    	
			
	    	DelayWrite D32AC = {LLabel2}
    		Set {PStep} = 10		! Done with 90, time for 32 as received        	    			         	
    	Elseif ? = 3 Then			! --90 after cal
	    	If {POutCnt} > 0 Then
    			Prompt AbortRetryIgnore {POutCnt} Channels were more than .3 deg out.  Could be a calibrator issue
				Begin
					If {APrompt} = 4 Then		! Retry
						Set {PStep} = 10		! 
						Leave
					ElseIf {APrompt} = 3 Then	! Abort
						Status Yellow Calibration Cancelled
						Halt
					ElseIf {APrompt} = 5 Then	! Ignore
						Leave
					Endif
				Loop	
	    	Else				    				    	
				Set {PStep} = 10		! This will get changed if needed
				DelayWrite D90AC = {LLabel?}
				If {PLastCheck} = $ Then
					Gosub CheckLast
				ElseIf "{SDo4Check}" = "Y"
					Set ? = 6			! Do -4°F after cal next
				ElseIf "{SDo45Check}" = "Y"
					Set ? = 8			! Do 45°F after cal next
				Else
					Set ? = 10			! Do 110°F after cal next
				Endif			
			Endif
    	Elseif ? = 6 Then			! ---4 after cal
    		Set {PStep} = 10		! This will get changed if needed
	    	DelayWrite D4AC = {LLabel?}
	    	If {PLastCheck} = $ Then
		    	Gosub CheckLast
	    	ElseIf "{SDo45Check}" = "Y"
				Set ? = 8			! Do 45°F after cal next
	    	Else
				Set ? = 10			! Do 110°F after cal next
			Endif				    				    	
    	Elseif ? = 8 Then			! -45 after cal
    		Set {PStep} = 10		! This will get changed if needed
	    	DelayWrite D45AC = {LLabel?}
	    	If {PLastCheck} = $ Then
		    	Gosub CheckLast
	    	Else
				Set ? = 10			! Do 110°F after cal next
			Endif				    				    	
    	Elseif ? = 10 Then			! -45 after cal
    		Set {PStep} = 10		! This will get changed if needed
	    	DelayWrite D110AC = {LLabel?}
	    	Gosub CheckLast
		Endif    	
    ElseIf {PStep} = 17 Then		! Changed channels - partial calibration
    	If {APrompt} = 1 Then		! Start 90°F As Recvd
    		Set {PStep} = 9		! 
    	Endif
    ElseIf {PStep} = 99 Then
    	Leave
    EndIf
Loop
Abort
DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = Cal TC Auto v{PVersion}
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
!DelayWrite D Title

If {PTolFlag} = 1 Then
    Write 1TM = HMS[{ATestTime}]
	Write 1CM = At least one channel was received out of Whirpool tolerance +- {LARYelTol}
ElseIf {PTolFlag} = 2 Then
    Write 1TM = HMS[{ATestTime}]
	Write 1CM = At least one channel was received out of UL/IEC tolerance +- {LARRedTol}
Endif

If "{SReport}" = "Y" Then
	If {SNumChans_right} >= 40 Then
		Set {SPlotList8} = TC1;TC7;TC15;TC23;TC30;TC45
	Elseif {SNumChans_right} >= 30 Then
		Set {SPlotList8} = TC1;TC7;TC15;TC23;TC30;TC40
	Elseif {SNumChans_right} >= 24 Then
		Set {SPlotList8} = TC1;TC6;TC12;TC16;TC20;TC24
	Elseif {SNumChans_right} >= 20 Then
		Set {SPlotList8} = TC1;TC6;TC12;TC16;TC20
	Elseif {SNumChans_right} >= 12 Then
		Set {SPlotList8} = TC1;TC6;TC8;TC10;TC12
	Else
		Set {SPlotList8} = TC1;TC3;TC6;TC7;TC10
	Endif	
	Result Report CALTC
	Result Print A
    Status Blue Writing Gains and offets to database
	Set ? = 0			! Save gains and zeroes
	Gosub SetupDatabase	! Setup for gains and zeroes
	Gosub SaveToDatabase! Save
    Status Blue Writing Database LabResults
    Log Writing LabResults
	! Write end date so query-based RTSReport will generate PDF
	Database Use 0
	Database {LDatabase} Table Results key {ARevision}
	Database EndDate = {ADate} HMS[{ATime_Raw}]
	Database Lab = 13
	Database Stall = {AStation_Title}
	Database Tester = {SOperDir}
	Database Comment1 = {SEquipment}
	Database Comment2 = {SCalComment}
	Database ResultReport = CALTC
	Database TestDate = {AStartDate} {AStartTime}
	Database TestType = TCCal
	Database ResultFile = stands\TCCAL_{AStation_Title}_{ARevision}
	
	Database Write
!    Status Blue Writing Database tcCalibration
!    Log Writing tcCalibration
	! Write lab-specific info
!	Database {LDatabase} table tcCalibration key {ARevision}
!	Database TestNumber = {ARevision}
!	Database TempUnits = {STempUnits}
!	Database Write	
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
Endif

Status Grey TC Calibration finished TN: {ARevision}
Log TC Calibration finished TN: {ARevision}
Driver RTPOpenTCRate 5			! Enable open TC detection every 5 samples
End

Sub ClearAverages
	Log Averages cleared for {LLabel?} Step {PStep}
	Set 0 {POutCnt} = 0		! Reset counter for out of calibration
	Set $ = {SStartChan}		! Save this value
	Label ClrAvg
    	Set 3 {PTC$Avg} = 0
    	Math $ = $ +1
    If $ <= {SStopChan} Then
        Goto ClrAvg
    Endif
    Set 0 {PAvgCnt} = 0
    Clear Avg
EndSub
! Build averages, keep track of sample count
Sub BuildAverages
	Set $ = {SStartChan}
	If {PTC$_Cnt} <> {PLastSample} Then	! New value received
		Set 0 {PLastSample} = {PTC$_Cnt}
		If {PTC$_Cnt} > 1 Then
			Math 0 {PRate} = {ATestTime}-{PLastSampleTime}
		Endif
    	!Log Raw value for TC $ {PTC$_Raw} {PStep} {PCommand}
		Label BldAvg
	    	Math 2 {PTC$Avg} = {PTC$Avg} + {PTC$_Raw}
	    	Math $ = $ +1
	    If $ <= {SStopChan} Then
	        Goto BldAvg
	    Endif
	    Math 0 {PAvgCnt} = {PAvgCnt} +1
		Set 0 {PLastSampleTime} = {ATestTime}
	Endif
EndSub
Sub CalcAverages
	Set $ = {SStartChan}		
	Label CalcAvg
    	Math 3 {PTC$Avg} = {PTC$Avg}/{PAvgCnt}
    	Math $ = $ +1
    If $ <= {SStopChan} Then
        Goto CalcAvg
    Endif
    Set 5 {PAvgCnt} = 0
EndSub
Sub SetupDatabase
	Database Use 1
	Database {LDatabase} table tc_CalibrationSnapshots key InsertOnly
	Database TestNumber = {ARevision}
	Database Recordtype = ?
	Database Stall = {AStation_Title}
	If ? = 3 Then				! Setup database for 32 after cal since we calc both at one time
		Database Use 0
		Database {LDatabase} table tc_CalibrationSnapshots key InsertOnly
		Database TestNumber = {ARevision}
		Database Recordtype = 2
		Database Stall = {AStation_Title}
		Database Use 1
	ElseIf ? = 0 Then			! Setup database for gain value 
		Database Use 0
		Database {LDatabase} table tc_CalibrationSnapshots key InsertOnly
		Database TestNumber = {ARevision}
		Database Recordtype = 1
		Database Stall = {AStation_Title}
		Database Use 1
	Endif
EndSub
Sub SaveToDatabase
	Set $ = 1
	Label Save2DB
	    If ? = 5 Then
			Database TC$ = {R90AR$}
    	Elseif ? = 4 Then
			Database TC$ = {R32AR$}
      	Elseif ? = 3 Then
			Database TC$ = {R90AC$}
			Database use 0
			Database TC$ = {R32AC$}
			Database use 1
      	Elseif ? = 0 Then
			Database TC$ = {PTC$_Zero}
			Database use 0
			Database TC$ = {PTC$_Gain}
			Database use 1
      	Endif    	
    	Math $ = $ +1
    If $ <= {SStopChan} Then
        Goto Save2DB
    Endif
	Database Write
	If ? = 3 Then	! Save after cal values for 32
		Database use 0
		Database Write				
		Database use 1
	Endif
EndSub
Sub ResetCalConst
	Set $ = 1
Label ResetCC1

	Calibrate SetGain {PTC$} 1.00
	Calibrate SetZero {PTC$} 0.0
	Log Set TC$ Zero to 0 and Gain to 1
	Math $ = $ + 1
    If $ <= {SStopChan} Then
        Goto ResetCC1
    Endif

EndSub
! Finishes if it's the last block of TCs, if not then auto increments and re-loops
Sub CheckLast
	! This needs to happen for the last calibration that is to be performed for a TC block
	If {SStopChan} = {SNumChans_right} Then		
		Set {PStep} = 99			! Flag to leave loop
	Else
        Status Green TC Cal {PVersion}: Finished with {SStartChan}-{SStopChan}
		Math 0 {PValue} = 1+{SStopChan} - {SStartChan}	! Auto set the next range
		Math 0 {SStartChan} = {SStopChan} +1
		If {ASystem} = 5 Then	! Mobile Daq 21-30 are type T
			Math 0 {SStopChan} = {SStartChan} + 10
		Else					! Regular station, 21-28 are type T, 29,30 are type K
			Math 0 {SStopChan} = {SStartChan} + 7
		Endif
		If {SStopChan} > {SNumChans_right} Then
			Set 0 {SStopChan} = {SNumChans_right}
		Endif
		Set {PStep} = 17		! Go back and do next channels
		Set ? = 5				
		Prompt OK Changed Channels- Start:{SStartChan} End:{SStopChan}
	Endif
EndSub
