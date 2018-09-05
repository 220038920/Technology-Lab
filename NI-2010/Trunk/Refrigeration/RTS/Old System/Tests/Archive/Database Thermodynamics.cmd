! This is used for ISO tests
If {LRefTechData} Then
	Database Use {LLabSpecificTable}
	If {ASystem} = {LRerunSys} Then
		Database {LDatabase} Table Thermodynamics key {STestNumber}
		Log Database {LDatabase} Table Thermodynamics key {STestNumber}
	Else
		Database {LDatabase} Table Thermodynamics key {ARevision}
		Log Database {LDatabase} Table Thermodynamics key {ARevision}
	Endif
	! Save detailed information from the test
	Database CompType = {SCompType}
	Database ControlSettings = {SRegTerm}
	Database RefrigType = {SRefrType}
	Database Voltage = {PVolt}

	Log StableTime = {RSTM}
	Database StableTime = {RSTM}
	Database TestLength = {RTestLength}
	Database PPStart = {RPStart}
	Database PPEnd = {RPEnd}
	Database PPercentRun = {RPPerOn}
	Database PTotOn = {RPTotOn}
	Database PTotOff = {RPTotOff}
	Database PAvgOn = {RPAvgOn}
	Database PAvgOff = {RPAvgOff}
	Database PAvgCycle = {RPAvgCycle}
	Database PCycPerHr = {RPCyc1Hr}
	Database PCycCount = {RPCycCount}
	Database PKwhr24 = {RPWhr24Hr}
	Database PCabAvg = {RPCabAvg}
	Database WarmestPack = {RPWarmestPack}
	Database Pwhr = {RPWhr}
	
	Database write
Endif
