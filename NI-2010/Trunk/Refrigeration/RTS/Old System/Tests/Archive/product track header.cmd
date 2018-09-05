If ("{SProductID}" <> "") & {ASim}=0  Then
	Database {LDatabase} Query execute dbo.rts_moveproduct '{SProductID}','{SOperDir}','RM {AStation_Title}'
	Set {PValue} = {ATestTime}
	Begin
	    If {AdbQueryResults} = 1 Then
	    	! query results 3 indicates no records returned, which shows an error in RTSAdo
	    	! Apparently, RTS requires a recordset to be returned to be happy
			! {QReturnVal} contains detail on what happened
	    	Log Product {SProductID} location 'RM {AStation_Title}'.  Result: {QReturnVal}
	        Leave
	    Elseif {AdbQueryResults} = 2 Then
	        Status Yellow Unable to move product {SProductID}
	        Log Unable to move product {SProductID} into stall {AStation_Title}.
	        Log {AdbQueryMessage}
	        Leave
	    ElseIf ({ATestTime}>{PValue}+20) Then
	        Set {PValue}=0
	        Log Timeout with RTSAdo moving product
	        Leave
	    Else
	    	Log Waiting on inventory move procedure: result code:{AdbQueryResults}, message:{AdbQueryMessage}
	    Endif
	Loop
EndIf
	

!   Have to figure out a way to get the group id
!	DJ 04/08/08 - Answer is to create a sp to handle this.
!   Database {LDatabase} table stall key {AStation_Title} keyfield Name
!	Database Tester={SOperDir}
!	Database TestReqNum={STestReqNum}
!	Database WRITE
!	Begin
!	    If {Adbresults} = 1 Then
!	        Leave
!	    Elseif {Adbresults} = 2 Then
!	        Status Yellow Unable to update stall scheduling
!	        Log Unable to update stall scheduling
!	        Log {Adbmessage}
!	        Leave
!	    Endif
!	Loop
