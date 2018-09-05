Log Chain- {SNextTest} {SNextTest_Right}
If ("{SNextTest_Right}" <> "-1") & ("{SNextTest_Right}" <> "-2") & ("{SNextTest}" <> "") Then
     Status Gray Chaining to {SNextTest_Left}
     If "{SPointFile2}" <> "" Then
     	Log {SPointFile} changed to {SPointFile2}
     	Set {SPointFile} = {SPointFile2}
     Endif
     If "{STestType2}" <> "" Then
     	Log {STestType} changed to {STestType2}
     	Set {STestType} = {STestType2}
     Endif
	 Lookup ChainTest
	 Set {LChainTestName} = {SNextTest_Right}
	 Set {SResultReport} = {SNextResultReport}
     If {SChainStartTime_Right} = -1 Then
	 	Set {SStartTime} = Now,-1
	 Else
	 	Set {SStartTime} = {SChainStartTime}
	 Endif
     Set {SNextTest} = Disable,-2	! -2 is a signal to the Cold resistance
     ! Wait 10 seconds to Setup changes above get to track database and don't overwrite when test changes
     Math 0 {PValue} = {ATestTime} + 10
     Begin
     	If {AtestTime} > {PValue}
     		Leave
     	Else
     		Status Yellow Waiting MATH[{PValue}-{ATestTime}] seconds
     	Endif
     Loop
     Chain {LChainTestName}
EndIf
