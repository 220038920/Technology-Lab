!Set up Current Leakage
Error off
If "{SCurLeak}" = "Y" Then
	Log Current leakage loaded
	Point curleak
	Set {SCurLeak#} = 1
	Plot Scale HRef = 10.0
	Trend Scale HRef = 10.0
Else
	Set {SCurLeak#} = 0
Endif
!Set up High Side Auxiliary Input
If {PHAuxType} = 0 & {SHAuxType_Right} > 0 Then

	Set 0 {PHAuxType} = {SHAuxType_Right}	! Save the type of High Side Aux
	Log Loaded High Side Input: {SHAuxType} 
	!Load href input point if necessary
	If {PHAuxType} = 4 Then
		Log Current leakage loaded
		Point hcurleak
		Plot Scale HRef = 10.0
		Trend Scale HRef = 10.0
	ElseIf ({PHAuxType} = 20) Then
		Point hWindTemp
		Set 4 {PHRef}= {PHRef}
	ElseIf {phref} > -100 then
		Log Href already loaded: {PHref}
		! Tester already has ref in point file
	elseif ({PHAuxType} <> 0) & ("{SHAuxType}" <> "") then
		Point href				
		Log Loaded href {phref}
		Set 4 {PHREF}={PHREF} 
	Endif

	Set $ = {SHAuxType_Right}
	Database {LDatabase} Query select * from rts_AuxInputs where ID = $
	Math 0 {PValue} = {ATestTime}+10
Label 	AuxHLoop
		If {AdbQueryResults} = 1 Then
			! query results 3 indicates no records returned
			! which shows an error on RTSAdo
			Log High Side Input ID $ {QName} {QDescription} Gain:{QGain} Zero:{QZero} Max:{QMax}
			If {ASim} = 0 Then
				Calibrate AuxGain {PHRef} {QGain}
				Calibrate AuxZero {PHRef} {QZero}
			Endif
			Set {PHRef_Title} = {QName}
			Set {PHRef_Total} = {QMax}

		Elseif {AdbQueryResults} = 2 Then
			Status Yellow Unable to get calibration info
			Log Unable to get calibration info
			Log {AdbQueryMessage}
		Elseif {ATestTime} < {PValue} Then
			Goto AuxHLoop			
		Else
			Log Timeout reading High Side Input ID $
		Endif

Endif
!LAuxInSetup
If {PLAuxType} = 0 & {SLAuxType_Right} > 0 Then

	Set 0 {PLAuxType} = {SLAuxType_Right}	! Save the type of High Side Aux
	!Load ref input point file if necessary
	If {PLAuxType} = 4 Then
		Log Current leakage loaded
		Point lcurleak
		Plot Scale LRef = 10.0
		Trend Scale LRef = 10.0
	ElseIf ({PLAuxType} = 20) Then
		Point lWindTemp
		Set 4 {PLRef} = {PLRef}
	ElseIf {plref} > -100 then
		! Tester already has lref in point file
		Set 4 {plref} = 0
	elseif ({PLAuxType} <> 0) & ("{SLAuxType}" <> "")  then
		Point lref				! RTP stalls have with REF and PSI and use REF for 10 v inputs
		Log Loaded lref {plref}
		Set 4 {PLREF}={PLREF}
	Endif

	Log Loaded Low Side Input: {SLAuxType} 
	Set $ = {SLAuxType_Right}
	Database {LDatabase} Query select * from rts_AuxInputs where ID = $
	Math 0 {PValue} = {ATestTime}+10
Label 	AuxLLoop
		If {AdbQueryResults} = 1 Then
			! query results 3 indicates no records returned
			! which shows an error on RTSAdo
			Log Low Side Input ID $ {QName} {QDescription} Gain:{QGain} Zero:{QZero} Max:{QMax}
			If {ASim} = 0 Then
				Calibrate AuxGain {PLRef} {QGain}
				Calibrate AuxZero {PLRef} {QZero}
			Endif
			Set {PLRef_Title} = {QName}
			Set {PLRef_Total} = {QMax}
		Elseif {AdbQueryResults} = 2 Then
			Status Yellow Unable to get calibration info
			Log Unable to get calibration info
			Log {AdbQueryMessage}
		Elseif {ATestTime} < {PValue} Then
			Goto AuxLLoop			
		Else
			Log Timeout reading Low Side Input ID $
		Endif
Endif 
