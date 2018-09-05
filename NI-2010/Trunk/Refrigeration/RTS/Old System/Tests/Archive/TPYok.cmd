! Save Yok watt hours for temp period
If "{SUseYok}" = "Y" Then
    Math 5 {PValue} = {PYWhr_Max_On_Off} - {PYWhr_Min_On_Off}
    Math {PYok24Hr} = {PValue} / ({PTotal} / 86400)
    Math {PMessIndex} = {PMessIndex} + 1
    Set $ = {PMessIndex}
    Write $TM = TP Yok Whrs
	Write $CM = YokWhr: {PValue} YokWhr24: {PYok24Hr}
! Voltage
    If {PYVolt} > 0 Then
	    Math {PMessIndex} = {PMessIndex} + 1
	    Set $ = {PMessIndex}
	    Write $TM = TP Yok Volts
		Write $CM = Average: {PYVolt_Avg}
	Endif
! Wattage
    Math {PMessIndex} = {PMessIndex} + 1
    Set $ = {PMessIndex}
    Write $TM = TP Yok Watts
	Write $CM = MinOn: {PYWatt_Min_On} MinOff {PYWatt_Min_Off}
    Math {PMessIndex} = {PMessIndex} + 1
    Set $ = {PMessIndex}
	Write $CM = MaxOn: {PYWatt_Max_On} MaxOff {PYWatt_Max_Off}
    Math {PMessIndex} = {PMessIndex} + 1
    Set $ = {PMessIndex}
	Write $CM = AvgOn: {PYWatt_Avg_On} AvgOff {PYWatt_Avg_Off}

Endif

