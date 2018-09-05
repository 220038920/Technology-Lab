If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASim} = 1 Then
		Database {LDatabase} Table Heatleak key {STestNumber}
		Log Database {LDatabase} Table Heatleak key {STestNumber} Sim
	Else
		Database {LDatabase} Table Heatleak key {ARevision}
		Log Database {LDatabase} Table Heatleak key {ARevision}
	Endif
	! Save detailed information from the test
	Database TestName = {LTestName} {PVersion}
	Database TotalHeatleak = {RTotalWhrs}
	Database 85FFWhrs = {R85FFWhrs}
	Database 85FZWhrs = {R85FZWhrs}
	Database 85FFDeltaT = {R85FFDT}
	Database 1AvgFFint = {R1AvgFFInt}
	Database 1AvgFZint = {R1AvgFZInt}
	Database 1AvgFFext = {R1AvgFFExt}
	Database 1AvgFZext = {R1AvgFZExt}
	Database 2AvgFFint = {R2AvgFFInt}
	Database 2AvgFZint = {R2AvgFZInt}
	Database 2AvgFFext = {R2AvgFFExt}
	Database 2AvgFZext = {R2AvgFZExt}
	If {AMode} <> 3 Then
		Database Write
	Endif
Endif
