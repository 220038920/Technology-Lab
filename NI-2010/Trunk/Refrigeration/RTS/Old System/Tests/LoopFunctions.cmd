! --------------------------------------------------------------------------
! Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Included in all procedures in the loop
!    File     : LoopFunctions
!    Rev      : 1.0
!    By       : Mark Hooks
!    Date     : 20-Jun-95
!
!	Version	Date		By		Description
!	1.1			4/28/13	MH		Changed the ambient TC's from 9,10 to 23,24
!	1.2			4/15/15	SH		Using {AGroupLim} for ambient checking
!
! --------------------------------------------------------------------------

    Math 2 {PCyc1Hr} = {ATotalCycle} / ({ATestTime} / 3600)
    Math 2 {PCyc4Hr} = {ATotalCycle} / ({ATestTime} / 14400)
    Math 2 {PCyc24Hr} = {PCyc4Hr} * 6

    Math 4 {PWhr1Hr} = {PWhr} / ({ATestTime} / 3600)
    Math 4 {PWhr4Hr} = {PWhr} / ({ATestTime} / 14400)
    Math 4 {PWhr24Hr} = {PWhr4Hr} * 6
    Math 1 {POnPer} = ({ATotalOn} / ({ATotalOn} + {ATotalOff})) * 100

    ! -- Check for changes in the intervals ---
    If ({ASettings}) & ({ASim} = 0) Then
        Plot Interval {SSampleRate}
        Trend Interval {SSampleRate}
    Endif
	Group Lim Win {LRoomOut}				! Trigger ambient check
	! -- Check the room ambient
	If ({AGroupLim} = 0 & {AGroupLim_Last} = 1) Then
		Log Ambient OUT at HMS[{ATestTime}]
		Set {PRoomOut} = {ATestTime}
		Status Yellow Ambient Out at HMS[{ATestTime}]
	ElseIf ({AGroupLim} = 1 & {AGroupLim_Last} = 0) Then
		Math {PValue} = {AtestTime} - {PRoomOut}
		Log Ambient IN.  Duration HMS[{PValue}]
		Status Yellow Ambient Recovered at HMS[{ATestTime}]
	Endif
		
		





