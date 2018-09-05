! Get stability and uncertainty information
	! If External lab or Brazil then skip uncertainty
	If {LLab}=15 | {Llocation} = 9 Then
	Else
		! Get stable info from previous test
		! The query finds the previous test number if if ended < 1 hour from the start of the next test
		If {ASim} Then
			! Use original stall and start time to find previous test number and stability info
			Database {LDatabase} Query execute rts_get_stability '{SOrigStall}','{SOrigStartTime}'
			Set {LValue} = rts_get_stability '{SOrigStall}','{SOrigStartTime}'
		Else
			! -1 means use currend time to find previous test number and stability info
			Database {LDatabase} Query execute rts_get_stability '{AStation_Title}',-1
			Set {LValue} = rts_get_stability '{AStation_Title}',-1
		Endif
Label SSQuery
			If {AdbQueryResults} = 1 Then
				Log Stability Retrieved PrevTest {QPrevTestNum} {QSSStart} {QSSEnd} {QSSLength}
			ElseIf {AdbQueryResults} >= 2 Then
				Log Stability {LValue} Error: {AdbQueryMessage}
			Else
				Goto SSQuery			
			Endif
			DelayWrite SSStart1 = {QSSStart}
			DelayWrite SSEnd1 = {QSSEnd}
			DelayWrite SSLength1 = {QSSLength}
			Set 2 {PPrevCabAvg} = {QSSCabAvg}
			Set 2 {PPrevFrzAvg} = {QSSFrzAvg}
			Set 0 {PPrevTestNum} = {QPrevTestNum}

		! Get Uncertainty information
		If {ASim} Then
			Database {LDatabase} Query execute rts_get_calibration '{SOrigStall}',{AVoltageRange}
		Else
			Database {LDatabase} Query execute rts_get_calibration '{AStation_Title}',{AVoltageRange}
			Begin
			    If {AdbQueryResults} = 1 Then
			    	! query results 3 indicates no records returned
			    	! which shows an error on RTSAdo
			    	Log Uncertainty for Watts:{QWattsUncertainty} Volts:{QVoltsUncertainty} Amps:{QAmpsUncertainty} for range {AVoltageRange}.  Last Cal Date:{QLastStallCalibration}
			    	DelayWrite WattUncert = {QWattsUncertainty}
			    	DelayWrite AmpUncert = {QAmpsUncertainty}
			    	DelayWrite VoltUncert = {QVoltsUncertainty}
			    	DelayWrite LastCal = {QLastStallCalibration}
			        Leave
			    Elseif {AdbQueryResults} = 2 Then
			        Status Yellow Unable to get calibration info
			        Log Unable to get calibration info
			        Log {AdbQueryMessage}
			        Leave
			    	Log Waiting on getting calibration info
			    Endif
			Loop
		Endif
	Endif
