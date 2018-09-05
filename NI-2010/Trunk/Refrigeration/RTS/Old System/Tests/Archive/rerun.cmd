! To support reruns
If {ASim} Then
	If "{SRerunFile}" = "" Then
		Status Gray Rerunfile is blank - test stopped
		Halt
	Else
		Log Loading testfile
		Driver LoadCSVFile {SRerunFile}
		Driver SetTempUnits {SOrigUnits}
		Log Loaded {SRerunFile}
	Endif
Endif
