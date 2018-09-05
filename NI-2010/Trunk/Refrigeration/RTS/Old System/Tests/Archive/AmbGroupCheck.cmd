! Check for ambient group defined
If {PAmb} > -998 Then
Else
	If ({POldAmb} > -998 & {ASim} = 0) & ("{AChain}" = "N/A") Then
		Prompt YesNo No Ambient TCs are defined.  Press Yes to Continue.
		Begin
			If {APrompt} = 6 Then
				Leave
			ElseIf {APrompt} = 7 Then
				Status Gray Test Aborted
				Halt			
			Endif
		Loop
	Endif
Endif
