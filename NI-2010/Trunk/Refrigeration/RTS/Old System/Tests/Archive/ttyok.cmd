! Save Yok watt hours for power period
If "{SUseYok}" = "Y" Then
    Math {PYok24Hr} = {PYWhr} / ({PTotal} / 86400)

	Set {LValue} = Yok: KWhr {PYWhr} RTS: {PWhr} Diff: {PYDWhr} (Whr)
	Gosub AddComment
    Math 2 {PValue}=0.10*{PYDWhr}/{PYWhr}
	Set {LValue} = Whr % Error {PValue}
	Gosub AddComment
   
! Voltage
    If {PYVolt} > 0 Then
		Write YVolt = {PYVolt_Avg_On_Off_Def_Rec}
	Endif
! Wattage - Doesn't work right because yok sees transition before RTS
!	Write YWAvgOn = {PYWatt_Avg_On} 
!	Write YWAvgOff = {PYWatt_Avg_Off} 
!	Write YWAvgDef = {PYWatt_Avg_Def} 
!	Write YWAvgRec = {PYWatt_Avg_Rec}
Endif
