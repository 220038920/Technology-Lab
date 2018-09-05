If {PAmb} > -990 Then
	Point HumidityOnly
	Set 1 {PHumidity}={PHumidity}
Else
	Point humidity
	Set 1 {PHumidity}={PHumidity}
	Set 2 {PRoomTemp}={PRoomTemp}
Endif


