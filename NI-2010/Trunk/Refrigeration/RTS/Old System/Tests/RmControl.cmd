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
Point {LPoint1}
Error off
If {Lpoint2} = 0 Then
Else
	Point {LPoint2}
Endif
If {Lpoint3} = 0 Then
Else
	Point {LPoint3}
Endif
If {Lpoint4} = 0 Then
Else
	Point {LPoint4}
Endif

Log Point files loaded: {LPoint1} {LPoint2} {LPoint3} {Lpoint4}
Error on
Lookup RmControl
Lookup {LPidSettings}
Set 1 {PVersion} = 1.0
Status Green {ASystem_Title} Monitor
Log Started Room Control {AProcedure} v{PVersion} System {ASystem}, {LStalls} Stalls, {LRooms} Rooms.
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

Log Started new room plot file {ASystem_Title}\{Adate}
Plot Create {ASystem_Title}\{AMonth}_{ADay}_{AYear}
Result Create {ASystem_Title}\{AMonth}_{ADay}_{AYear}
Plot Interval 60
Plot Clear
Set {PLastDay} = {ADay}

Begin


	! Look for changes in the room conditions
!	If "{SRmCond}" <> "{LRmCond}" Then
!		Log Room condtions changed from {LRmCond} to {SRmCond}
!		Set {LRmCond} = {SRmCond}
!		Database Default Query Select * From RoomControl Where [RmCond] = '{SRmCond}'
!	Endif
!	If ({ADbQueryResults} = 2) | ({ADbQueryResults} = 3) Then
!		Status Red Unit {ADbQueryMessage}
!		Log Unable to read unit data {ADbQueryMessage}
!		Database Reset
!	Endif
!	If {ADbQueryResults} = 1 Then
!		Set {SRmdrySetp} =  {QRmdrySetp}
!		Set {SRmhumSetp} = {QRmhumSetp}
!		Set {SRmcoolSetp} = {QRmcoolSetp}
!		Set {SRmdehumSetp} = {QRmdehumSetp}
!		Set {PRmfanSetp} = {QRmfanSetp}
!		Set {PInit} = 1
!		Database Reset
!	Endif

		
	If ({ASettings}) | ({PInit} = 1) Then

		For 1 to {LRooms}
			Set {PRmrun?} = {SRmrun?_Right}
		
			! Make sure the setpoints are valid
			If {SRmdrySetp?} < 50 Then
				Set {SRmdrySetp?} = 50
			ElseIf {SRmdrySetp?} > 125 Then
				Set {SRmdrySetp?} = 125
			Endif
				
			If {SRmcoolSetp?} < 0 Then
				Set {SRmcoolSetp?} = 0
			Elseif {SRmcoolSetp?} > 125 Then
				Set {SRmcoolSetp?} = 125.0
			Endif
				
			! Copy settings to the Wago controller
			Set 2 {PRmdrySetp?} = {SRmdrySetp?}
			Set 2 {PRmcoolSetp?} = {SRmcoolSetp?}
		Next
	
 		For 1 to {LStalls}
			!Log ? {SVoltSet?} {LVoltLast?} {SFreqSet?} {LFreqLast?}
		
			! -- Change the stand voltage or frequency setpoint
			If ({SVoltSet?} <> {LVoltLast?}) | ({SFreqSet?} <> {LFreqLast?}) Then
				Log Set Station1:{AStation?_Title} to {SVoltSet?}V {SFreqSet?}Hz
				Set {PVoltSet?} = {SVoltSet?}
				Set {LVoltLast?} = {SVoltSet?}
				Set {LFreqLast?} = {SFreqSet?}
	            Set {PFreqSet?} = {SFreqSet?_Right}
				Transfer Cal ? {SVoltSet?} {SFreqSet?_Right}
			EndIf
			
			! -- Make sure controls are unlocked at the end of the test
			If {AMode?} = 0 Then
				Set UnLock {SVoltSet?}
				Set UnLock {SFreqSet?}
			EndIf
		Next		
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

			! Control the green LED on the chamber front
			If {PDryState?} = 1 Then
				Set {PRmready?} = 1
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
	
	! -----  Room test status blue LED --------
	! Look for any tests running
	Set {PValue} = 0
	If {LRooms} = {LStalls} Then
		For 1 to {LStalls}
			If {AMode?} Then
				Set {PRmTesting?} = 1
			Else
				Set {PRmTesting?} = 0
			Endif
		Next
	Else
		For 1 to {LStalls}
			If {AMode?} Then
				Math {PValue} = {PValue} + 1
			Endif
			If ? = 8 then
				If {PValue} > 0 Then
					Set {PRmTesting1} = 1
					Set {PValue} = 0
				Else
					Set {PRmTesting1} = 0
				Endif
			ElseIf ? = 16 then
				If {PValue} > 0 Then
					Set {PRmTesting2} = 1
					Set {PValue} = 0
				Else
					Set {PRmTesting2} = 0
				Endif
			ElseIf ? = 24 then
				If {PValue} > 0 Then
					Set {PRmTesting3} = 1
					Set {PValue} = 0
				Else
					Set {PRmTesting3} = 0
				Endif
			Endif
		Next	
	Endif
	
	! --------- Load PID settings ----------------
	If ({SReloadPid_Right} = 1) | ({Pinit} = 1) Then
		Set {SReloadPid} = No,0
		Lookup {LPidSettings}
		Log Reloaded the chamber PID settings
		Log Reloaded the chamber PID settings DryP:{LRmDryP1} DryI:{LRmDryI1} CoolP:{LRmCoolP1} CoolI:{LRmCoolI1}
		For 1 to {LControllers}
			Set {PRmDryP?} = {LRmDryP1}
			Set {PRmDryI?} = {LRmDryI1}
			Set {PRmHeatP?} = {LRmHeatP1}
			Set {PRmHeatI?} = {LRmHeatI1}
			Set {PRmCoolP?} = {LRmCoolP1}
			Set {PRmCoolI?} = {LRmCoolI1}
			Log Set ? to:{PRmDryP?} DryI:{PRmDryI?} CoolP:{PRmCoolP?} CoolI:{PRmCoolI?}
		Next
	Endif

	
	! ----- At startup make sure all is in sync ----------
	If {Pinit} = 1 Then
		Set {Pinit} = 0
		Log Init completed
		Trend Clear
	Endif

	If {SResetTrend_Right} = 1 Then
		Set {SResetTrend} = No,0
		Trend Clear
	Endif
	
	If {ADay} <> {PLastDay} Then
		Goto NewDay
	Endif

	If ({PInitTimer} > 0) & ({PInitTimer} < {ATestTime}) Then
		Set {PInit} = 1
		Set {PInitTimer} = 0
	Endif
	
Loop

End

! ------------------------------------------------------------------
