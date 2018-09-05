! 	Using Hooks Range control
!   Used in Blue M,17-4 and 17-5
! 	Step down transformer 
! 	Same transducer used for 120/220
	If {SVoltSet?} <= 0 Then
		Set {P120Range?} = 0	! Both to zero turns power off
		Set {P220Range?} = 0	! 
	ElseIf {SVoltSet?} > 142 Then
		Set {P120Range?} = 0	! Set to 120V range
		Set {P220Range?} = 1	! Set to 220V range
	Else
		Set {P220Range?} = 0	! Set to 120V range
		Set {P120Range?} = 1	! Set to 220V range
	EndIf

! ------------------------------------------------------------------
