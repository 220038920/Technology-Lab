!-- Store all results in second table --
Database {LDatabase} Table ZipResults Key {ARevision} KeyField TestNumber
Database ZipDate = {ADate} {ATime}
!-- Store results in table --
Database Zip d:\rts\results\{LSaveAs}

! -- Verify the results are stored properly --
Begin
    If {Adbresults} = 1 | {ASim} Then
        Log Zip Results stored properly
        Leave
    Elseif {Adbresults} = 2 Then
        Status Red Unable to write results
        Log {Adbmessage}
    Endif
Loop
