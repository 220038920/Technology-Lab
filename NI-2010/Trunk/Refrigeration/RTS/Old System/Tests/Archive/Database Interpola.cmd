!Consumi
!Delay Write PR_ Min Max On Off Def Rec
!Write TR_ MinM MaxM Avg On Off Def Rec

!Nofrost
! -- Power period all points --
!Write PR_ Avg On
!Write SR_ Avg Off
!Write TR_ MaxM On Off Def Rec
!Write DR_ Avg
Set 2 {PValue1}=0
Set 2 {PValue2}=0
Database Use {LLabSpecificTable}
If {ASystem} = {LRerunSys} Then
	Database {LDatabase} Query Delete From Interpola Where TestNumber = {STestNumber}
	Database {LDatabase} Table Interpola key InsertOnly Keyfield {STestNumber}
	Log Database {LDatabase} Table Interpola key InsertOnly Keyfield {STestNumber}
	Set 0 {PRevision} = {STestNumber}
Else
	Database {LDatabase} Table Interpola key InsertOnly Keyfield {ARevision}
	Log Database {LDatabase} Table Interpola key InsertOnly Keyfield {ARevision}
	Set 0 {PRevision} = {ARevision}
Endif
Set $ = 1
Error off
Log Interpola V1.7
If ("{AProcedure}" = "Consumi") Then
Database fields TestNumber,Description,PointNum,Value1,Value2
Label 	NextPoint1
		Result Get {LValue} = D$ 1		! Get Description
		if $ = 41 Then
			Result Get {PValue1} = PVAvgOn 1	
			Result Get {PValue2} = PVAvgOff 1				
		Elseif $ = 42 then
			Result Get {PValue1} = PAAvgOn 1	
			Result Get {PValue2} = PAAvgOff 1				
		Elseif $ = 43 then
			Result Get {PValue1} = PWMinOff 1	
			Result Get {PValue2} = PWMaxOn 1				
		Else
			Result Get {PValue1} = PR_$ 1		! Get Value from Result set from Write PR_ Min command
			Result Get {PValue2} = PR_$ 2		! Get Value from Result set from Write PR_ Max command
		Endif
		if "{LValue}" <> "-999" Then
			Log Values {PRevision},{LValue},$,{PValue1},{PValue2}
			Database values {PRevision},{LValue},$,{PValue1},{PValue2}
		Endif
		Math $ = $ + 1
		If ($ < 49) Then 
			Goto NextPoint1
		Endif
		Error on
	
Else
Label 	NextPoint2
		Database fields TestNumber,Description,PointNum,Value1,Value2,Value3
		Result Get {PValue} = PR_$ 1		! Get Value from Result set from Write PR_ Avg On command
		Result Get {PValue1} = SR_$ 1		! Get Value from Result set from Write SR_ Avg Off command
		Result Get {PValue2} = TR_$ 1 		! Get Value from Result set from Write TR_ Avg Off command
		Result Get {LValue} = D$ 1			! Get Value from Result set from Write TR_ Avg Off command
		if "{LValue}" <> "-999" Then
			Log Values {PRevision},{LValue},$,{PValue1},{PValue2}
			Database values {PRevision},{LValue},$,{PValue},{PValue1},{PValue2}
		Endif
		Math $ = $ + 1
		If ($ < 49) Then 
			Goto NextPoint2
		Endif
Endif
Error on
Database Write
