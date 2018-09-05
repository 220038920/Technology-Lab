!AuxInProcess
!Calculates / processes the aux input channel
!---High Side
If {SHAuxType_Right} > 0 & {PHREF} > {PHREF_Total} & {PHREF_Total} > 0 Then	! {PAux?_Total} is a shadow variable set to max value
	Set {LValue} = {PHREF_Title} is Overrange: {PHREF} > {PHREF_Total}Max
	Status Red {LValue}
	!Gosub AddComment  ! This would get executed a bunch of times without a flag
Endif
If {SLAuxType_Right} > 0 & {PLREF} > {PLREF_Total} & {PLREF_Total} > 0 Then	! {PAux?_Total} is a shadow variable set to max value
	Set {LValue} = {PLREF_Title} is Overrange: {PLREF} > {PLREF_Total}Max
	Status Red {LValue}
	!Gosub AddComment  ! This would get executed a bunch of times without a flag
Endif

If {PHAuxType} = 20 | {PHAuxType} = 21 Then	! Winding Sensor
	! If ("{SColdResAmb}" = "") | ({SColdResAmb} = -1) Then  ! Cold Res Ambient hasn't been posted yet
		! If {PDome} > 10 Then  ! Can't take valid reading yet
			! Set {PHRef} = {PDome}   ! Set to Dome or Ambient
		! Else
			! Set {PHRef} = {PAmb}
		! Endif
	! Else  ! A Cold Res Amb has been posted so calculation will give valid temp
		If {PHAuxType} = 20 Then
			Math 4 {PHotRes} = {PHREF_raw} * 5.0
		Else
			Math 4 {PHotRes} = {PHREF_raw} * 10.0
		Endif
		If {PHotRes} > {SColdRes} Then  ! Hot Resistance should always be greater under normal conditions
			If "{STempUnits}" = "C" Then
				If "{SWindingType}" = "Aluminum" Then
					Math 2 {PHRef} = ({PHotRes}/{SColdRes})*(228.0 + {SColdResAmb})-228.0  ! Al windings in °C
				Else
					Math 2 {PHRef} = ({PHotRes}/{SColdRes})*(234.5 + {SColdResAmb})-234.5  ! Cu windings in °C
				Endif
			Else
				If "{SWindingType}" = "Aluminum" Then
					Math 2 {PHRef} = ({PHotRes}/{SColdRes})*(378.4 + {SColdResAmb})-378.4  ! Al windings in °F
				Else
					Math 2 {PHRef} = ({PHotRes}/{SColdRes})*(390.1 + {SColdResAmb})-390.1  ! Cu windings in °F
				Endif
			Endif
		Else
			Set 2 {PHRef} = {SColdResAmb}
		Endif
	!Endif
Endif

If {PLAuxType} = 20 | {PHAuxType} = 21 Then	! Winding Sensor
	If ("{SColdResAmb}" = "") | ({SColdResAmb} = -1) Then  ! Cold Res Ambient hasn't been posted yet
		If {PDome} > 10 Then  ! Can't take valid reading yet
			Set {PLRef} = {PDome}   ! Set to Dome or Ambient
		Else
			Set {PLRef} = {PAmb}
		Endif
	Else  ! A Cold Res Amb has been posted so calculation will give valid temp
		If {PLAuxType} = 20 Then
			Math 4 {PHotRes} = {PLREF_raw} * 10.0
		Else
			Math 4 {PHotRes} = {PLREF_raw} * 5.0
		Endif
		If {PHotRes} > {SColdRes} Then  ! Hot Resistance should always be greater under normal conditions
			If "{STempUnits}" = "C" Then
				If "{SWindingType}" = "Aluminum" Then
					Math 2 {PLRef} = ({PHotRes}/{SColdRes})*(228.0 + {SColdResAmb})-228.0  ! Al windings in °C
				Else
					Math 2 {PLRef} = ({PHotRes}/{SColdRes})*(234.5 + {SColdResAmb})-234.5  ! Cu windings in °C
				Endif
			Else
				If "{SWindingType}" = "Aluminum" Then
					Math 2 {PLRef} = ({PHotRes}/{SColdRes})*(378.4 + {SColdResAmb})-378.4  ! Al windings in °F
				Else
					Math 2 {PLRef} = ({PHotRes}/{SColdRes})*(390.1 + {SColdResAmb})-390.1  ! Cu windings in °F
				Endif
			Endif
		Else
			Set 2 {PLRef} = {SColdResAmb}
		Endif
	Endif
Endif
