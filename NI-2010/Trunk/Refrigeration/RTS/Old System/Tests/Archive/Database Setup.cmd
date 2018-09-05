! Database Setup
If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASim} Then
		Database {LDatabase} Table Performance key {STestNumber}
	Else
		Database {LDatabase} Table Performance key {ARevision}
	Endif
	If {PPrevTestNum} >0 Then
		Database PreviousTestNum = {PPrevTestNum}
		Log Previous TestNum recorded {PPrevTestNum}
	Endif	
Endif  
