! Save Yok watt hours for power period
If "{SUseYok}" = "Y" Then
    Math {PYok24Hr} = {PYWhr} / ({PTotal} / 86400)

	Set {LValue} = Yok:  KWhr {PYWhr} Kwhr24 {PYok24Hr}
	Gosub AddComment
	Set {LValue} = Whr Difference {PYDWhr} RTS:{PWhr} Yok:{PYWhr}				! Calculate Error in watt hours
        
	Gosub AddComment
    Math {PValue}=100*{PYDWhr}/{PYWhr}
	Set {LValue} = Whr % Error {PValue}
	Gosub AddComment
! Voltage
    If {PYVolt} > 0 Then
		Write YVolt = {PYVolt_Avg_On_Off_Def_Rec}
	Endif
! Wattage
	Write YWAvgOn = {PYWatt_Avg_On} 
	Write YWAvgOff = {PYWatt_Avg_Off} 
	Write YWAvgDef = {PYWatt_Min_Def} 
	Write YWAvgRec = {PYWatt_Avg_Rec}
Endif
