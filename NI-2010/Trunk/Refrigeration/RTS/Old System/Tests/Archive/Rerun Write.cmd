If {ASim} Then
	Write AStation = {SOrigStall}
	Write SOperator = {SOrigTester}
	Write StartTime = {SOrigStartTime}
	Write EndTime = {SOrigEndTime}
	Write SComment1 = {SComment1Orig}*
	Write SComment2 = {SComment2Orig}
	Write SSettings = {SOrigControlSet}
	Write SAmbient = {SOrigAmbient}
	Write ResultFile = {SRerunFile}-
	Write VoltSet = {SOrigVolt}
	Write FreqSet = {SOrigFreq}
	Write ARevision = {STestNumber}
	Log Rerun: ARevision = {STestNumber}
Endif
