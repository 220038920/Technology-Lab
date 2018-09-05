! --------------------------------------------------------------------------
! Whirlpool BHTC Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Global control procedure
!    File     : RmControl.cmd
!    Rev      : 1.0
!    By       : Mark Hooks
!    Date     : 12-Nov-2013
!    Last change on :
!
Exit

Lookup {AProcedure}.lup

Transfer Nodevice 1
Transfer Monitor Trend
Point Clear
Point rmcontrol
Log Loaded point file {LPoint1}
Point {LPoint1}
For 1 to {LStalls}
	Log PVolt?: {PVoltSet?}
Next 
If {Lpoint2} = 0 Then
Else
	Log Loaded point file {LPoint2}
	Point {LPoint2}
Endif
If {Lpoint3} = 0 Then
Else
	Log Loaded point file {LPoint3}
	Point {LPoint3}
Endif
If {Lpoint4} = 0 Then
Else
	Log Loaded point file {LPoint4}
	Point {LPoint4}
Endif

Lookup RmControl
Lookup {LPidSettings}
Set 1 {PVersion} = 1.0
Status Green {ASystem_Title} Monitor v{PVersion}
Log Started Room Control_Hum {AProcedure} v{PVersion} System {ASystem}, {LStalls} Stalls, {LRooms} Rooms.

Clear All

Set 0 {PTimer} = {ATestTime}
Math 0 {PInitTimer} = {ATestTime} + 10
Set 0 {Pinit} = 0
Set 0 {PLastDay} = 0
Set 0 {PGotoTimer} = 0

Label NewDay
Clear All
Trend Interval 10
Trend Clear

Revision
Set {LSaveAs} = {ASystem_Title}\RoomMon-{ARevision}-{AStation_Title}
Set {LResultReport} = RmMonitor
Set {SPlotList1} = RMDRY1;RMHUM1
Log Started new room plot file {LSaveAs}
Result Copies 1
Result Report {LResultReport} 
Result Create {LSaveAs}
Plot Create {LSaveAs}
Write StartTime = {ADate} HMS[{ATime_Raw}]
Plot Interval 60
Plot Clear
Set {PLastDay} = {ADay}

Begin

	Set 2 {PFreq} = {D6-016}
	! Look for changes in the room conditions
	If "{SRmCond1}" <> "{LRmCond}" Then
		Log Room condtions changed from {LRmCond} to {SRmCond1}
		Set {LRmCond} = {SRmCond1}
		Database Default Query Select * From Room_Amb_Setpoints Where [Setpoint] = '{SRmCond1}'
	Endif
	If ({ADbQueryResults} = 2) | ({ADbQueryResults} = 3) Then
		Status Red Unable to read ambient data {ADbQueryMessage}
		Log Unable to read ambient data {ADbQueryMessage}
		Database Reset
	Endif
	If {ADbQueryResults} = 1 Then
		Status Green Ambient setpoint changed
		Set {SRmdrySetp1} =  {QTemperature}
		Set {SRmhumSetp1} = {QHumidity}
		Set {SRmcoolSetp1} = {QRoomCoil}
		Set {SRmdehumSetp1} = {QDehumCoil}
		Set {PInit} = 1
		Database Reset
	Endif
		
	If ({ASettings}) | ({PInit} = 1) Then
		! Hud just turned on so find next setpoint change
		! 3am set 78 83%
		! 3pm set 90 65%
		If ("{SEnableHud}" <> "{LEnableHud}") Then
			Set {LEnableHud} = {SEnableHud}
			If ("{SEnableHud}" = "Y") Then
				If {ATime_Raw} > ({SStartTime1_Right}*3600) Then
					Set 0 {PStartTime1Flag} = 1
				Else
					Set 0 {PStartTime1Flag} = 0
				Endif
				If {ATime_Raw} > ({SStartTime2_Right}*3600) Then
					Set 0 {PStartTime2Flag} = 1
				Else
					Set 0 {PStartTime2Flag} = 0
				Endif
				Log GE Hud Test enabled {PStartTime1Flag} {PStartTime2Flag} 
			Endif
		Endif
		For 1 to {LRooms}
			Set {PRmrun?} = {SRmrun?_Right}
		
			! Make sure the setpoints are valid
			If {SRmdrySetp?} < 50 Then
				Set {SRmdrySetp?} = 50
			ElseIf {SRmdrySetp?} > 120 Then
				Set {SRmdrySetp?} = 120
			Endif
			
			If {SRmhumSetp?} < 0 Then
				Set {SRmhumSetp?} = 0
			ElseIf {SRmhumSetp?} > 100 Then
				Set {SRmhumSetp?} = 100
			Endif
		
			If {SRmcoolSetp?} < 0 Then
				Set {SRmcoolSetp?} = 0
			Elseif {SRmcoolSetp?} > 120 Then
				Set {SRmcoolSetp?} = 120.0
			Endif
		
			If {SRmdehumSetp?} < 0 Then
				Set {SRmdehumSetp?} = 0
			Elseif {SRmdehumSetp?} > 120 Then
				Set {SRmdehumSetp?} = 120.0
			Endif
		
			! Copy settings to the Wago controller
			Set 2 {PRmdrySetp?} = {SRmdrySetp?}
			Set 2 {PRmhumSetp?} = {SRmhumSetp?}
			Set 2 {PRmcoolSetp?} = {SRmcoolSetp?}
			Set 2 {PRmdehumSetp?} = {SRmdehumSetp?}
		Next
	
 		For 1 to {LStalls}
		
			! -- Change the stand voltage or frequency setpoint
			If ({SVoltSet?} <> {LVoltLast?}) | ({SFreqSet?} <> {LFreqLast?}) Then
				Log Set Stand {AStation?_Title} to {SVoltSet?}V {SFreqSet?}Hz PVolt:{PVoltSet?}
				Set {PVoltSet?} = {SVoltSet?}
				Set {LVoltLast?} = {SVoltSet?}
				Set {LFreqLast?} = {SFreqSet?}
	            Set {PFreqSet?} = {SFreqSet?_Right}
				Transfer Cal ? {SVoltSet?} {SFreqSet?_Right}
			EndIf
			
			! -- Change the stand polarity
			If {SPolarity?_Right} <> {LPolarity?} Then
				Log Set Stand Polarity {AStation?_Title} to {SPolarity?}
				Set {PPolarity?} = {SPolarity?_Right}
				Set {LPolarity?} = {SPolarity?_Right}
			EndIf

			! -- Change the stand current leakage
			If {SCurLeak?_Right} <> {LCurLeak?} Then
				Log Set Stand Curleak {AStation?_Title} to {SCurLeak?}
				Set {PCurLeak?} = {SCurLeak?_Right}
				Set {LCurLeak?} = {SCurLeak?_Right}
			EndIf

			! -- Make sure controls are unlocked at the end of the test
			If {AMode?} = 0 Then
				Set UnLock {SVoltSet?}
				Set UnLock {SFreqSet?}
				Set UnLock {SPolarity?}
			EndIf
		Next		
	Endif

	// GE Hud test which changes the ambient twice per day
	If "{SEnableHud}" = "Y" Then
		If {PStartTime1Flag} = 0 & {ATime_Raw} > ({SStartTime1_Right}*3600) Then
			Set {SRmCond1} = {SHudRmCond1}
			Set {PStartTime1Flag} = 1
		ElseIf {PStartTime2Flag} = 0 & {ATime_Raw} > ({SStartTime2_Right}*3600) Then
			Set {SRmCond1} = {SHudRmCond2}
			Set {PStartTime2Flag} = 1
		Endif
	Endif

	For 1 to {LRooms}
		! Check the room temp for in conditions
		If {PRmrun?} = 1 Then
			Math 2 {PValue} = {PRmdry?} - {SRmdrySetp?}
			If ABS[{PValue}] < 1.0 Then
				If {PDryIn?} <> 1 Then
					Set {PDryIn?} = 1
					Set {PDryTimer?} = {ATestTime}
				ElseIf ({ATestTime} > {PDryTimer?} + 600) & ({PDryState?} <> 1) Then
					Set {PDryState?} = 1
					Log {PRmStatus?_Title} temp on conditions {PRmDry?}
					Status Green {PRmStatus?_Title} temp on conditions {PRmDry?}
				Endif
			Else
				If {PDryIn?} <> 0 Then
					Set {PDryIn?} = 0
					Set {PDryTimer?} = {ATestTime}
				ElseIf ({ATestTime} > {PDryTimer?} + 600) & ({PDryState?} <> 0) Then
					Set {PDryState?} = 0
					Log {PRmStatus?_Title} temp out of conditions {PRmDry?}
					Status Yellow {PRmStatus?_Title} temp out of conditions {PRmDry?}
				Endif	
			Endif

			! Check the room humidity for in conditions
			If {SRmhumSetp?} > 0 Then
				Math 2 {PValue} = {PRmHum?} - {SRmhumSetp?}
				If ABS[{PValue}] < 3.0 Then
					If {PHumIn?} <> 1 Then
						Set {PHumIn?} = 1
						Set {PHumTimer?} = {ATestTime}
					ElseIf ({ATestTime} > {PHumTimer?} + 600) & ({PHumState?} <> 1) Then
						Set {PHumState?} = 1
						Log {PRmStatus?_Title} Humidity on conditions {PRmHum?}
						Status Green {PRmStatus?_Title} Humidity on conditions {PRmHum?} 
					Endif
				Else
					If {PHumIn?} <> 0 Then
						Set {PHumIn?} = 0
						Set {PHumTimer?} = {ATestTime}
					ElseIf ({ATestTime} > {PHumTimer?} + 600) & ({PHumState?} <> 0) Then
						Set {PHumState?} = 0
						Log {PRmStatus?_Title} humidity out of conditions {PRmHum?}
						Status Yellow {PRmStatus?_Title} humidity out of conditions {PRmHum?}
					Endif	
				Endif
			Else
				Set {PHumState?} = 1
			Endif
	
			! Control the green LED on the chamber front
			If ({PDryState?} = 1) & ({PHumState?} = 1) Then
				Set {PRmready?} = 1
			ElseIf ({PDryState?} = 1) & ({PHumState?} = 0) Then
				Set {PRmready?} = 2
			ElseIf ({PDryState?} = 0) & ({PHumState?} = 1) Then
				Set {PRmready?} = 3
			Else
				Set {PRmready?} = 0
			Endif
		Else
			Set {PRmready?} = 0
		Endif
	
		! ---- Global room conditions -----
		Set {PGblRmdry?} = {PRmdry?}
		Set {PGblRmhum?} = {PRmHum?}
		!Wetbulb {PGblRmWet?} = {PRmdry?} {PRmhum?} 29.5
		
		! ----- Check for room faults ------
		If {PRmStatus?} <> {PDryState?_Cnt} Then
			Set {PDryState?_Cnt} = {PRmStatus?}
			If {PRmStatus?} = 0 Then
				Status Green {PRmStatus?_Title} Ok
				Log {PRmStatus?_Title} reports no faults
			ElseIf BIT[{PRmStatus?},0] = 1 Then
				Status Red {PRmStatus?_Title} E-Stop fault
				Log {PRmStatus?_Title} reports E-Stop was pressed
			ElseIf BIT[{PRmStatus?},1] = 1 Then
				Status Red {PRmStatus?_Title} supply fault
				Log {PRmStatus?_Title} reports duct supply temp over
			ElseIf BIT[{PRmStatus?},2] = 1 Then
				Status Red {PRmStatus?_Title} temp fault
				Log {PRmStatus?_Title} reports room temp over
			Endif
		Endif
	Next

	
	! --------- Load PID settings ----------------
	If ({SReloadPid_Right} = 1) | ({Pinit} = 1) Then
		Set {SReloadPid} = No,0
		Lookup {LPidSettings}
		Log Reloaded the chamber PID settings DryP:{LRmDryP1} DryI:{LRmDryI1} HumP:{LRmHumP1} HumI:{LRmHumI1}
		For 1 to {LRooms}
			Set {PRmDryP?} = {LRmDryP1}
			Set {PRmDryI?} = {LRmDryI1}
			Set {PRmHumP?} = {LRmHumP1}
			Set {PRmHumI?} = {LRmHumI1}
			Set {PRmHeatP?} = {LRmHeatP1}
			Set {PRmHeatI?} = {LRmHeatI1}
			Set {PRmCoolP?} = {LRmCoolP1}
			Set {PRmCoolI?} = {LRmCoolI1}
			Set {PRmDehumP?} = {LRmDehumP1}
			Set {PRmDehumI?} = {LRmDehumI1}
			Log Set ? to:DryP:{PRmDryP?} DryI:{PRmDryI?} CoolP:{PRmCoolP?} CoolI:{PRmCoolI?}
		Next
	Endif
	
	! ----- At startup make sure all is in sync ----------
	If {Pinit} = 1 Then
		Set {Pinit} = 0
		Log Init completed
	Endif

	If {SResetTrend_Right} = 1 Then
		Set {SResetTrend} = No,0
		Trend Clear
	Endif
	
	If {ADay} <> {PLastDay} Then
		Set {PStartTime1Flag} = 0		// Reset GE Hud test flags
		Set {PStartTime2Flag} = 0
		Write RmTitle = Room {ASystem} Monitor
		Write EndTime = {ADate} HMS[{ATime_Raw}]
		Write Version = Monitor v{PVersion}
		Write TotalTest = HMS[{ATestTime}]

		Write RmHum1 = {PRmHum1_Title}, {PRmHum1_MaxM}, {PRmHum1_MinM}, {PRmHum1}
		Write RmDry1 = {PRmDry1_Title}, {PRmDry1_MaxM}, {PRmDry1_MinM}, {PRmDry1}
		Write Freq = {PFreq_Title}, {PFreq_MaxM}, {PFreq_MinM}, {PFreq}
		! Save test data to the database   
		Database rtsdb1 Table Results key {ARevision}
		Database Tester = RoomCntrl
		Database TestType = Monitor
		Database TestDate = {AStartDate} {AStartTime}
		Database EndDate = {ADate} HMS[{ATime_Raw}] 
		Database ResultFile = {LSaveAs}
		Database ResultReport = {LResultReport}
		Database Lab = 1
		Database Stall = {AProcedure}

		Result Print A
		If {ATestTime} > 600 Then
			Database Write
			Result Close 
			Result Copies 1
			Result Report {LResultReport} 
			Revision
			Set {LSaveAs} = {ASystem_Title}\RoomMon-{ARevision}-{AStation_Title}
			Result Create {LSaveAs}
			Plot Create {LSaveAs}
		Endif	

		Goto NewDay
	Endif

! When RTS starts there is a time delay before connecting to the Wago.
! This allows the global procedure time to initialize the variables.
! The data is located in a image for transfer as a block.
! When any setting changes the complete block is transferred.
! This is fast and only takes one Ethernet package.
! this timer that triggers an update after the procedure starts.

	If ({PInitTimer} > 0) & ({PInitTimer} < {ATestTime}) Then
		Set {PInit} = 1
		Set {PInitTimer} = 0
	Endif
	
Loop

End

! ------------------------------------------------------------------
