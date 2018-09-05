! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr   : VAW Calibration procedure
!    File    : VAWCAL.CMD
!    Rev     : 1.0
!    By      : Mark Hooks
!    Date    : 2-Feb-99
!    Last change on :
!	 8-12-99 SH Changed zero calibration to behave like gain cal
!	 9-1-00  SH Added check for gain/offset deviations and made compatible with Ft. Smith 
!	 5-16-02  SH Added feature to revert to previous test when finished.
!	 10-09-02 SH Added more database fields: Actual, As Received
!	 3-10-03  v 1.5 SH Added check for amps and watts zero
!	 10-19-06 v 2.2 SH Added Mexico support
!	 01-03-07 v 3.0 SH Added new load unit support
!						Verifies at 10 W and 500 W after calibration
!	 03-02-07 v 3.1 SH Added reports, StdDev
!	 03-30-07 v 3.2 SH Added Within average noise monitoring
!						Added ability to auto stop test
!	 05-02-07 v 3.3 SH Changed lab table, added verion pseudo
!	 05-02-07 v 3.4 SH Changed from using average value from Yok, to raw reading and averaging in procedure
!	 07-26-07 v 3.5 SH Changed from using internal RTS calibration descaling to setting gains manually
!	 07-26-07 v 3.6 SH Fix for mx+b for calculating after calibration results
!	 06-26-08 v 3.7 SH Added uncertainty calculations
!	 06-26-08 v 3.8 SH Storing uncertainties in database
!	 09-15-08 v 3.9 SH Fixed annotation index out of range when retrying
!	 09-16-08 v 4.0 SH Check for voltage at setpoint and support Singlewhr start range other than 1
!	 04-16-09 v 4.1 SH Don't wait 10 seconds for load reset for whr
!	 07-07-09 v 4.2 SH Changed decimal places from 5 to 4 for watts and volts, kept at 5 for amps
!	 08-11-09 v 4.3 SH Low and High watts verification save as After cal, not as Received values
!	 02-23-10 v 4.4 SH Added a final watts verification step for Mexico 
!						Instead of just showing 1 value after cal, now samples and shows another graph with results
!	 08-27-10 v 4.5 SH Added notification if As received error is > 1% for VAW
!	 09-22-10 v 4.6 SH Added fix for comment flag for no adjust
!	 04-22-12 v 4.7 SH Added notification if uncertainty is too high for watts or amps
!						Ranges of 1 for watts and .5 for volts were set by looking at many calibrations and judging if there was too much variation during the test
!	 12-10-13 v 4.8 SH Changed Clear all to Clear Whr to fix graph issue
!	 05-05-14 v 4.9 SH Added limit checks for whr
!	 12-11-15 v 5.0 SH Added Whr detail for plot
!	 03-24-16 v 5.1 SH Added a minimum UCL and LCL range of .001
!	 05-24-16 v 5.2 SH Vaw Cal Cert
!	 08-18-16 v 5.3 SH Show if test passed/failed at end.
!	 10-26-16 v 5.4 SH Added Repeatability to Uncertainty calculation
!
! Todo Don't adjust zeros if in the noise band
! WARNING : The {Pcommand} var is refelected back from the test manager. After setting the value
!           you must wait until it is returned from the manager.
!           Don't do this:
!               Set {Pcommand} = 2
!               If {Pcommand} = 2 then
! Command settings {PCommand}
! 0 Cal procedure not running
! 1 Cal ready
! 2 Collect average
! 3 Zero cal active
! 4 Gain cal active
! 5 Kwh cal active
! 6 Cancel cal button pressed
! 7 Update values button pressed
! 8 Request updated values
! 9 Intermediate cal step
! 10 Automatic calibration

! AutoCal Settings {PAutoCal}
! This variable is not tied to the Cal dialog
! 0 No autocal, or complete
! 1 Zero Waiting for range
! 2 Zero Calibration
! 3 Gain Calibration
! 4 Whr Clibration
! 5 Low Wattage Verification
! 6 High Wattage Verification
! 7 Calibration Verification
! 10 Check for range change or complete

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
! VoltageType settings {PRange}
! 0-9 Select an item in the list
! 10 115V 60Hz only
! 20 230V 50Hz only
! 30 127V 60Hz only
! 40 240V 60Hz only
! 50 115V / 240V
! 60 115V / 240V 60Hz and 220V 50Hz
! 70 115V 60Hz / 220V 50Hz
! 80 115V / 230V 60Hz Plug Switch Auto t-bar
! 90 115V / 230V 60Hz Plug Switch manual t-bar
! 100 Power off added to list
!
! Step settings {PStep}
!  1 Gain: Waiting for no load
!  2 Gain: Averaging
!  3 Gain: Waiting for values
!  4 Gain: Waiting for response for high deviation
!  5 Gain: Waiting for response for low watts
!  6 Gain: Waiting for response for out of control limit watts gain
! 10 Whr : Waiting for no load
! 11 Whr : Waiting for integrator reset
! 12 Whr : Waiting for load applied
! 13 Whr : Waiting for load on
! 14 Whr : Integration over, waiting for load off
! 15 Whr : Waiting for Values
! 21 Zero: Waiting for no load
! 22 Zero: Averaging
! 23 Zero: Waiting for values
! 31 Low Watt Ver: Waiting for no load
! 32 Low Watt Ver: Averaging
! 33 Low Watt Ver: Waiting for values
! 41 High Watt Ver: Waiting for no load
! 42 High Watt Ver: Averaging
! 43 High Watt Ver: Waiting for values
!
! Annot legend/key
! 1 200 Watt Range 1
! 2 200 Watt Range 2
! 3 10  Watt Range 1
! 4 10  Watt Range 2
! 5 500 Watt Range 1
! 6 500 Watt Range 2
! 7 Deviation high
!
Point Clear
If ({LLocation}=8) Then		! Mexico
	If ({ASystem} = 2) & ({AStation} > 4) & ("{SSecTrans}" = "Y") Then
    	Point Vaw220
    	Log Using VAW220 point file
    Endif
Else
	Point VAW
Endif
Point VawCal
Lookup location

' Get labels for columns for report
Lookup VawCal

If {LVAWLab} > -998 Then
	Log Lab = {LVAWLab}
Else
	Log Lab = 11
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
If "LEFT[{SEquipmentUsed_Left},13]" = "Yokogawa 3000" Then	
	Log Using Yok 3000 for calibration
Endif

Revision
! When finished return to previous procedure
Transfer Procedure {Aprocedure_Last}

Plot Interval 10
Plot SaveAs stands\VAWCAL_{AStation_Title}_{ARevision}
Result SaveAs stands\VAWCAL_{AStation_Title}_{ARevision}
Log SaveAs stands\VAWCAL_{AStation_Title}
If "{SVerifyCal}"="Y" Then
	Result Report VawCalCert+VawCalVer
Else
	Result Report VawCalCert
Endif
Result Print A

Set 1 {PVersion} = 5.4
Plot Scale Watt = 0.1
Plot Scale WattAct = 0.1
Plot Scale Volt = 0.5
! -- Calc the calibration station number in Ft. Smith --
If {LLocation} = 1 Then
    Math 0 {PCalStat}=(({ASystem} - 1) * 12) + {AStation}
    Write {PCalStat}
Endif

Write StartTime = {ADate} HMS[{ATime_Raw}]

Driver RTPVAWSampleRate {SVawSampleRate} 	! Set rtp samplerate

! -- Disable cycle controls --
Transfer Filter Off
!Other locations than Evv
If {LLocation} <> 4 Then
	Transfer Interval 2
	Trend Interval 10
Else
	Transfer Interval 60
Endif
Trend Clear
Clear All
Calibrate Enable
!Calibrate SetGain {PCommand} 1.0	! Make sure {PCommand} gain and zero is correct
!Calibrate SetZero {PCommand} 0.0	! Make sure {PCommand} gain and zero is correct

! Adjust the decimal places
Set 5 {PKwhrAct} = 0
Set 5 {PWhrAct} = 0
Set 5 {PWhr} = 0
Set 4 {PAmpAct} = 0
Set 4 {PWattAct} = 0
Set 4 {PWattAct_Raw} = 0
Set 4 {PWatt} = {PWatt}
Set 4 {PAmp} = 10
Set 3 {PVolt} = {PVolt}
Set 3 {PVoltAct} = 0
Set 0 {PCommand} = 1
Set 0 {PLoad} = 1
Set 0 {PStep} = 0
Set 0 {PTimer} = 0
Set 0 {PCurRange} = 1
Set 0 {PAutoCal} = 0
Set 0 {PRngTime} = 0
Set 0 {PMaxRange} = 1
Set 0 {PMinRange} = 1
Set 0 {PType} = 0
Set 0 {PMessIndex} = 0
Set 0 {PTestCount} = 1
Set 0 {PReportLine} = 1
Set 0 {PError} = 0

Status Yellow Setting up Voltage v{PVersion}
Log Starting VAW Calibration Procedure {PVersion}, saving to {LLabResults}
Transfer Monitor norm cycle
! Start with the current voltage and frequency
! Get the voltage type supported by this stall
! Remove the voltage off status
Math {PType} = {AVoltageType} % 100

Log Original Voltage Setpoint {SVoltSet#}
Set 2 {PSetVolt} = {SVoltSet#}

If {PWhr_Gain} = 1.000000 Then
	Log Only verifying Whr value
Endif

	Label Restart
! Type 10 -
If {PType} = 10 Then
	Log Starting with type 10 - 115V 60Hz single range
! Type 40 - India
ElseIf {PType} = 40 Then
	Log Starting with type 40 - 230V 60Hz single range
    Set {PCurRange} = 2
    Set {PMaxRange} = 2
    Set {PMinRange} = 2
    If {SVoltSet#} < 220 Then
    	Log Setting voltage to 230
        Set {SVoltSet#} = 230
        Set {SFreqSet#} = 60   	
    Endif
! Type 50 - 115V 60Hz / 220V 60Hz
ElseIf {PType} = 50 Then

    If ({SFreqSet#} < 55) Then
        Set {PCurRange} = 2
        Log Starting with type 50 - 220V 50Hz range
    Else
        Set {PCurRange} = 1
        Log Starting with type 50 - 115V 60Hz range
    Endif
    Set {PMaxRange} = 2
! Type 60 -
ElseIf {PType} = 60 Then

    If ({SVoltSet#} > 120) & ({SFreqSet#} < 55) Then
        Set {PCurRange} = 3
        Log Starting with type 60 - 220V 50Hz range
    ElseIf ({SVoltSet#} > 120) Then
        Set {PCurRange} = 2
        Log Starting with type 60 - 240V 60Hz range
    Else
        Set {PCurRange} = 1
        Log Starting with type 60 - 115V 60Hz range
    Endif
    ! Was set to 3 but caused an error with zero3  SH 3/2004
    ! Setting back to 3 but adding code to jump the zero SH 5/2007
    Set {PMaxRange} = 3
! Type 70 - 115V 60Hz / 220V 50Hz
! Type 20 - 230V 50Hz single range - Italy SH 9/2008
ElseIf {PType} = 70 | ({PType} = 20) Then

    If {PType} = 20 Then
		If {SVoltSet#} < 220 Then
			Log Setting voltage to 230
			Set {SVoltSet#} = 230
		Endif
    	Set {SFreqSet#} = 50
	    Set {PCurRange} = 2
	    Set {PMaxRange} = 2
	    Set {PMinRange} = 2
        Log Starting with type 20 - 230V 50Hz range - Single range
    Else
	    If ({SVoltSet#} > 150) Then
	        Set {PCurRange} = 2
	        Log Starting with type 70 - 220V 50Hz range
	    Else
	        Set {PCurRange} = 1
	        Log Starting with type 70 - 115V 60Hz range
	    Endif
    Endif
    Set {PMaxRange} = 2
! Type 80 - 115V 60Hz / 220V 60Hz Plug change
ElseIf ({PType} = 80) | ({PType} = 90) Then
    If ({SVoltSet#} > 120) Then
        Set {PCurRange} = 2
        Log Starting with type 80/90 - 230V 60Hz range
    Else
        Set {PCurRange} = 1
        Log Starting with type 80/90 - 115V 60Hz range
    Endif
    Set {PMaxRange} = 2
Else
        Log Voltage range type {AVoltageType} control not supported yet
Endif

Status Yellow VAWCal v{PVersion}-Getting cal limits from database
Database {LDatabase} Query execute vaw_GetCalibrationLimits '{Astation_title}', 1
Begin
	If {AdbQueryResults} = 1 Then
		Set 4 {PWattGainUCL1} = {QXUCL}
		Set 4 {PWattGainLCL1} = {QXLCL}
		Set 0 {PWattGainCOUNT1} = {QCount}
		If {PWattGainCOUNT1} >= 3 Then
			Log Upper Control limit for watts gain range 1 {PWattGainUCL1}, lower {PWattGainLCL1}, with {PWattGainCOUNT1} data points
			Math 5 {PValue} = AVG[{PWattGainUCL1},{PWattGainLCL1}]
			If ({PWattGainUCL1} - {PValue}) < .001 Then
				Math 5 {PWattGainUCL1} = {PValue} + .001
				Log UCL1 changed to {PWattGainUCL1} to keep minimum of .001
			Endif
			If ({PValue} - {PWattGainLCL1}) < .001 Then
				Math 5 {PWattGainLCL1} = {PValue} - .001
				Log LCL1 changed to {PWattGainLCL1} to keep minimum of .001
			Endif
		Endif
		Leave
	ElseIf {AdbQueryResults} >= 2 Then
		Set 0 {PWattGainCOUNT1} = -1
		Log Get 120 Cal Limits Error: {AdbQueryMessage}
		Leave
	Endif
Loop

If {PMaxRange} > 1 Then
	Status Yellow VAWCal v{PVersion}-Getting cal limits 2 from database
	Database {LDatabase} Query execute vaw_GetCalibrationLimits '{Astation_title}', 2
	Begin
		If {AdbQueryResults} = 1 Then
			Set 4 {PWattGainUCL2} = {QXUCL}
			Set 4 {PWattGainLCL2} = {QXLCL}
			Set 0 {PWattGainCOUNT2} = {QCount}
			If {PWattGainCOUNT2} >= 3 Then
				Log Upper Control limit for watts gain range 2 {PWattGainUCL2}, lower {PWattGainLCL2}, with {PWattGainCOUNT2} data points
			Endif
			Math 5 {PValue} = AVG[{PWattGainUCL2},{PWattGainLCL2}]
			If ({PWattGainUCL2} - {PValue}) < .001 Then
				Math 5 {PWattGainUCL2} = {PValue} + .001
				Log UCL2 changed to {PWattGainUCL2} to keep minimum of .001
			Endif
			If ({PValue} - {PWattGainLCL2}) < .001 Then
				Math 5 {PWattGainLCL2} = {PValue} - .001
				Log LCL2 changed to {PWattGainLCL2} to keep minimum of .001
			Endif
			Leave
		ElseIf {AdbQueryResults} >= 2 Then
			Set 4 {PWattGainCOUNT1} = -1
			Log Get 220 Cal Limits Error: {AdbQueryMessage}
			Leave
		Endif
	Loop
Endif

If {LLocation} = 4 Then			! Evansville - get dates for calibration equipment
	Status Yellow Getting calibration dates from database v{PVersion}
	Database {LDatabase} Query execute cal_get_device_info {SEquipmentUsed_Right}
	Begin
		If {AdbQueryResults} = 1 Then
			Set -2 {LValue} = Last Cal: {QLastCal} Next: {QNextCal}
			Write EquipCalDates = {LValue}
			Log {SEquipmentUsed_Left} {LValue}
			Leave
		ElseIf {AdbQueryResults} >= 2 Then
			Log Get Cal Dates Query Error:{AdbQueryMessage}
			Leave
		Endif
	Loop
Endif

Status Green Ready for Calibration v{PVersion}
Math 0 {PRange} = {AVoltageType} + {PCurRange}
Math 0 {PSetRange} = {PRange}
Math 0 {PStartRange} = {PCurRange}

! ------------------------- Main loop -------------------------
Begin

! Build averages
    If {PWatt_Cnt} <> {PLastSample} Then
        Math 0 {PLastSample} = {PWatt_Cnt}
	    Math 4 {PAvgVolt} = {PAvgVolt} + {PVolt_Raw}
	    Math 5 {PAvgAmp} = {PAvgAmp} + {PAmp_Raw}
	    Math 4 {PAvgWatt} = {PAvgWatt} + {PWatt_Raw}
	    Math 4 {PAvgVoltAct} = {PAvgVoltAct} + {PVoltAct_Raw}
	    Math 5 {PAvgAmpAct} = {PAvgAmpAct} + {PAmpAct_Raw}
	    Math 4 {PAvgWattAct} = {PAvgWattAct} + {PWattAct_Raw}
	    Math 0 {PAvgCnt} = {PAvgCnt} + 1
!	    Log PStep = {PStep}, Pcommand = {PCommand}, PAvgCnt = {PAvgCnt}
	    Math 2 {PRunWattAvg} = {PAvgWatt} / {PAvgCnt}
		! Also record "as received" values
	    Math 3 {PArAvgVolt} = {PArAvgVolt} + {PVolt}
	    Math 3 {PArAvgAmp} = {PArAvgAmp} + {PAmp}
	    Math 3 {PArAvgWatt} = {PArAvgWatt} + {PWatt}
	    Set 2 {PWattsStdDev} = {PWatt_Stdev}
	    Set 2 {PVoltsStdDev} = {PVolt_Stdev}
        If $ < 3 & ({PStep} = 2 | {PStep} = 3 | {PStep} = 4) Then		! Write each value of the YokWatts-AsReceivedWatts during the gain cal
        	MATH 4 {PVoltsDelta} = {PVoltAct_Raw}-{PVolt}
        	MATH 4 {PAmpsDelta} = {PAmpAct_Raw}-{PAmp}
        	MATH 4 {PWattsDelta} = {PWattAct_Raw}-{PWatt}
			! These values are used in graphs to see within the averaging period
        	Write VoltsDelta$ = {PVoltsDelta}
        	Write VoltsYok$ = {PVoltAct_Raw}
        	Write VoltsRTS$ = {PVolt}
        	Write AmpsDelta$ = {PAmpsDelta}
        	Write AmpsYok$ = {PAmpAct_Raw}
        	Write AmpsRTS$ = {PAmp}
        	Write WattsDelta$ = {PWattsDelta}
        	Write WattsYok$ = {PWattAct_Raw}
        	Write WattsYokAvg$ = {PWattAct}
        	Write WattsRTS$ = {PWatt}
        	Write LoadUnitTemp$ = {PLoadUnit}
        	If {PAvgcnt} > 1 Then		! Calculate difference between readings
			    Math 4 {PRunGain} = {PWattAct}/{PRunWattAvg}
        		MATH 4 {PWattsDeltaRangeSum} = {PWattsDeltaRangeSum} + ABS[{PWattsDelta}-{PWattsDelta_Last}]
        		MATH 4 {PVoltsDeltaRangeSum} = {PVoltsDeltaRangeSum} + ABS[{PVoltsDelta}-{PVoltsDelta_Last}] 
        		MATH 4 {PAmpsDeltaRangeSum} = {PAmpsDeltaRangeSum} + ABS[{PAmpsDelta}-{PAmpsDelta_Last}] 
	        	MATH 4 {PValue} = ABS[{PWattsDelta}-{PWattsDelta_Last}]	! Debug to make sure calculations are OK
	        	Write WattsDeltaRange$ = {PValue}
        	Endif       	
        ElseIf {PStep} = 52 Then		! Write each value of the YokWatts-AsReceivedWatts during the after cal verification
        	MATH 4 {PVoltsDelta} = {PVoltAct_Raw}-{PVolt}
        	MATH 4 {PAmpsDelta} = {PAmpAct_Raw}-{PAmp}
        	MATH 4 {PWattsDelta} = {PWattAct_Raw}-{PWatt}
			! These values are used in graphs to see within the averaging period
        	Write VoltsACDelta$ = {PVoltsDelta}
        	Write VoltsACYok$ = {PVoltAct_Raw}
        	Write VoltsACRTS$ = {PVolt}
        	Write AmpsACDelta$ = {PAmpsDelta}
        	Write AmpsACYok$ = {PAmpAct_Raw}
        	Write AmpsACRTS$ = {PAmp}
        	Write WattsACDelta$ = {PWattsDelta}
        	Write WattsACYok$ = {PWattAct_Raw}
        	Write WattsACYokAvg$ = {PWattAct}
        	Write WattsACRTS$ = {PWatt}
        Endif
	Endif
    
    Math {PSysWattHr}={PWhr}*1000
    Math {PWattHrDiff}={PWhrAct}-{PSysWattHr}
! Check for remote cal dialog just opened or cancel pressed
    If {PCommand} = 6 Then
        Status Green Start the calibration
        Clear All
        Set {PCommand} = 1
        Set {PAutoCal} = 0
        Set {PLoad} = 1
        Set {PStep} = 0
        Set {PRngTime} = 0
        Set {PTimer} = 180	! 3 minute timeout for range
        ! Tell the cal tool the ranges supported and the current range
        Math {PRange} = {AVoltageType} + {PCurRange}
    Endif

! Check for automatic calibration
    If {PCommand} = 10 Then
        Set {PAutoCal} = 1
        Status Yellow Please wait for auto cal
        Set {PStartRange} = {PCurRange}
        Set {PCommand} = 9
        Set {PLoad} = 1

    ElseIf {PAutoCal} > 0 Then

        ! Is voltage setup
        If {PRngTime} < {ATestTime} Then

            ! Wait for voltage to get close
            If {PAutoCal} = 1 Then
            	Math {PValue} = ABS[{SVoltSet#}-{PVoltAct_Raw}]
            	If {PValue} > 2 & {Llocation} <> 11 & ("{SBypassVolt}" = "N") Then		! Don't check for this in Amana
            		If {ATestTime} < {PTimer} Then
                    	Status Yellow Waiting for voltage to get stable SP:{SVoltSet#} Act:{PVoltAct_Raw} StdDev:{PVolt_Stdev}
                    ElseIf {PValue} < 15 Then					! Voltage is not auto controlled and is close enough, I guess
                    	Log - Timeout (3 min) waiting for range change. {PTimer}
		                Set {PCommand} = 3
		                Set {PAutoCal} = 2
                    Endif
            	Else
	                Set {PCommand} = 3
	                Set {PAutoCal} = 2
	            Endif

            ! Now check for range change
            ElseIf {PAutoCal} = 10 Then

                Math {PCurRange} = {PCurRange} +1
                If {PCurRange} > {PMaxRange} Then
                   	Set {PCurRange} = {PMinRange}                
                Endif

                If {PCurRange} <> {PStartRange} Then
                    Status Yellow Please wait changing ranges ({PStartRange}->{PCurRange})
                    Log Changing ranges ({PStartRange}->{PCurRange})
                    Set {PCommand} = 9
                    Set {PAutoCal} = 1                    
	    	        Math {PRngTime} = {ATestTime} + 20		! Delay for change of range
	    	        Math {PTimer} = {ATestTime} + 300		! Set timeout for range change - 5 min
                    Log Database values written for Range {PStartRange}
                Else
					If {PError} = 0 then
						Status Green Vaw Cal complete- Passed. Test Number: {ARevision}  
					Else
						Status Red Vaw Cal complete- Failed. Test Number: {ARevision}  
					Endif
                    Log Database values written for Range {PStartRange}, Test Number: {ARevision}
                    Set {PAutoCal} = 0
                    If "{SAutoStop}" = "Y" Then	! If autostop then stop
                    	Leave
                    Endif
                    If {STestCount} > 1 Then	! If multiple tests then stop
                    	Leave
                    Endif
                Endif
                Math 0 {PRange} = {AVoltageType} + {PCurRange}
                ! Set {PSetRange} = {PRange}
            Endif
        Endif
    Endif

! Do the zeros
    If {PCommand} = 3 Then  
        If ({AVoltageRange} <> 0)
            Set $ = {AVoltageRange}
        Else
            Set $ = 1
        Endif
    	! SH 5/2007 FTS Rec: If we are in range 3 then don't do zeros 'cause RTS can't support zero3
    	! Also, if in range 2, then don't do a zero because gain 3 is used instead of zero 2
        If ($ > 2) | ($ = 2 & {PMaxRange} = 3) Then
	        Set {PStep} = 0
	        If {PAutoCal} >= 2 Then
	        	If {PAutoCal} = 2 Then 
					Log AutoCal skipping zeroes for range 3 and going to gain cal
				Endif
	            Set {PAutoCal} = 3
	            Set {PCommand} = 4
				! Since we're skipping zero cal setup database for the gain cal next
				Database Use 1
		        Database {LDatabase} table VAW_RangeValues key InsertOnly
	        Else
	        	Log ManualCal skipping zeroes for range 3 {PAutoCal}
	            Set {PCommand} = 1
	        Endif    		
	    ! Continue on with normal zero cal
       	Else
			Set {PStep} = 20
	        Set {PLoad} = 1
	        Set {PCommand} = 9
	    Endif
    Endif
    
	If {PCommand} = 9 & {PStep} = 20 Then        
		Set {PStep} = 21
        Math {PTimer} = {ATestTime} + 10
        Status Yellow Waiting for no load

		! Setup database for this range
        Log Setting up {LDatabase} for table VAW_RangeValues key InsertOnly Range $
		Database Use 1
        Database {LDatabase} table VAW_RangeValues key InsertOnly
    Endif
    
    ! Wait for no load 
    If ({PStep} = 21) & ({PLoad} = 0 | {PLoad} = 4 | {PLoad} = 5) Then
		If "LEFT[{SEquipmentUsed_Left},13]" = "Yokogawa 3000" & {PLoad} = 0 & {PWhrAct} > 0 Then
            Set {PLoad} = 5			! Ask once for Yokogawa integrator reset
		Endif
        If {ATestTime} > {PTimer} Then
	        If {PWatt} < 10 Then
	            Status Blue Waiting for zero average
				Gosub InitVars
                Set {PCommand} = 2
                Set {PStep} = 22
	            Math {PTimer} = {ATestTime} + {SAverageTime}
	        Else
	            Status Yellow Please check - High wattage read {PWatt}
	        Endif
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Waiting HMS[{PValue}] for zero
		Endif
	Endif
    
    ! Average time completed ask for values
    If {PStep} = 22 Then
        If {ATestTime} > {PTimer} | {PAvgCnt} > {SNumCounts} Then
            Status Yellow Enter actual values
            Set {PCommand} = 8
            Set {PStep} = 23
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Waiting HMS[{PValue}] for average, {PAvgCnt} samples so far
        Endif
    Endif

    ! Got the values
    If ({PStep} = 23) & ({PCommand} = 7) Then
        Status Green Zero calibration completed
	
        ! Force the raw values to an average
        Math 4 {PWatt_Raw} = {PAvgWatt} / {PAvgCnt}
        Math 4 {PVolt_Raw} = {PAvgVolt} / {PAvgCnt}
        Math 5 {PAmp_Raw} = {PAvgAmp} / {PAvgCnt}
        
        Log Raw Watt average {PWatt_Raw} Number of readings {PAvgCnt}

        ! If just verifying, then don't adjust zero
 		If "{SVerifyLinear}" <> "Only" Then
	        If ({AVoltageRange} <> 0) Then
	            Set $ = {AVoltageRange}
	        Else
	            Set $ = 1
	        Endif
	
	        Calibrate {POldValue} = {PWatt} zero$
	        Calibrate Zero$ {PWatt} 0
			! SH 9/00 Calculate the deviation from the old zero to the new zero
	
	        Calibrate {Pvalue} = {PWatt} zero$
			Math 2 {PDeviation} = ABS({PValue}-{POldValue})/{POldValue}*100
			Log Watts Offset Deviation={PDeviation}
			If {PDeviation} > 10 Then
				Set -2 {Lvalue} = Watts Zero {LSLabel$} Deviation {PDeviation}% is > 10% New Zero:{Pvalue} Old Zero:{POldValue}. For information only
				Status Red {LValue}
		        Gosub AddComment				
			Endif	
			! See if Watts zero deviation is too large
			Math 2 {PDeviation} = ABS({PValue})
			If {PDeviation} > 10 Then
		        Status Yellow Watts Zero Value > 10.0 - {PDeviation}
			Endif
	        Database WattsZero = {Pvalue}
	        DelayWrite WattsZero$ = {Pvalue}
	        Log Wattage zero$ set to {Pvalue}
	
			If {LLocation} <> 12 Then		   	! <> Ottawa - No Amps
			
		        Calibrate {POldValue} = {PAmp} zero$
		        Calibrate Zero$ {PAmp} 0
		        Calibrate {Pvalue} = {PAmp} zero$
				Math 2 {PDeviation} = ABS({PValue}-{POldValue})/{POldValue}*100
				!Removed 9/2010 - Amps zero jumps around a lot and it's not as critical as the others
				!If {PDeviation} > 1.0 Then
				!	Set {LValue} = Amps Zero {LSLabel$} Deviation {PDeviation}% is > 1.0% New Zero:{Pvalue} Old Zero:{POldValue}
				!	Status Red {LValue} 
				!	Gosub AddComment
				!Endif	
				! See if Amps zero is too large
				Math 2 {PDeviation} = ABS({PValue})
				If {PDeviation} > 10 Then
			        Status Yellow Amps Zero {LSLabel$} Value > 10% - {PDeviation}
				Endif
		        Database AmpsZero = {Pvalue}
		        DelayWrite AmpsZero$ = {Pvalue}
		        Log Amperage zero$ set to {Pvalue}
			Endif
!			Gosub SaveReportInfo					! Save information for reports
		Else
			Log No Zero adjust made.
		Endif		
        Clear Avg
        Set {PStep} = 0
        If {PAutoCal} = 2 Then
            Set {PAutoCal} = 3
            Set {PCommand} = 4
        Else
            Set {PCommand} = 1
        Endif
    Endif
!-----------------------------------------
! Start of the automatic gain calibration
    If {PCommand} = 4 & ({PAutoCal} = 3 | {PAutoCal} = 0) Then
        If "{SPreheatLoad}" = "Y" Then
			Set {PStep} = 7		! Intermediate step at high watts
			Set {PLoad} = 9
	        Math {PTimer} = {ATestTime} + ({SLoadDelay}*.75)
	        Status Yellow Waiting for load - preheat
       	Else
			Set {PStep} = 1
			Set {PLoad} = 3
	        Math {PTimer} = {ATestTime} + {SLoadDelay}
	        Status Yellow Waiting for load
		Endif
        Set {PCommand} = 9
	    If ({AVoltageRange} <> 0) Then
	        Set $ = {AVoltageRange}
	    Else
	        Set $ = 1
	    Endif
		! Setup database for manual calibration
	    If {PAutoCal} = 0 Then
	        Log Setting up {LDatabase} for table VAW_RangeValues key InsertOnly Range $
			Database Use 1
	        Database {LDatabase} table VAW_RangeValues key InsertOnly
		Endif
    Endif

    If ({PStep} = 7) & ({PLoad} = 2) & {ATestTime} > {PTimer} Then
		Set {PStep} = 1
		Set {PLoad} = 3
        Math {PTimer} = {ATestTime} + ({SLoadDelay}*.25)
        Status Yellow Waiting for load
	Endif

   	! Wait for the load to be applied
    If ({PStep} = 1) & ({PLoad} = 2) Then
        If {ATestTime} > {PTimer} Then
            If {PWatt} > 50 & {PAmp} > .4 Then
                Status Blue Waiting for average
                Gosub InitVars
                Set {PCommand} = 2
                Set {PStep} = 2
                Math {PTimer} = {ATestTime} + {SAverageTime}               
	            Trend Annotation $,0;{AtestTime};MATH[{PWatt}/10];1;{LSLabel$}				!Trend annot
				DelayWrite AverageStart$ = {ATestTime}
            Elseif {PWatt} < 50
				Set -2 {Lvalue} = Low wattage {PWatt} during gain calibration. Should be around 200 watts
                Status Yellow {LValue}
				Set {PStep} = 5
            	Prompt RetryCancel {LValue}
            Elseif {PAmp} < .4
				Set -2 {Lvalue} = Low current {PAmp} during gain calibration. Should be > .4
                Status Yellow {LValue}
				Set {PStep} = 5
            	Prompt RetryCancel {LValue}
            Else
            	If {PWatt} Then
            	Else					
	                Status Yellow Invalid Watts channel or reading            		
            	Endif
            	If {PAmp} Then
            	Else					
	                Status Yellow Invalid Amps channel or reading            		
            	Endif            	
            Endif
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Waiting HMS[{PValue}] for load
        Endif
    Endif

    ! Low watts detected
    If {PStep} = 5 Then
    	If {PWatt} > 50 & {PAmp} > .5 Then		! Auto fix, since wattage is there now
    		Prompt Cancel
    		Set {PStep} = 1
    	ElseIf {APrompt} = 2 Then	! Cancel
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
            Set {PAutoCal} = 3
            Set {PCommand} = 4    
			Gosub InitVars			
    	Endif
    Endif

    ! Average time completed ask for values
    If {PStep} = 2 Then
    		! Require at least 10 samples
        If ({PAvgCnt} > 10) & ({ATestTime} > {PTimer} | {PAvgCnt} > {SNumCounts}) Then
            Status Yellow Enter actual values
            Set {PCommand} = 8
            Set {PStep} = 3
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Waiting HMS[{PValue}] for average, {PAvgCnt} samples so far
       		If "{SVerifyLinear}" <> "Only" Then	! If just doing a verification, then ignore std deviation
	            ! If Std deviation is higher than 2.0, probably means a voltage control problem.
	            If {PWatt_Stdev} > 2.0 Then 
	            	Set -2 {LValue} = Watts {LSLabel$} variation too high for consistent calibration.
	            	Prompt AbortRetryIgnore Watts deviation too high for consistent calibration.
	            	Set {PStep} = 4		! Go into special mode until operator answers
		            Trend Annotation 7,0;{AtestTime};MATH[{PWatt}/10];1;W Var too high				!Trend annot
	            ElseIf {PVolt_Stdev} > 2.0 Then
	            	Set -2 {LValue} = Volts {LSLabel$} variation too high for consistent calibration.            
	            	Prompt AbortRetryIgnore Volts variation too high for consistent calibration.
	            	Set {PStep} = 4		! Go into special mode until operator answers
		            Trend Annotation 7,0;{AtestTime};MATH[{PWatt}/10];1;V Var too high				!Trend annot
	            Endif
			Endif
        Endif
    Endif
	
    ! High Std deviation has been detected by the procedure.  
    If {PStep} = 4 Then
    	If {APrompt} = 3 Then	! Abort
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
            Set {PAutoCal} = 3
            Set {PCommand} = 4    	
            Log Retry on {LValue}
    	ElseIf {APrompt} = 5 Then	! Ignore - dangerous!
	        If {ATestTime} > {PTimer} | {PAvgCnt} > {SNumCounts} Then
	            Status Yellow Enter actual values
	            Set {PCommand} = 8
	            Set {PStep} = 3
            	Gosub AddComment 	! Add comment showing
	        Else
	            Math {PValue} = {PTimer} - {ATestTime}
	            Status Blue Waiting HMS[{PValue}] for average, {PAvgCnt} samples so far
    		Endif
    	ElseIf {ATestTime} > ({PTimer} + 300) Then	! Auto retry, if no response in 5 minutes
    		Log Auto retry on high variation during calibration
            Set {PAutoCal} = 3
            Set {PCommand} = 4    	
    	Endif
    Endif
        ! Got the values
    If ({PStep} = 3) & ({PCommand} = 7) Then
        Status Green Gain calibration completed

        ! Force the raw values to an average
        Math 4 {PVolt_Raw} = {PAvgVolt} / {PAvgCnt}
        Math 4 {PWatt_Raw} = {PAvgWatt} / {PAvgCnt}
        Math 5 {PAmp_Raw} = {PAvgAmp} / {PAvgCnt}

        ! Force the yok values to an average
        Math 4 {PAvgVoltAct} = {PAvgVoltAct} / {PAvgCnt}
        Math 4 {PAvgWattAct} = {PAvgWattAct} / {PAvgCnt}
        Math 5 {PAvgAmpAct} = {PAvgAmpAct} / {PAvgCnt}

        ! If not using the Yokogawa, then copy the manually types values into the correct variables
        If {PAvgVoltAct} = 0 & {PWattAct} > 0 Then
        	Log Manual calibration - user typed in values in VAW Dialog
	        Set 4 {PAvgVoltAct} = {PVoltAct}
	        Set 4 {PAvgWattAct} = {PWattAct}
	        Set 5 {PAvgAmpAct} = {PAmpAct}
        Endif

        ! Average as received numbers
	    Math 4 {PArAvgVolt} = {PArAvgVolt} / {PAvgCnt}
	    Math 4 {PArAvgAmp} = {PArAvgAmp} / {PAvgCnt}
	    Math 4 {PArAvgWatt} = {PArAvgWatt} / {PAvgCnt}
			    
		Gosub CalcLimits
      	
   		Set -2 {LValue2} =  				! Set to blank string
   		Set 0 {PValue2} = 0				! Flag for whether to add comment
        Log Raw Watt average {PWatt_Raw} Number of readings {PAvgCnt}, Yok {PAvgWattAct}

        ! If just verifying, then don't adjust gain
 		If "{SVerifyLinear}" <> "Only" Then
 			If {PNoChange} = 0 Then
		      	If ({AVoltageRange} <> 0)
		            Set $ = {AVoltageRange}
		        Else
		            Set $ = 1
		        Endif
				
		        Calibrate {POldValue} = {PWatt} gain$	! Save old gain
		       	! See if the difference between AsReceived and Yokogawa delta (RWattsDeltaXbar$) is out of the noise band.  If so, then calculate and apply new gain
		       	If {RWattsDeltaXbar$} > {RWattsDeltaUCL$} | {RWattsDeltaXbar$} < {RWattsDeltaLCL$} Then
			        Log Avg Watts:{PWatt}, Act Watt:{PAvgWattAct},  Volt:{SVoltSet#} Freq:{SFreqSet#}
			        Calibrate Gain {PWatt} {PAvgWattAct} {SVoltSet#} {SFreqSet#} ! Calculate new gain
			        Calibrate {PValue} = {PWatt} gain$		! Get new value for reporting
					! Calculate the deviation from the old gain to the new gain
					Math 2 {PDeviation} = ABS({PValue}-{POldValue})/{POldValue}*100
					If {PDeviation} > .5 Then
						Set -2 {LValue} = Watts {LLabel$} Gain deviation {PDeviation} is > 0.5%  New={Pvalue} Old={POldValue} 
						Status Yellow {LValue}
			           	Gosub AddComment 
					Endif
			    	Database WattsGain = {Pvalue}
			    	DelayWrite Wgain$ = {Pvalue}
			    	
			    	Log Wattage {LLabel$} gain set to {Pvalue}

			    	If ({Pvalue} < .99) Then
			    		Status Yellow Watt {LLabel$} Gain Value < .99 - {Pvalue}
			    		Log Watt {LLabel$} Gain Value < .99 - {Pvalue}
					Endif
				Else	! No adjustment to watts
		       		Log Delta:{RWattsDeltaXbar$} is between {RWattsDeltaUCL$} & {RWattsDeltaLCL$}- no adjust
			    	Log Wattage range $ gain not adjusted - {POldValue}
			    	Database WattsGain = {POldvalue}
			    	DelayWrite Wgain$ = {POldvalue}					
		       		Set -2 {LValue2} = No Adjust for Watts {LSLabel$}
			   		Set 0 {PValue2} = 1				! Flag for whether to add comment
				Endif

	
				If {LLocation} = 12 & {AStation} >= 7 Then		   	! <> Ottawa - No volts for stations7+
					! Skip
				Else
			        Calibrate {POldValue} = {PVolt} gain$
			       	If {RVoltsDeltaXbar$} > {RVoltsDeltaUCL$} | {RVoltsDeltaXbar$} < {RVoltsDeltaLCL$} Then
				       	Calibrate Gain {PVolt} {PAvgVoltAct} {SVoltSet#} {SFreqSet#}
				        
				        Calibrate {Pvalue} = {PVolt} gain$
						Math 2 {PDeviation} = ABS({PValue}-{POldValue})/{POldValue}*100
						If {PDeviation} > .5 Then
							Set -2 {LValue} = Volts {LLabel$} Gain deviation {PDeviation} is > 0.5%  New={Pvalue} Old={POldValue} 
							Status Red {LValue}
				           	Gosub AddComment 
						Endif	
				        Database VoltsGain = {Pvalue}
				        DelayWrite Vgain$ = {Pvalue}
				        Log Voltage range $ gain set to {Pvalue}
				        If ({Pvalue} < .99) Then
				        	Status Yellow Volt Gain Value < .99 - {Pvalue}
				        	Log Volt Gain {LLabel$} < .99 - {Pvalue}
						Endif
					Else
				    	Log Volts range $ gain not adjusted - {POldValue}
				        Database VoltsGain = {POldValue}
				        DelayWrite Vgain$ = {POldValue}
			       		Set -2 {LValue2} = {LValue2} No Adjust for Volts {LSLabel$}
				   		Set 0 {PValue2} = 1				! Flag for whether to add comment
					Endif
				Endif
			
				If {LLocation} <> 12 Then		   	! <> Ottawa - No Amps or volts
			        Calibrate {POldValue} = {PAmp} gain$
		
			       	If {RAmpsDeltaXbar$} > {RAmpsDeltaUCL$} | {RAmpsDeltaXbar$} < {RAmpsDeltaLCL$} Then
						! Log Amp Calibration RTS:{PAmp} Yok:{PAvgAmpAct} Volt:{SVoltSet#} Freq:{SFreqSet#}
				        Calibrate Gain {PAmp} {PAvgAmpAct} {SVoltSet#} {SFreqSet#}
				        Calibrate {Pvalue} = {PAmp} gain$
						Math 2 {PDeviation} = ABS({PValue}-{POldValue})/{POldValue}*100
						If {PDeviation} > 1.0 Then
							Set -2 {LValue} = Amps {LLabel$} Gain deviation {PDeviation} is > 1.0%  New={Pvalue} Old={POldValue} 
							Status Red {LValue}
				           	Gosub AddComment 
						Endif	
				        Database AmpsGain = {Pvalue}
				        DelayWrite Again$ = {Pvalue}
				        Log Amperage range $ gain set to {Pvalue}
				    Else
				    	Log Amps range $ gain not adjusted - {POldValue}
				        Database AmpsGain = {POldValue}
				        DelayWrite Again$ = {POldValue}
			       		Set -2 {LValue2} = {LValue2} No Adjust for Amps {LSLabel$}
				   		Set 0 {PValue2} = 1				! Flag for whether to add comment
				    Endif
				Endif
			Else
			
			Endif	
		Else
       		Set {LValue2} = Verification Only
	   		Set 0 {PValue2} = 1				! Flag for whether to add comment
		Endif
        If {PValue2} = 1 Then		! Write "no adjust" message
        	Set -2 {LValue} = {LValue2}		! Copy no adjust to variable used by AddComment
        	Gosub AddComment
        Endif
        Set {PLoad} = 1
        Set {PStep} = 0
		! See if new gain constant is out of control limits based on previous gains
		! Need to have at least previous calibrations.  If transducer was changed, ignore
        If {PWattGainCOUNT$} < 3 | ($ = 1 & "{STransducerChange_Right}" = "W120") | ($ = 2 & "{STransducerChange_Right}" = "W220")   Then			! Make sure we have enough historical data  
        	Log Skipping historical gain check for Range $
        Else
			If {RWgain$} > {PWattGainUCL$} Then
				Set {PStep} = 6
				Set -2 {Lvalue} = Watts Gain {RWgain$} {LSLabel$} is greater than UCL {PWattGainUCL$} (based on {PWattGainCOUNT$} historical values). {PStep}
            	Prompt AbortRetryIgnore {LValue}
			ElseIf {RWgain$} < {PWattGainLCL$} Then
				Set {PStep} = 6
				Set -2 {Lvalue} = Watts Gain {RWgain$} {LSLabel$} is lower than LCL {PWattGainLCL$} (based on {PWattGainCOUNT$} historical values). {PStep}
            	Prompt AbortRetryIgnore {LValue}
			Endif
		Endif
		Gosub SaveReportInfo			! Save information for reports
		! If watts uncertainty is > 1.0 then notify operator
		If $ < 3 then
			If {RWattsUncert$} > 1.0 Then
				Set {PStep} = 6
				Set -2 {Lvalue} = Watts Uncertainty {RWattsUncert$} {LSLabel$} is greater than 1
            	Prompt AbortRetryIgnore {LValue}
			ElseIf {RVoltsUncert$} > .5 &("{SBypassVolt}" = "N") Then
				Set {PStep} = 6
				Set -2 {Lvalue} = Volts Uncertainty {RWattsUncert$} {LSLabel$} is greater than .5			
            	Prompt AbortRetryIgnore {LValue}
			Endif			
		Endif
		
        If {PStep} <> 6 Then			! Gain was within control chart limits
			If {PAutoCal} = 3 Then
				! If no int time, don't do integrator cal
				If {SIntTime} = 0 Then
		    		If ("{SVerifyLinear}" = "Y") | ("{SVerifyLinear}" = "Only") Then
						Set {PAutoCal} = 5	! Low wattage verfication
			            Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
			            Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately
					Else
			            Set {PAutoCal} = 10	! Check for another range
			            Set {PCommand} = 1
				        Set {PStep} = 0
		           	Endif
				! If using WT3000 then use whr values during zero, gain, low, high calibration
		        ElseIf "LEFT[{SEquipmentUsed_Left},13]" = "Yokogawa 3000" Then			
					Set {PAutoCal} = 5	! Low wattage verfication
					Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
					Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately
		        Else
		        	! Single Whr calibration 
		        	! Copy gain value from 120 to 220
		        	If ("{SSingleWhr}" = "Y") & $ <> {PStartRange} Then
		        		Set ? = {PStartRange}
				        Calibrate {Pvalue} = {PWhr} gain?	! Get Gain value from startrange
				        Calibrate SetGain {PWhr} {Pvalue}	! Set Gain value for range $
				        Log Single Whr Cal Range $ Gain set to {Pvalue} (same as Range ?)
						Set {PAutoCal} = 5	! Low wattage verfication
			            Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
			            Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately
		        	Else
						! Always do Low wattage verification next because can't switch out of whr mode afterwards
						Set {PAutoCal} = 5	! Low wattage verfication
			            Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
			            Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately

						! Don't do this anymore
			            !Set {PAutoCal} = 4	! Whr Autocal
			            !Set {PCommand} = 5	! Tell Cal dialog we're doing whr
				        !Set {PStep} = 0
				    Endif
				Endif
		        
	        Else
	            Set {PCommand} = 1
	        Endif
	  	Endif
    Endif
    ! New watts gain value is out of control on the Xbar chart
    If {PStep} = 6 Then
    	If {APrompt} = 3 Then		! Abort
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
            Set {PAutoCal} = 3
            Set {PCommand} = 4    	
    	ElseIf {APrompt} = 5 Then	! Ignore - dangerous!
	        If {PAutoCal} >= 0 Then
				! If no int time, don't do integrator cal
				If {SIntTime} = 0 Then
		    		If ("{SVerifyLinear}" = "Y") | ("{SVerifyLinear}" = "Only") Then
						Set {PAutoCal} = 5	! Low wattage verfication
			            Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
			            Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately
					Else
			            Set {PAutoCal} = 10	! Check for another range
			            Set {PCommand} = 1
				        Set {PStep} = 0
		           	Endif
					Gosub AddComment   ! Write comment saying watts was inconsistent
				! If using WT3000 then use whr values during zero, gain, low, high calibration
		        ElseIf "LEFT[{SEquipmentUsed_Left},13]" = "Yokogawa 3000" Then			
					Set {PAutoCal} = 5	! Low wattage verfication
					Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
					Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately
		        Else
					! Always do Low wattage verification next because can't switch out of whr mode afterwards
					Set {PAutoCal} = 5	! Low wattage verfication
					Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
					Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately

					! Don't do this anymore
					!Set {PAutoCal} = 4	! Whr Autocal
					!Set {PCommand} = 5	! Tell Cal dialog we're doing whr
					!Set {PStep} = 0
					Gosub AddComment   ! Write comment saying watts was inconsistent
				Endif
	        Else
	            Set {PCommand} = 1
	        Endif
    	Endif
    Endif

!-----------------------------------------------
! Watt hour calibration

    If {PCommand} = 5 Then
        Set {PStep} = 10
        Set {PLoad} = 1
        Set {PCommand} = 9
        Math {PTimer} = {ATestTime} + 10
        Status Yellow Waiting for no load
    Endif

    ! Wait for the load to be removed
    If ({PStep} = 10) & ({PLoad} = 0) Then
        If {ATestTime} > {PTimer} Then
            If {PWatt} < 5 Then
                Status Blue Waiting for integrator reset
                Clear WHR
                Set {PStep} = 11
                Set {PLoad} = 5
                Set {PRngTime} = 0
        		Set 0 {PValue2} = 0
            Else
                Status Yellow Please check - High wattage read
            Endif
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Waiting HMS[{PValue}] for no load
        Endif
    Endif

    ! Wait for the reset and then turn on the load
    If ({PStep} = 11) & ({PLoad} = 4) Then
        Status Blue Waiting for load applied
        Set {PStep} = 12
        Set {PLoad} = 3
    Endif

    ! Wait for the load on
    If ({PStep} = 12) & ({PLoad} = 2) Then
		If ({PWhr} > 0 & {PWhrAct} > 0) Then
			Set {PStep} = 13
			Set {POldValue} = 0
			If {SIntTime} = 0 Then
				Set {SIntTime} = 10
			Endif
			Math {PTimer} = {ATestTime} + ({SIntTime} * 60)
		Else
            Status Blue Waiting for Whr values > 0. RTS:{PWhr} YOK:{PWhrAct}		
		Endif
    Endif

    ! Wait for integration time
    If {PStep} = 13 Then
        If {ATestTime} > {PTimer} Then
            Status Yellow Turn off load
            Set {PLoad} = 1
            Set {PStep} = 14
	        Math 0 {PValue} = {PTimer}/{PValue2}
	        Math 0 {PTimer} = {ATestTime} + {PValue} * 2.5
	        If ({PTimer}-{ATestTime}) < 15 Then			! Check for really short value (happened in Italy once)
		        Math 0 {PTimer} = {ATestTime} + 15
			Endif        	
        Else
	        Math 5 {PValue} = {PWhr} - {POldValue}
        	If {PValue} >= .0001 Then				! Count up the number of actual updates
        		Math {PValue2} = {PValue2}+1
        		!Log {PWhr} {PWhr_Last} {PValue}
		        Set 5 {POldValue} = {PWhr}
				Math {PValue} = {PTimer} - {ATestTime}
				Status Blue Waiting HMS[{PValue}] for integration. {PValue2} updates so far.
				Math 2 {PValue} = ({PWhr}*1000)-{PWhrAct}
				if {PValue} < 1 Then
					Write WhrDelta$ = {PValue}
				endif
				Write WhrYok$ = {PWhrAct}
				Math 2 {PValue} = {PWhr}*1000
				Write WhrRTS$ = {PValue}
				Math 2 {PValue} = 100*((({PWhr}*1000)-{PWhrAct})/{PWhrAct})
				if {PValue} < 10 Then
					Write WhrPerErr = {PValue} 
				endif
			Endif
        Endif
    Endif

    ! Integration time completed ask for values
    If ({PStep} = 14) & ({PLoad} = 0) Then
	    If {ATestTime} > {PTimer} Then
	        Status Yellow Enter actual Watt Hours
	        Set {PCommand} = 8
	        Set {PStep} = 15
	    Else
	        Math {PValue} = {PTimer} - {ATestTime}
	        Status Blue Waiting HMS[{PValue}] for last integration update
	        Math 5 {PValue} = {PWhr} - {POldValue}
        	If {PValue} >= .0001 Then				! Count up the number of actual updates
        		Math {PValue2} = {PValue2}+1
        		!Log {PWhr} {PWhr_Last} {PValue}
		        Set 5 {POldValue} = {PWhr}
				Math 2 {PValue} = ({PWhr}-{PWhrAct})*1000
				Write WhrDelta$ = {PValue}
				Write WhrYok$ = {PWhrAct}*1000
				Write WhrRTS$ = {PWhr}*1000
				Math 2 {PValue} = 100*(({PWhr}-{PWhrAct})/{PWhrAct})
				Write WhrPerErr = {PValue}
			Endif
	    Endif
    Endif

    ! Got the values
    If ({PStep} = 15) & ({PCommand} = 7) Then
        Status Green Watt hour calibration completed
        If ({PWhr} < 1.0) Then
			Math 4 {PWhrAct} = {PWhrAct)/1000
			Math 3 {PSysWattHr}={PWhr}*1000
		Else
		    Set {PSysWattHr}={PWhr}
        Endif
        Database WhrAsRec = {PSysWattHr}
        Database WhrActual = {PWhrAct}
		! Write values for report
		If {PStartRange} = {PCurRange} Then	! If first time through write 
        	Write DWhrTitle = Energy (whrs)
	        Write D1 = Actual (Yok)
	        Write D2 = As Received
	        Write D3 = Percent Error
        Endif
       	Write DWhrTitle = {LLabel$}	! Write label
        Write DWhrValue1 = {PWhrAct}
        Write DWhrValue2 = {PSysWattHr}
        Math 2 {PValue} = 100*(({PSysWattHr}-{PWhrAct})/{PWhrAct})
        Write DWhrValue3 = {PValue}
		Database WhrPerError = {PValue}
		If {PValue} > 5 Then
			Set -2 {LValue} = Whr error > 5%. {PValue}%
			Gosub AddComment 
		ElseIf {PValue} > 2.5 Then
			Set -2 {LValue} = Prefer Whr error < 2.5%. Whr Error:{PValue}%
			Gosub AddComment 
		Endif
		Gosub SaveCalCertWhr
		
        ! If just verifying, then don't adjust whr gain
 		If ("{SVerifyLinear}" <> "Only") & ({PWhr_Gain} > 0) Then
			If {PWhr} = 0 || {PWhrAct} = 0 Then
				Set -2 {Lvalue} = RTS Whr {PWhr} or Yok Whr {PWhrAct} was 0 during watt hour calibration.
                Status Yellow {LValue}
				Set {PStep} = 17
            	Prompt RetryCancel {LValue}			
			Else
	 		    Set {POldValue} = {PWhr_Gain}
	
		        !Log Calibrate Gain {PWhr} {PWhrAct} {SVoltSet#} {SFreqSet#}
		        Calibrate Gain {PWhr} {PWhrAct} {SVoltSet#} {SFreqSet#}
		
		        ! Save the values for reporting
		    	If ({AVoltageRange} <> 0) Then
		         	Set $ = {AVoltageRange}
		    	Else
		         	Set $ = 1
		        Endif
		
		        Log Setting range $ whr gain to {PWhr_Gain}.  Whr: {PWhr}
		        MATH 2 {PValue} = (1000*{PWhr}*{POldValue})/{PWhr_Gain}
		        Write D4 = After Calibration		! Write After calibration value
		        Database WhrAfterCal = {PValue}		
		        Write DWhrValue4 = {PValue}
		        Write D5 = Gain						! Write New gain value
		        Set 3 {PValue} = {PWhr_Gain}
		        Database WhrGain = {PValue}
		        Write DWhrValue5 = {PValue}
		        DelayWrite WhrGain$ = {PValue}		! Old report format
			Endif
		Endif
		Database Write				! Save information from whr and gain cal to database
        Set {PLoad} = 1
        Set {PStep} = 0
	    If {PAutoCal} = 4 Then
! End with watt hours now
!    		If ("{SVerifyLinear}" = "Y") | ("{SVerifyLinear}" = "Only") Then
!				Set {PAutoCal} = 5	! Low wattage verfication
!		        Set {PCommand} = 1	! Reset whr calibration
!		        Set {PStep} = 16	! Wait for RTSMan to get and echo PCommand = 1		        
!	        Else
                Set {PAutoCal} = 10
		        Set {PCommand} = 1
!		    Endif    
        Endif
    Endif
    If {PStep} = 16 & {PCommand} = 1 Then		! Wait to exit whr mode
        Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
        Set {PStep} = 30	! Use PStep since PCommand doesn't change immediately
    Endif
    ! Low watt hours detected
    If {PStep} = 17 Then
    	If {APrompt} = 2 Then	! Cancel
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
            Set {PCommand} = 5
    	Endif
    Endif
!---------------------------------------------------
! Start of the low wattage (10 watts) verification 
    If {PStep} = 30 & {PCommand} = 4 & {PAutoCal} = 5 Then
        Set {PStep} = 31
        Set {PLoad} = 6		! Request Low wattage
        Set {PCommand} = 9
        Math {PTimer} = {ATestTime} + ({SLoadDelay}/2)
        Status Yellow Low Watts Verification: Waiting for load
		Database Use 1
        Database {LDatabase} table VAW_RangeValues key InsertOnly
        Database TestNumber = {ARevision}
		If ({AVoltageRange} <> 0) Then
			Set $ = {AVoltageRange}
		Else
			Set $ = 1
		Endif
		Math 0 {PAnnotVal} = 2 + $
		Math 0 {Pvalue} = 10 + $
		Set $ = {PValue}			! Combines range ($) with the number 1 for Low watts
    Endif
    ! Wait for the load to be applied
    If ({PStep} = 31) & ({PLoad} = 2) Then
        If {ATestTime} > {PTimer} Then
            if {PWatt} >= 0 & {PWatt} <50 Then
                Status Blue Waiting for average
                Gosub InitVars
                Set {PCommand} = 2
                Set {PStep} = 32
                Math {PTimer} = {ATestTime} + {SAverageTime}
	            Trend Annotation {PAnnotVal},0;{AtestTime};MATH[{PWatt}/10];1;{LSLabel$}				!Trend annot
            Else
                Status Yellow Please check - Low wattage read:{PWatt}. Should be >5 and <50.
            Endif
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Low Watts Verification: Waiting HMS[{PValue}] for load
        Endif
    Endif

    ! Average time completed ask for values
    If {PStep} = 32 Then
        If {PAvgCnt} > 10 & {ATestTime} > {PTimer} Then
            Status Yellow Enter actual values
            Set {PCommand} = 8
            Set {PStep} = 33
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue Low Watts Verify:Waiting for 10 samples and HMS[{PValue}]. {PAvgCnt} samples so far
        Endif
    Endif

    ! Got the values
    If ({PStep} = 33) & ({PCommand} = 7) Then
        Status Green Low wattage verification completed

        ! Average "as received" numbers, which is actually after calibration in this case
	    Math 3 {PArAvgVolt} = {PArAvgVolt} / {PAvgCnt}
	    Math 3 {PArAvgAmp} = {PArAvgAmp} / {PAvgCnt}
	    Math 3 {PArAvgWatt} = {PArAvgWatt} / {PAvgCnt}

        ! Force the yok values to an average
        Math 4 {PAvgVoltAct} = {PAvgVoltAct} / {PAvgCnt}
        Math 4 {PAvgWattAct} = {PAvgWattAct} / {PAvgCnt}
        Math 5 {PAvgAmpAct} = {PAvgAmpAct} / {PAvgCnt}
       	Math 2 {PValue} = ABS[{PAvgWattAct} - {PArAvgWatt}]/{PAvgWattAct}*100
       	
		Gosub CalcLimits

		If {PValue} > 3 Then
			Set -2 {LValue} = Transducer non-linear at {LLabel$} (>3% watts difference). RTS:{PArAvgWatt} Yok:{PAvgWattAct} Diff:{PValue}%
           	Gosub AddComment    	   	
	        If "{SEnergyStall}" <> "N" Then	! Don't show prompt, keep calibration moving if not energy stall
				Set {PStep} = 34
				Prompt AbortRetryIgnore {LValue}
			Endif
		Else
			If {PValue} > 1 Then
				Set -2 {LValue} = Would like to see {LLabel$} error < 1%. RTS:{PArAvgWatt} Yok:{PAvgWattAct} Diff:{PValue}%
        	   	Gosub AddComment 
        	Endif
	    Endif

	    Gosub SaveReportInfo					! Save information for reports
	
		Log Raw Low Watt average {PArAvgWatt} Number of readings {PAvgCnt}

		! Set up database for high wattage verification
		Database Use 1
        Database {LDatabase} table VAW_RangeValues key InsertOnly
		Math 0 {PValue} = 10 + $	! Was 11, now 21  (or 12, now 22)
		Set $ = {PValue}			! Combines range ($) with the number 2 for High watts
		If {PStep} <> 34 Then
			Math 0 {PAnnotVal} = {PAnnotVal} + 2	! 5 or 6
			Set {PLoad} = 9		! 500 watt range
	        Set {PStep} = 40	! High watt wait for no load
	        Set {PCommand} = 4	! Set to Gain cal, though we're not doing a calibration
			Set {PAutoCal} = 6	! High wattage verfication
		Endif
		
    Endif
    If {PStep} = 34 Then
    	If {APrompt} = 3 | {Aprompt} = 2 Then	! Abort
    		Status Yellow Calibration Cancelled
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
	        ! Restore the $ value
	    	If ({AVoltageRange} <> 0) Then
	         	Set $ = {AVoltageRange}
	    	Else
	         	Set $ = 1
	        Endif
            Set {PAutoCal} = 5
            Set {PCommand} = 4
            Set {PStep} = 30
    	ElseIf {APrompt} = 5 Then	! Ignore - dangerous!
			Math 0 {PAnnotVal} = {PAnnotVal} + 2	! 5 or 6
            Set {PAutoCal} = 6
	        Set {PCommand} = 4
		Endif             	
    Endif

!---------------------------------------------------
! Start of the high wattage (500 watts) verification 
    If {PCommand} = 4 & {PAutoCal} = 6 Then
        Set {PStep} = 41
        Set {PLoad} = 9		! Request high wattage
        Set {PCommand} = 9
        Math {PTimer} = {ATestTime} + {SLoadDelay}
        Status Yellow Waiting for load
    Endif

    ! Wait for the load to be applied
    If ({PStep} = 41) & ({PLoad} = 2) Then
        If {ATestTime} > {PTimer} Then
            If {PWatt} > 350 Then
                Status Blue Waiting for average
				Gosub InitVars
                Set {PCommand} = 2
                Set {PStep} = 42
                Math {PTimer} = {ATestTime} + {SAverageTime}
	            Trend Annotation {PAnnotVal},0;{AtestTime};MATH[{PWatt}/10];1;{LSLabel$}				!Trend annot
            Else
                If ({ATestTime} < {PTimer}+10) Then	! Limit messages so they don't keep scrolling
	                Status Yellow Please check - Low wattage read:{PWatt}. Should be > 350.
	                Log Please check - Low wattage read:{PWatt}. Should be > 350.
	            Endif
            Endif
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue High Watts Verification: Waiting HMS[{PValue}] for load
        Endif
    Endif

    ! Average time completed ask for values
    If {PStep} = 42 Then
        If {PAvgCnt} > 10 & {ATestTime} > {PTimer} Then
            Status Yellow Enter actual values
            Set {PCommand} = 8
            Set {PStep} = 43
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue High Watts Verify: Waiting for 10 samples and HMS[{PValue}]. {PAvgCnt} samples so far
        Endif
    Endif

    ! Got the values
    If ({PStep} = 43) & ({PCommand} = 7) Then
        Status Green High Watts verification completed

        ! Average "as received" numbers, which is actually after calibration in this case
	    Math 3 {PArAvgVolt} = {PArAvgVolt} / {PAvgCnt}
	    Math 3 {PArAvgAmp} = {PArAvgAmp} / {PAvgCnt}
	    Math 3 {PArAvgWatt} = {PArAvgWatt} / {PAvgCnt}
	
        ! Force the yok values to an average
        Math 4 {PAvgVoltAct} = {PAvgVoltAct} / {PAvgCnt}
        Math 4 {PAvgWattAct} = {PAvgWattAct} / {PAvgCnt}
        Math 5 {PAvgAmpAct} = {PAvgAmpAct} / {PAvgCnt}

		Gosub CalcLimits
        Gosub SaveReportInfo					! Save information for reports
        Log Raw High Watt average {PArAvgWatt} Number of readings {PAvgCnt}

       	Math 2 {PValue} = ABS[{PAvgWattAct} - {PArAvgWatt}]/{PAvgWattAct}*100
		If {PValue} > 3 Then			! 3% error
			Set -2 {LValue} = Transducer non-linear at {LLabel$}. RTS:{PArAvgWatt} Yok:{PAvgWattAct} Diff:{PValue}
           	Gosub AddComment 
	        If "{SEnergyStall}" <> "N" Then	! Don't show prompt, keep calibration moving if not energy stall
				Set {PStep} = 44
				Prompt AbortRetryIgnore {LValue}
			Endif
		ElseIf {PValue} > 1 Then			! 1% error
			Set -2 {LValue} = Would like to see {LLabel$} error < 1%. RTS:{PArAvgWatt} Yok:{PAvgWattAct} Diff:{PValue}
           	Gosub AddComment 
	        If "{SEnergyStall}" <> "N" Then	! Don't show prompt, keep calibration moving if not energy stall
				Set {PStep} = 44
				Prompt AbortRetryIgnore {LValue}
			Endif
		Endif
		! If using WT3000 then use whr values during zero, gain, low, high calibration
		If "LEFT[{SEquipmentUsed_Left},13]" = "Yokogawa 3000" Then	
	        Set {PLoad} = 1		! Turn load off and wait for last update
			Set {PStep} = 45
			Math {PTimer} = {ATestTime} + 20			
			Status Green High Watts verification completed - Waiting for last Integrator update
			! Todo: Calculate gain values if needed
		Endif

		If {PStep} = 43 Then	! Proceed with calibration if no special modes
	        Set {PLoad} = 1
	        Set {PStep} = 0
	   		If "{SVerifyCal}" = "Y" Then
	            Set {PAutoCal} = 7	! Go to Verify Cal step
				Set {PCommand} = 4
			Else
				Set {PAutoCal} = 4	! Whr Autocal
				Set {PCommand} = 5	! Tell Cal dialog we're doing whr
				Set {PStep} = 0
				! Used to be done, but not go to whr after other cal
				!Set {PAutoCal} = 10	! Check for another range
				!Set {PCommand} = 1
       		Endif
	    Endif
    Endif
    If {PStep} = 44 Then
    	If {APrompt} = 3 | {Aprompt} = 2 Then	! Abort
    		Status Yellow Calibration Cancelled
    		Halt
    	ElseIf {APrompt} = 4 Then	! Retry
            Set {PAutoCal} = 6
            Set {PCommand} = 4
    	ElseIf {APrompt} = 5 Then	! Ignore - dangerous!
	        Set {PStep} = 0
	        Set {PLoad} = 1
	        Set {PCommand} = 1
	   		If "{SVerifyCal}" = "Y" Then
	            Set {PAutoCal} = 7	! Go to Verify Cal step
				Set {PCommand} = 4
			Else
	            Set {PAutoCal} = 10	! Check for another range
       		Endif
		Endif             	
    Endif
	! Wait for last integrator update if Yok 3000
	If {PStep} = 45 & {AtestTime} > {PTimer} Then	! Proceed with calibration if no special modes
		Gosub SaveCalCertWhr	! Save information for report
        Clear WHR				! Reset whr
		If "{SVerifyCal}" = "Y" Then
			Set {PAutoCal} = 7	! Go to Verify Cal step
			Set {PCommand} = 4
		Else
			Set {PAutoCal} = 10	! Check for another range
			Set {PCommand} = 1
		Endif
	Endif

!---------------------------------------------------
! Start of the mid wattage (200 watts) verification 
! This is used in Mexico to check the calibration by sampling instead of just math
    If {PCommand} = 4 & {PAutoCal} = 7 Then
        Set {PStep} = 51
		Set {PLoad} = 3			! Request mid watts
        Set {PCommand} = 9
        Math {PTimer} = {ATestTime} + {SLoadDelay}
        Status Yellow After Cal Verify:Waiting for load
	    If ({AVoltageRange} <> 0) Then
	        Set $ = {AVoltageRange}
	    Else
	        Set $ = 1
	    Endif
    Endif

    ! Wait for the load to be applied
    If ({PStep} = 51) & ({PLoad} = 2) Then
        If {ATestTime} > {PTimer} Then
            if {PWatt} > 100 Then
                Status Blue Waiting for average
                Clear Avg
                Set 3 {PAvgVolt} = 0
                Set 3 {PAvgAmp} = 0
                Set 3 {PAvgWatt} = 0
	            Set 5 {PAvgVoltAct} = 0
	            Set 5 {PAvgAmpAct} = 0
	            Set 5 {PAvgWattAct} = 0
                Set 0 {PAvgCnt} = 0
			    Set 3 {PArAvgVolt} = 0
			    Set 3 {PArAvgAmp} = 0
			    Set 3 {PArAvgWatt} = 0
                Set {PCommand} = 2
                Set {PStep} = 52
                Math {PTimer} = {ATestTime} + {SAverageTime}
            Else
                If ({ATestTime} < {PTimer}+10) Then	! Limit messages so they don't keep scrolling
	                Status Yellow Please check - Low wattage read:{PWatt}. Should be > 100.
	                Log Please check - Low wattage read:{PWatt}. Should be > 100.
	            Endif
            Endif
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue After Cal Verify: Waiting HMS[{PValue}] for load
        Endif
    Endif

    ! Average time completed ask for values
    If {PStep} = 52 Then
        If {PAvgCnt} > 10 Then
            Status Yellow Enter actual values
            Set {PCommand} = 8
            Set {PStep} = 53
        Else
            Math {PValue} = {PTimer} - {ATestTime}
            Status Blue After Cal Verify: Waiting for 10 samples, {PAvgCnt} samples so far
        Endif
    Endif

    ! Got the values
    If ({PStep} = 53) & ({PCommand} = 7) Then
        Status Green After Cal Verify completed

        ! Average "as received" numbers, which is actually after calibration in this case
	    Math 3 {PArAvgVolt} = {PArAvgVolt} / {PAvgCnt}
	    Math 3 {PArAvgAmp} = {PArAvgAmp} / {PAvgCnt}
	    Math 3 {PArAvgWatt} = {PArAvgWatt} / {PAvgCnt}
	
        ! Force the yok values to an average
        Math 4 {PAvgVoltAct} = {PAvgVoltAct} / {PAvgCnt}
        Math 4 {PAvgWattAct} = {PAvgWattAct} / {PAvgCnt}
        Math 5 {PAvgAmpAct} = {PAvgAmpAct} / {PAvgCnt}

        Log Raw After Cal Verify average {PArAvgWatt} Number of readings {PAvgCnt}

       	Math 2 {PValue} = ABS[{PAvgWattAct} - {PArAvgWatt}]
		Set {PLoad} = 1
		Set {PStep} = 0
		Set {PCommand} = 1
		Set {PAutoCal} = 10	! Check for another range
    Endif
    ! Check for voltage/range change
    If ({PSetRange} <> {PRange}) & ({PRange} > 0) Then

        Math {PType} = {AVoltageType} % 100	! Voltage type, 40, 50, etc
        ! Get the requested range with modulus function
        Math 0 {PValue} = {PRange} % 10		! Range type, 1,2,3

	    ! Check for range change from VAWCal dialog - if test not started then change StartRange
	    If {PautoCal}=0 Then
	        Set {PStartRange} = {PValue}
	        Log Start Range changed to {PStartRange}
		Endif	       
		
        If {PValue} = 1 Then
            Set {PCurRange} = 1
            Set {SFreqSet#} = 60
            If {PType} <> 40 Then	
	            Set {SVoltSet#} = 115
	            Log ---------- Changing voltage to 115V 60Hz
	            If ({LLocation}=2 | {LLocation}=8) & {ASystem} <=4 Then	! Benton Harbor - Change state file to use second set of transducers
				! Some rooms support for second set of transducers
				    Set {SStateFile} = VAW115State		! Need to change state file
			    	Log Changed State file to 115
			    Endif
	        Else	! Type 40 is single range 230 - Used in India
	            Set {SVoltSet#} = 230
	            Log ---------- Changing voltage to 230V 60Hz
	            Log Value:{PValue} Type:{PType} Range:{PRange} SetRange: {PSetRange} CurRange:{PCurRange}	        
			Endif
        ElseIf {PValue} = 2 Then
            If {PType} = 70 Then
                Set {PCurRange} = 2
                Set {SVoltSet#} = 220
                Set {SFreqSet#} = 50
                Log ---------- Changing voltage to 220V 50Hz
            Elseif ({PType} = 80) | ({PType} = 90) Then
                Set {PCurRange} = 2
                If ({LLocation}=8) Then	! Monterrey
	                Set {SVoltSet#} = 220				! Monterry needs to cal at 220
				Else
					Set {SVoltSet#} = 230
				Endif
                Set {SFreqSet#} = 60
!	            If ({LLocation}=2 | {LLocation}=8) & {ASystem} <=4 Then	! Monterrey & Benton Harbor - Change state file to use second set
!				! Some rooms support for second set of transducers
!				    Set {SStateFile} = VAW220State		! Need to change state file
!				    Log Changed State file to 220
!				Endif
                Log ---------- Changing voltage to 230V 60Hz 
	        Elseif {PType} = 40 | {PType} = 20 Then	! Type 40 single range 230 (India) Type 20 single range (Italy) don't change
                Log Type 40 Single Range
                Set {SVoltSet#} = 230
                Set {PCurRange} = {PStartRange}	! Try not to signal a range change
            Else
                Set {PCurRange} = 2
                Set {SVoltSet#} = 230
                Set {SFreqSet#} = 60
                Log ---------- Changing voltage to 230V 60Hz
	            Log Value:{PValue} Type:{PType} Range:{PRange} SetRange: {PSetRange} CurRange:{PCurRange}
            Endif

        ElseIf {PValue} = 3 Then
            Set {PCurRange} = 3
            Set {SVoltSet#} = 220
            Set {SFreqSet#} = 50
!            Log ---------- Changing voltage to 220V 50Hz
!            If ({LLocation}=2 | {LLocation}=8) & {ASystem} <4 Then	! Benton Harbor - Change state file to use second set of transducers
!			! Some rooms support for second set of transducers
!			    Set {SStateFile} = VAW220State		! Need to change state file
!			    Log Changed State file to 220
!			Endif
        Else
            Set {SVoltSet#} = 0
            Set {SFreqSet#} = 60
            Log ---------- Changing voltage to OFF {PRange}
        Endif
        Set {PSetRange} = {PRange}
        Set {PRange} = {PRange}			! Echo back point so sync up dialog

        ! Delay for change of range
        If {PAutoCal} > 0 Then
            Math {PRngTime} = {ATestTime} + 20		! Check after 20 seconds
   	        Math {PTimer} = {ATestTime} + 300		! Timeout for range change
        Endif
    Endif

! Send the system values back to the cal dialog
    Set {PVoltAct} = {PVolt}
    Set {PAmpAct} = {PAmp}
    Set {PWattAct} = {PWatt}
    Set {PwhrAct} = {pWhr}

Loop

! Goto here if operator saves the test
Abort

Set 2 {SVoltSet#} = {PSetVolt}	! Restore original voltage setpoint

Set 2 {PWatt_Raw} = 0
Set 1 {PVolt_Raw} = 0
Set 2 {PAmp_Raw} = 0

Set {PCommand} = 0
! Write the header file for the calibrations
! The other values use the vaw_RangeValues table
! Create Labresults lab entry
Database {LDatabase} table VAWCalibration key {ARevision} 
Database AverageTime = {SAverageTime}
Database TransducerChange = {STransducerChange_Right}
Database Version = VawCal {PVersion}
If "{STransducerChange_Right}" <> "N" Then
	Write TransducerChange = Transducer Change: {STransducerChange_Left}
Endif

Write EndTime = {ADate} HMS[{ATime_Raw}]
Write Version = VAWCal v{PVersion}
Database WRITE
! Create Labresults entry in the Calibration lab
Database Use 0
Database {LDatabase} Table {LLabResults} key {ARevision}
Log Database {LDatabase} Table {LLabResults} key {ARevision}
If {LVAWLab} > -998 Then
	Database Lab = {LVAWLab}
Else
	Database Lab = 11
Endif
Database Stall = {AStation_Title}
Database Tester = {SOperDir}
Database Comment1 = {SEquipmentUsed}
Database Comment2 = {SCalComment1}
Datatase TestType = VAWCal
If "{SVerifyCal}"="Y" Then
	Database ResultReport = VawCalCert+VawCalVer
Else
	Database ResultReport = VawCalCert
Endif
Database TestDate = {AStartDate} {AStartTime}
Database EndDate = {ADate} HMS[{ATime_Raw}]
Database ResultFile = stands\VawCal_{AStation_Title}_{ARevision}
Database WRITE
Status Blue Writing Values to database
Begin

    If {ADBresults} = 1 Then
		If {PError} = 0 then
			Status Green Vaw Cal complete- Passed. TN: {ARevision}  
		Else
			Status Red Vaw Cal complete- Failed. TN: {ARevision}  
		Endif
        Leave
    Elseif {ADBResults} = 2 Then
        Status Red Unable to store data TN:{ARevision}
        Log {ADBmessage}
        Leave
    Endif
Loop
If {AMode} <3 & {STestCount} > 1 & {PTestCount} < {STestCount}  Then
	Math 0 {PTestCount} = {PTestCount} +1
    Result Close
    Trend Clear
    Clear All
    Revision
	Plot SaveAs stands\VAWCAL_{AStation_Title}_{ARevision}
	Result SaveAs stands\VAWCAL_{AStation_Title}_{ARevision}
	If "{SVerifyCal}"="Y" Then
		Result Report VawCalCert+VawCalVer
	Else
		Result Report VawCalCert
	Endif
	Result Print A
	Write StartTime = {ADate} HMS[{ATime_Raw}]
	Set {PCommand} = 10		! Tell system to do another calibration
	Set 0 {PRngTime} = 0	! Reset Range time to zero
	Set 0 {PTimer} = 300	! Reset Range timeout to 5 minutes
	Set 0 {PMessIndex} = 0
	Log --------------------------------Test number {PTestCount} Started
	Clear Start
	Plot Clear
	Trend Clear			  
	Goto Restart
Endif
! Save information for reports
Sub SaveReportInfo
	Log Saving Report info for range $, {LLabel$}
	! Units-specific column heading
	If ($ = 1) & ({PArAvgVolt} > 150) Then		! For single range calibrations, check for 220 volt only (Wroclaw, India)
		Write DCal = {LLabel2}
	ElseIf ($ = 11) & ({PArAvgVolt} > 150) Then
		Write DCal = {LLabel12}
	ElseIf ($ = 21) & ({PArAvgVolt} > 150) Then
		Write DCal = {LLabel22}
	Else
		Write DCal = {LLabel$}
	Endif
	Database use 1
    Database Testnumber = {Arevision}
	Database Range = $

	! Write Yokogawa values
	Write WattsActual = {PAvgWattAct} 
	Write VoltsActual = {PAvgVoltAct} 
	Write AmpsActual = {PAvgAmpAct} 
	! Save actual values
	Database WattsActual = {PAvgWattAct} 
	Database VoltsActual = {PAvgVoltAct} 
	Database AmpsActual  = {PAvgAmpAct} 

	! Write Percent Error
	MATH 2 {PValue} = 100*(({PArAvgWatt}-{PAvgWattAct})/{PAvgWattAct})
	Write WattsPerError = {PValue}
	Database WattsPerError = {PValue}
	If $ <= 3 & {PValue} > 1 Then
		Set -2 {LValue} = Watts {LLabel$} As Received Error {PValue} > 1.0%.  Corrective action form required if > 3%
		Status Red {LValue}
      	Gosub AddComment 
	EndIf
	MATH 2 {PValue} = 100*(({PArAvgVolt}-{PAvgVoltAct})/{PAvgVoltAct})
	Write VoltsPerError = {PValue}
	Database VoltsPerError = {PValue}
	If $ <= 3 & {PValue} > 1 Then
		Set -2 {LValue} = Volts {LLabel$} As Received Error {PValue} > 1.0%.  Corrective action form required if > 1.5%
		Status Red {LValue}
       	Gosub AddComment 
	EndIf
	MATH 2 {PValue} = 100*(({PArAvgAmp}-{PAvgAmpAct})/{PAvgAmpAct})
	If $ <> 11 & $ <> 12 & $ <> 13 Then	! Don't write amps values for Low range verification SH 9/2010 - too much error because signal is so low
	 	Write AmpsPerError = {PValue}
		Database AmpsPerError  = {PValue}
	Else
		Write AmpsPerError = ,
	Endif
	If $ <= 3 & {PValue} > 1 Then
		Set -2 {LValue} = Amps {LLabel$} As Received Error {PValue} > 1.0%.  Corrective action form required if > 1.5%
		Status Red {LValue}
       	Gosub AddComment 
	EndIf

	If $ <= 3 Then
		! Write RTS Before Calibration (As Received)
		Write WattsAsRec = {PArAvgWatt}
		Write VoltsAsRec = {PArAvgVolt} 
		Write AmpsAsRec =  {PArAvgAmp} 
		Database WattsAsRec = {PArAvgWatt}
		Database VoltsAsRec = {PArAvgVolt} 
		Database AmpsAsRec =  {PArAvgAmp} 

		! Write After Calibration
		Math 4 {PValue} = ({PWatt_Raw}+{PWatt_Zero})*{PWatt_Gain}
		Write WattsAfterCal = {PValue}
		Database WattsAfterCal = {PValue} 
		Math 4 {PValue} = ({PVolt_Raw}+{PVolt_Zero})*{PVolt_Gain}
		Write VoltsAfterCal = {PValue}
		Database VoltsAfterCal = {PValue} 
		Math 4 {PValue} = ({PAmp_Raw}+{PAmp_Zero})*{PAmp_Gain}
		Write AmpsAfterCal = {PValue}
		Database AmpsAfterCal = {PValue} 

		Write WattsGain = {PWatt_Gain} 
		Write VoltsGain = {PVolt_gain} 
		Write AmpsGain = {PAmp_Gain} 
		
		Write WattsZero = {PWatt_Zero} 
		Write VoltsZero = {PVolt_Zero} 
		Write AmpsZero = {PAmp_Zero} 		

		! Was Math 3 {PValue} = ({RWattsVariation$}*{RWattsVariation$})+({LWattYokUncert}*{LWattYokUncert})	! Sum of squares of uncertainty
		Math 3 {PValue} = ({RWattsVariation$}*{RWattsVariation$})+({LWattYokUncert}*{LWattYokUncert}/1.73)+({LWattRepeat}*{LWattRepeat})	! Sum of squares of uncertainty
		Log Sum of squares is {Pvalue}, Watts var {RWattsVariation$} Yok Uncert {LWattYokUncert}
		Math 3 {PValue} = 2.0 * SQRT[{PValue}]	! Calculated Relative Expanded Uncertainty (Uc * k) at a 95% confidence level
		Log Watts Uncertainty is {Pvalue}
		Write WattsUncert = {PValue}
		DelayWrite WattsUncert$ = {PValue}		! Used later for error prompt
		Database WattsUncertainty = {PValue} 
		
		! Was Math 3 {PValue} = ({RVoltsVariation$}*{RVoltsVariation$})+({LVoltYokUncert}*{LVoltYokUncert})	! Sum of squares of uncertainty
		Math 3 {PValue} = ({RVoltsVariation$}*{RVoltsVariation$})+({LVoltYokUncert}*{LVoltYokUncert}/1.73)+({LVoltRepeat}*{LVoltRepeat})	! Sum of squares of uncertainty
		Math 3 {PValue} = 2.0 * SQRT[{PValue}]	! Calculated Relative Expanded Uncertainty (Uc * k) at a 95% confidence level
		Write VoltsUncert = {PValue}
		DelayWrite VoltsUncert$ = {PValue}			! Used later for error prompt
		Database VoltsUncertainty = {PValue} 
		! Had to multiply by 100 because the values were getting too small
		! Was Math 5 {PValue} = (100*{RAmpsVariation$}*{RAmpsVariation$})+(100*{LAmpYokUncert}*{LAmpYokUncert})	! Sum of squares of uncertainty
		Math 5 {PValue} = (100*{RAmpsVariation$}*{RAmpsVariation$})+(100*{LAmpYokUncert}*{LAmpYokUncert}/1.73)+(100*{LAmpRepeat}*{LAmpRepeat}) 	! Sum of squares of uncertainty
		Math 4 {PValue} = 2.0 * SQRT[{PValue}] /10	! Calculated Relative Expanded Uncertainty (Uc * k) at a 95% confidence level
		Write AmpsUncert = {PValue}
		DelayWrite AmpsUncert$ = {PValue}		! Used later for error prompt
		Database AmpsUncertainty = {PValue} 
	Else
		! Write RTS Low and High watts which is after calibration data
		Write WattsAfterCal = {PArAvgWatt}
		Write VoltsAfterCal = {PArAvgVolt} 
		Write AmpsAfterCal =  {PArAvgAmp} 
		Database WattsAfterCal = {PArAvgWatt}
		Database VoltsAfterCal = {PArAvgVolt} 
		Database AmpsAfterCal =  {PArAvgAmp} 

		! Need spacers for report
		Write WattsAsRec = ,
		Write VoltsAsRec = ,
		Write AmpsAsRec = ,

		Write WattsGain = ,
		Write VoltsGain = ,
		Write AmpsGain = ,
		Write WattsZero = ,
		Write VoltsZero = ,
		Write AmpsZero = ,
		Write WattsUncert = ,
		Write VoltsUncert = ,
		Write AmpsUncert = ,
	Endif
		
	Write WattsStdDev = {PWatt_STDev}
	Write VoltsStdDev = {PVolt_STDev}
	Write AmpsStdDev = {PAmp_STDev}

	Gosub SaveCalCert
	Clear Avg

	If {PStep} < 10 & {SIntTime} > 0 Then	! If Whr calibration and just finished Gain, then don't write
		Log No Database Write yet, continue to Whr calibration
	Else 
		Database Write
	Endif
EndSub
! --------------------- AddComment -----------------------
! Adds a comment to the test and creates a log entry
Sub AddComment
	Log {LValue}
    Math 0 {PMessIndex} = {PMessIndex} + 1
    Set $ = {PMessIndex}
    Write $TM = HMS[{ATestTime}]
	Write $CM = {LValue}
    If ({AVoltageRange} <> 0) Then
		If {PStep} < 30 Then
			Set $ = {AVoltageRange}
		Elseif {PStep} 40 Then
			Math $ = {AVoltageRange}+10
		Else
			Math $ = {AVoltageRange}+20
		Endif
    Else
        Set $ = 1
    Endif

	Return
EndSub

Sub InitVars
    Clear Avg
    Set 3 {PAvgVolt} = 0
    Set 3 {PAvgAmp} = 0
    Set 2 {PAvgWatt} = 0
    Set 0 {PAvgCnt} = 0
    Set 5 {PAvgVoltAct} = 0
    Set 5 {PAvgAmpAct} = 0
    Set 5 {PAvgWattAct} = 0
    Set 3 {PArAvgVolt} = 0
    Set 3 {PArAvgAmp} = 0
    Set 3 {PArAvgWatt} = 0
	Set 3 {PWattsDeltaRangeSum} = 0
	Set 3 {PVoltsDeltaRangeSum} = 0
	Set 3 {PAmpsDeltaRangeSum} = 0
Endsub
! Save report info in Cal Certificate form
! Call SaveReportInfo first to do calculations
Sub SaveCalCertWhr
	Set ? = {PReportLine}				! Cal Cert report save one line per test
	If ({PWhr} < 1.0) Then			! Convert from whr->kwhr
		Math 4 {PWhrAct} = {PWhrAct)/1000
		Math 3 {PSysWattHr}={PWhr}*1000
	Else
		Set {PSysWattHr}={PWhr}
	Endif
	Set 0 {PValue} = $
	Math $ = {PValue} % 10				! Convert High range label to regular label
	DelayWrite C? = {LLabel$} Watt-hrs	! Cal Cert test point description 
	Set $ ={PValue}					! Restore $
	DelayWrite Act? = {PWhrAct} ! Actual - Yokogawa
	DelayWrite AsRec? = {PSysWattHr}
	Math 2 {PValue} = {PWhrAct} * 0.95	! Lower limit -5%
	DelayWrite LL? = {PValue}
	Math 2 {PValue2} = {PWhrAct} * 1.05	! Upper limit +5%
	DelayWrite UL? = {PValue2}
	If {PSysWattHr} > {PValue} & {PSysWattHr} < {PValue2} Then
		DelayWrite STAT? = Pass
	Else
		DelayWrite STAT? = Fail
		Set 0 {PError} = 1
	Endif
	DelayWrite UNCERT? = {RWhrUncert$}	! Use uncert calculated in SaveReportInfo

	If {PWhr_Gain} > 0 Then
		DelayWrite Gain? = {PWhr_Gain}
	Endif

    Math 2 {PValue} = 100*(({PSysWattHr}-{PWhrAct})/{PWhrAct})
	DelayWrite PERERR? = {PValue}
	Log {RC?} {PWhr} {PWhrAct} %Error:{PValue}
	Math {PReportLine} = ?  + 1				! Cal Cert report save one line per test
EndSub
! Save report info in Cal Certificate form
! Call SaveReportInfo first to do calculations
Sub SaveCalCert
	Set ? = {PReportLine}				! Cal Cert report save one line per test
	! Voltage
	If $ <= 3 Then								! Voltage doesn't change so only report once
		DelayWrite C? = {LLabel$} Voltage	! Cal Cert test point description 
		DelayWrite Act? = {PAvgVoltAct} ! Actual - Yokogawa
		DelayWrite AsRec? = {PArAvgVolt}
		Math 2 {PValue} = {PAvgVoltAct} * 0.985	! Lower limit -1.5%
		DelayWrite LL? = {PValue}
		Math 2 {PValue2} = {PAvgVoltAct} * 1.015	! Upper limit +1.5%
		DelayWrite UL? = {PValue2}
		If {PArAvgVolt} > {PValue} & {PArAvgVolt} < {PValue2} Then
			DelayWrite STAT? = Pass
		Else
			DelayWrite STAT? = Fail
			Set 0 {PError} = 1
		Endif
		DelayWrite UNCERT? = {RVoltsUncert$}	! Use uncert calculated in SaveReportInfo
		If $ <= 3 Then								! If <=3 then we did a zero and gain calibration
			DelayWrite Zero? = {PVolt_Zero}
			DelayWrite Gain? = {PVolt_Gain}
		Endif
		MATH 2 {PValue} = 100*(({PArAvgVolt}-{PAvgVoltAct})/{PAvgVoltAct})
		DelayWrite PERERR? = {PValue}
		DelayWrite STDDEV? = {PVolt_StdDev}
		Math ? = ? + 1
	Endif
	! Amperage
	If $ <> 11 & $ <> 12 & $ <> 13 Then	! Don't record low amps
		DelayWrite C? = {LLabel$} Amperage	! Cal Cert test point description 
		DelayWrite Act? = {PAvgAmpAct} ! Actual - Yokogawa
		DelayWrite AsRec? = {PArAvgAmp}	
		Math 5 {PValue} = {PAvgAmpAct} * 0.985	! Lower limit -1.5%
		Math 5 {PValue2} = {PAvgAmpAct} * 1.015	! Upper limit +1.5%
		DelayWrite LL? = {PValue}
		Math 5 {PValue2} = {PAvgAmpAct} * 1.015	! Upper limit +1.5%
		DelayWrite UL? = {PValue2}
		If {PArAvgAmp} > {PValue} & {PArAvgAmp} < {PValue2} Then
			DelayWrite STAT? = Pass
		Else
			DelayWrite STAT? = Fail
			Set 0 {PError} = 1
		Endif
		DelayWrite UNCERT? = {RAmpsUncert$}	! Use uncert calculated in SaveReportInfo
		If $ <= 3 Then								! If <=3 then we did a zero and gain calibration
			DelayWrite Zero? = {PAmp_Zero}
			DelayWrite Gain? = {PAmp_Gain}
		Endif
		MATH 2 {PValue} = 100*(({PArAvgAmp}-{PAvgAmpAct})/{PAvgAmpAct})
		DelayWrite PERERR? = {PValue}
		DelayWrite STDDEV? = {PAmp_StdDev}
		Math ? = ? + 1
	Endif
	! Wattage
	DelayWrite C? = {LLabel$} Wattage	! Cal Cert test point description 
	DelayWrite Act? = {PAvgWattAct} ! Actual - Yokogawa
	DelayWrite AsRec? = {PArAvgWatt}
	Math 2 {PValue} = {PAvgWattAct} * 0.97	! Lower limit -3%
	DelayWrite LL? = {PValue}
	Math 2 {PValue2} = {PAvgWattAct} * 1.03	! Upper limit +3%
	DelayWrite UL? = {PValue2}
	If {PArAvgWatt} > {PValue} & {PArAvgWatt} < {PValue2} Then
		DelayWrite STAT? = Pass
	Else
		DelayWrite STAT? = Fail
		Set 0 {PError} = 1
	Endif
	DelayWrite UNCERT? = {RWattsUncert$}	! Use uncert calculated in SaveReportInfo
	If $ <= 3 Then								! If <=3 then we did a zero and gain calibration
		DelayWrite Zero? = {PWatt_Zero}
		DelayWrite Gain? = {PWatt_Gain}
	Endif
	MATH 2 {PValue} = 100*(({PArAvgWatt}-{PAvgWattAct})/{PAvgWattAct})
	DelayWrite PERERR? = {PValue}
	DelayWrite STDDEV? = {PWatt_StdDev}
	Math {PReportLine} = ?  + 1				! Cal Cert report save one line per test
EndSub

Sub CalcLimits
		DelayWrite NumSamples$ = {PAvgCnt}
		DelayWrite AverageEnd$ = {ATestTime}
		MATH 1 {PValue} = ({RAverageEnd$}-{RAverageStart$})/{PAvgCnt}
		DelayWrite VAWSampleRate$ = {Pvalue} 
		! Calculate R_bar for watts delta SH 3/2007
       	MATH 4 {PWattsDeltaRbar} = {PWattsDeltaRangeSum}/({PAvgCnt}-1)
       	MATH 4 {PAmpsDeltaRbar} = {PAmpsDeltaRangeSum}/({PAvgCnt}-1)
       	MATH 4 {PVoltsDeltaRbar} = {PVoltsDeltaRangeSum}/({PAvgCnt}-1)
       	Write RBar$ = {PWattsDeltaRbar}
       	MATH 3 {PValue} = {PWattsDeltaRbar}*3.267
       	Write RBarUCL$ = {PValue}
       	Log RBar = {PWattsDeltaRbar} R_Bar UCL = {PValue} Sigma = MATH[{PWattsDeltaRbar}/1.128]
       	MATH 4 {PValue} = {PWattsDeltaRbar}/1.128
       	DelayWrite WattsVariation$ = {PValue}
       	MATH 4 {PValue} = {PVoltsDeltaRbar}/1.128
       	DelayWrite VoltsVariation$ = {PValue}
       	MATH 5 {PValue} = {PAmpsDeltaRbar}/1.128
       	DelayWrite AmpsVariation$ = {PValue}
       	
       	! Calculate Control limits for watts delta, centered around 0, no change       	
       	DelayWrite WattsDeltaXbar$ = MATH[{PAvgWattAct}-{PArAvgWatt}]
       	MATH 3 {PValue} = 3*{PWattsDeltaRbar}/SQRT[{PAvgCnt}]/1.128
       	DelayWrite WattsDeltaUCL$ = {PValue}
       	MATH 3 {PValue} = -3*{PWattsDeltaRbar}/SQRT[{PAvgCnt}]/1.128
       	DelayWrite WattsDeltaLCL$ = {PValue}

       	! Calculate Control limits for amps delta, centered around 0, no change       	
       	DelayWrite AmpsDeltaXbar$ = MATH[{PAvgAmpAct}-{PArAvgAmp}]
       	MATH 3 {PValue} = 3*{PAmpsDeltaRbar}/SQRT[{PAvgCnt}]/1.128
       	DelayWrite AmpsDeltaUCL$ = {PValue}
       	MATH 3 {PValue} = -3*{PAmpsDeltaRbar}/SQRT[{PAvgCnt}]/1.128
       	DelayWrite AmpsDeltaLCL$ = {PValue}

       	! Calculate Control limits for volts delta, centered around 0, no change       	
       	DelayWrite VoltsDeltaXbar$ = MATH[{PAvgVoltAct}-{PArAvgVolt}]
       	MATH 3 {PValue} = 3*{PVoltsDeltaRbar}/SQRT[{PAvgCnt}]/1.128
       	DelayWrite VoltsDeltaUCL$ = {PValue}
       	MATH 3 {PValue} = -3*{PVoltsDeltaRbar}/SQRT[{PAvgCnt}]/1.128
       	DelayWrite VoltsDeltaLCL$ = {PValue}
EndSub
