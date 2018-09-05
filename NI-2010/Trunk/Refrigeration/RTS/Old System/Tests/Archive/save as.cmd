! {PValue} is passed to this function as the Testnumber of the previous test
! If it is -1 then it just renames the set file - This happens if the Engnum changes during the test
If {ASim} then
	Set {LSaveAs} = {SRerunFile}-	
Else
	Set {LSaveAs} = {SOperDir}\{SProductID}-{ARevision}-{AStation_Title}
Endif
! Plot SaveAs clears and csv file, so we don't want to do this unless at beginning of test
If {PValue} = -1 Then
	Result SetFile {LSaveAs}
	Plot SetFile {LSaveAs}
Else
	Log Save as {LSaveAs}
	Result Create {LSaveAs}		! Creates directory if it doesn't exist
	Plot SaveAs {LSaveAs}
	If {Pvalue} >0 Then
		DelayWrite LastTest = {SOperDir}\{SProductID}-{PRevision}-{AStation_Title}
		Log LastTest = {SOperDir}\{SProductID}-{PRevision}-{AStation_Title}
	Else 
		Log LastTest still NA {PRevision}
	Endif
Endif

DelayWrite ResultFile = {LSaveAs}
