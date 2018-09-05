If {SADCMaxDefr} > 96 Then
	Status Yellow Incorrect ADC Max Defrost value (>96): {SADCMaxDefr}. Set to 96
	Log Incorrect ADC Max Defrost value used: {SADCMaxDefr}. Set to 96
	Set {SADCMaxDefr} = 96
Endif
If {SADCMinDefr} < 6 Then
	Status Yellow Incorrect ADC Min Defrost value used: {SADCMinDefr}. Set to 6
	Log Incorrect ADC Min Defrost value used: {SADCMinDefr}. Set to 6
	Set {SADCMinDefr} = 6
ElseIf {SADCMinDefr} > 12 Then
	Status Yellow Incorrect ADC Min Defrost value used: {SADCMinDefr}. Set to 12
	Log Incorrect ADC Min Defrost value used: {SADCMinDefr}. Set to 12
	Set {SADCMinDefr} = 12
Endif
