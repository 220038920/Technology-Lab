if {LRefTechData} then
	Database Use {LLabResultsTable}
	If {ASim} = 1 Then
		Database {LDatabase} Table {LLabResults} key {STestNumber}
		Log Database {LDatabase} Table {LLabResults} key {STestNumber} 
	Else
		Database {LDatabase} Table {LLabResults} key {ARevision}
		Log TestDate is {AStartDate} Database {LDatabase} Table {LLabResults} key {ARevision}
	Endif
	Database Lab = {LLab}
	Database RequestNum = {STestReqNum}
	Database TestType = {STestType_Left}
	Database TestName = Aham {PVersion}
	
	! If rerun then don't touch the original fields (if they're not listed they don't get affected)
	If {ASim} = 0 Then
		Log Database TestReqNum = {STestReqNum_Left}
		Database TestType = {STestType_Left}
		Database Stall = {AStation_Title}
		Database Tester = {SOperDir}
		Database Comment1 = {SComment1}
		Database Comment2 = {SComment2}
		Database UnitID = {SProductID}
		Database Engineer = {SEngineer_Right} 
		! Database TestSpec = {STestType_Right}
		Database ResultReport = {SResultReport}
		Database TestDate = {AStartDate} {AStartTime}
		Database EndDate = {ADate} HMS[{ATime_Raw}]
		Database TempSetpoint = {SAmbient_Left}
		Database ResultFile = {LSaveAs}
	Else
		Database ResultFile = {SRerunFile}-
		Database ResultReport = {SResultReport}
		Database Comment1 = {SComment1Orig}*
		Database Comment2 = {SComment2Orig}
		! This makes the ICON change until the PDF is generated
		Database PDFLink = -1
		Database ReportTry = 0
		Database LastUpdate = {AStartDate} {AStartTime}
	Endif
endif
If {ASim} Then
	Error on
Endif
