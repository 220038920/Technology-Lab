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
Set 1 {PVersion} = 1.0
Status Green {ASystem_Title} Monitor v{PVersion}
Log Started Room Control_Mob {AProcedure} v{PVersion} System {ASystem}, {LStalls} Stalls

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

		
	If ({ASettings}) | ({PInit} = 1) Then

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

		Goto NewDay
	Endif

	If ({PInitTimer} > 0) & ({PInitTimer} < {ATestTime}) Then
		Set {PInit} = 1
		Set {PInitTimer} = 0
	Endif
	
Loop

End

! ------------------------------------------------------------------
