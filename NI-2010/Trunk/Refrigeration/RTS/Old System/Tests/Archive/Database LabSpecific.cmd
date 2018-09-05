If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASystem} = {LRerunSys} Then
		Database {LDatabase} Table Performance key {STestNumber}
		Log Database {LDatabase} Table Performance key {STestNumber}
	Else
		Database {LDatabase} Table Performance key {ARevision}
		Log Database {LDatabase} Table Performance key {ARevision}
	Endif
	! Save detailed information from the test
	Database CompType = {SCompType}
	Database ControlSettings = {SSettings}
	Database RefrigType = {SRefrType}
	Database Voltage = {PVolt}
Endif
