! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Calibration procedure for TC inputs
!    File    : CALTC.CMD
!    Rev    : 1.0
!    By    : Mark Hooks
!    Date    : 20-Feb-96
!    1.1 SH 4/18/00  Added plot and open TC check
!    1.3 SH 7/24/02  Removed result and plot saveas functions to keep from gen a report
!    1.4 SC 10/5/04  Added ability to turn transfer filter off and on
!    2.0 SH 8/18/06  Added save as option, report, LabResults database
!	 2.1 SC 8/31/06  Added support for As Received 90 degree saving; Saved SEquipment to Equipment field added to TCS table.
!					 Saved SCalComment1 to Comment field in TCS table.
!	 2.2 SH 11/7/06  Added other ranges, changed setups for saving values
!					 Added annotations, Report, support deg F and deg C
!	 2.3 DK 01/30/07 Added support for new TC table with Temp and Type fields.  No longer  have to generate a fake Revision as multiple entries with the same testnumber are supported.
!	 2.4 SC 05/22/07 Added write for every snapshot to TCCalibration table to work properly with calibration database.
!	 2.5 SH 08/27/07 Added support for partial calibrations.  1-10, etc instead of all of them at one time
!					 Procedure also auto calculates the next series for calibration.
!	 2.6 SH 01/02/08 Added 40 channel chart for 32 and 90 values
!	 2.7 SH 01/18/08 Faster save zero and save gain
!	 2.8 SH 09/17/08 Added SampleRate monitoring (got from Sid)
!	 2.9 SH 09/17/08 Added Yellow and Red coloring and out of tolerance messages

!	2 = 32°F After Cal
!	3 = 90°F After Cal
!	4 = 32°F As Recvd
!	5 = 90°F As Recvd
!	6 = -4°F As Recvd
!	8 = 45°F As Recvd
!	10 = 110°F As Recvd
!
! PCommand variables
!	0 = Dialog open and idle or canceled
!   1 = Zero button pressed
!   2 = Zero completed
!   3 = Gain button pressed
!   4 = Gain completed
!   5 = User manual change to gain or zero
!   6 = Update button pressed
!   7 = Save cal data
!   8 = Reload cal data

Transfer nodevice 1
Lookup location
Point Clear
Point caltc

If "{SNumChans_right}" == "" Then
	Set {SNumChans} = 40 TCs,40
Endif

If "{SNumChans_left}" <> "Custom" Then
	Log Point Numbers{SNumChans_right}
	Point Numbers{SNumChans_right}
Else
	Log Custom Point file {SPointCustom}
	Point {SPointCustom}
Endif

If {ASim} Then
	Log Loading testfile
	Driver LoadCSVFile {SRerunFile}
	Log Loaded {SRerunFile}
Endif

If ("{SOperator}" = "") | ("{SOperator}" = "Engineer") Then
	Prompt OK Please log into RTS and restart test
	Begin
		If {Aprompt} = 1 Then
			Leave
		Endif
	Loop
	Halt
EndIf

Set 1 {PVersion} = 2.9
Revision

Plot SaveAs stands\TCCAL_{AStation_Title}_{ARevision}
Result SaveAs stands\TCCAL_{AStation_Title}_{ARevision}
Log SaveAs stands\TCCAL_{AStation_Title}_{ARevision}

Transfer Filter Off
Transfer units {STempUnits}
Transfer Interval {SSampleRate}
Set Lock {STempUnits}
Lookup CalTC{STempUnits}

Plot Interval {SSampleRate}
Trend Interval {SSampleRate}
Trend Clear

DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]

Clear All
Log CALTC Version {PVersion}

Set {SStartChan} = 1

! Partial calibration
If "{SPartial}" = "Y" Then
	Prompt OK Please start with Channel 1.  RTS will write values when StopChan is {SNumChans_right}
	Begin
		If {Aprompt} = 1 Then
			Leave
		Endif
	Loop	
Else
	Set {SStopChan} = {SNumChans_right}	! Full calibration
Endif

Status Green TC Calibration {PVersion} Ready
Begin
    If {ASettings} Then
	    If {SCheckOTC} = 1 Then
	        Log Open TC detect performed	        
	        If {LLocation} = 4 Then		! If RTP sees interval of 1, it does OTC check, then resets rate
	        	Transfer Interval 1
	        Endif	        
	        Set {SCheckOTC} = 0
	    Endif
	    Set $ = {SSaveCal_Right}
	    If $ > 1 Then		
	        Gosub SaveTCsToDb		! Writes current range to database and saves data for report
	    Endif
	    If "{SFilter}"="Y" Then
	    	Transfer Filter On
	    Else
	    	Transfer Filter Off
	    Endif
	Endif
    If {PTC1_Cnt} > {PSampleCount} then
    	If {PTC1_Cnt} = 1 then
    	    If {PScanDelay} = 0 then
    	        Set {PScanDelay} = {ATestTime}
    	    Endif
    	Else
    	    Math 2 {PRate} = ({ATestTime}-{PScanDelay}) / ({PTC1_Cnt} - 1)
    	Endif
	    Set {PSampleCount} = {PTC1_Cnt}
	Endif
Loop
Abort
DelayWrite TotalTest = HMS[{ATestTime}]
DelayWrite Version = Cal TC v{PVersion}
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
DelayWrite D Title
! Write units-correct labels for graphs
DelayWrite {LLabel2}
DelayWrite {LLabel3}
DelayWrite {LLabel4}
DelayWrite {LLabel5}

If "{SReport}" = "Y" Then
	If {SNumChans_right} >= 40 Then
		Set {SPlotList1} = TC1;TC7;TC15;TC23;TC30;TC45
	Elseif {SNumChans_right} >= 30 Then
		Set {SPlotList1} = TC1;TC7;TC15;TC23;TC30;TC40
	Elseif {SNumChans_right} >= 24 Then
		Set {SPlotList1} = TC1;TC6;TC12;TC16;TC20;TC24
	Elseif {SNumChans_right} >= 20 Then
		Set {SPlotList1} = TC1;TC6;TC12;TC16;TC20
	Elseif {SNumChans_right} >= 12 Then
		Set {SPlotList1} = TC1;TC6;TC8;TC10;TC12
	Else
		Set {SPlotList1} = TC1;TC3;TC6;TC7;TC10
	Endif	
	Result Report CALTC
	Result Print A
	
    Status Blue Saving Zeroes
    Log Saving Zeroes
	! Store zeroes
	Write DZero = Zero
	! Loop through channels and write
	Set $ = 1
	Label SaveZero
	    Write Zero$ = {PTC$_Zero}				! New zero
	    Math $ = $ +1
	    If $ <= {SNumChans_right} Then
	        Goto SaveZero
	    Endif
	    
    Status Blue Saving Gains
    Log Saving Gains
	! Store gains
	Write DGain = Gain
	! Loop through channels and write
	Set $ = 1
	Label SaveGain
	    DelayWrite Gain$ = {PTC$_Gain}			! New gain
	    Math $ = $ +1
	    If $ <= {SNumChans_right} Then
	        Goto SaveGain
	    Endif

    Log Checking for out of tolerance channels
    Set 0 {PValue} = 0
	! Loop through channels and write
	Set $ = 1
	Label SaveOut
	    If ({R32AR$} > ({LTemp2}+{LARRedTol})) | ({R32AR$} < ({LTemp2}-{LARRedTol})) Then			! Red
			DelayWrite 32CLR$ = 2
			Log Channel $ 32 As received out of UL/IEC spec {R32AR$}.  Spec {LTemp2} +- {LARRedTol}
		    Set 0 {PValue} = 2
	    ElseIf ({R32AR$} > ({LTemp2}+{LARYelTol})) | ({R32AR$} < ({LTemp2}-{LARYelTol})) Then		! Yellow
			DelayWrite 32CLR$ = 1
			Log Channel $ 32 As received out of Whirlpool spec {R32AR$}.  Spec {LTemp2} +- {LARYelTol}
		    Set 0 {PValue} = MAX[1,{PValue}]													! Record Yellow unless already Red
		Endif
	    If ({R90AR$} > ({LTemp3}+{LARRedTol})) | ({R90AR$} < ({LTemp3}-{LARRedTol})) Then			! Red
			DelayWrite 90CLR$ = 2
			Log Channel $ 90 As received out of UL/IEC spec {R90AR$}.  Spec {LTemp3} +- {LARRedTol}
		    Set 0 {PValue} = 2
	    ElseIf ({R90AR$} > ({LTemp3}+{LARYelTol})) | ({R90AR$} < ({LTemp3}-{LARYelTol})) Then		! Yellow
			DelayWrite 90CLR$ = 1
			Log Channel $ 90 As received out of Whirlpool spec {R90AR$}.  Spec {LTemp3} +- {LARYelTol}
		    Set 0 {PValue} = MAX[1,{PValue}]
		Endif
	    Math $ = $ +1
	    If $ <= {SNumChans_right} Then
	        Goto SaveOut
	    Endif

	If {PValue} = 1 Then
	    Write 1TM = HMS[{ATestTime}]
		Write 1CM = At least one channel was received out of Whirpool tolerance +- {LARYelTol}
	ElseIf {PValue} = 2 Then
	    Write 1TM = HMS[{ATestTime}]
		Write 1CM = At least one channel was received out of UL/IEC tolerance +- {LARRedTol}
	Endif
	    
	Result Write Setup
	If {ASim} = 1 Then
		Write ARevision = {STestNumber}
		Write ResultFile = {SRerunFile}
	Endif
    Status Blue Writing Database LabResults
    Log Writing LabResults
	! Write end date so query-based RTSReport will generate PDF
	Database Use 0
	Database {LDatabase} Table LabResults key {ARevision}
	Database EndDate = {ADate} HMS[{ATime_Raw}]
	Database Lab = 13
	Database Stall = {AStation_Title}
	Database Tester = {SOperDir}
	Database Comment1 = {SEquipment}
	Database Comment2 = {SCalComment}
	Database ResultReport = CALTC
	Database TestDate = {AStartDate} {AStartTime}
	Database ResultFile = stands\TCCAL_{AStation_Title}_{ARevision}
	Database Write
    Status Blue Writing Database tcCalibration
    Log Writing tcCalibration
	! Write lab-specific info
	Database {LDatabase} table tcCalibration key {ARevision}
	Database TestNumber = {ARevision}
	Database TempUnits = {STempUnits}
	Database Write	
	Begin

	    If {ADBresults} = 1 Then
	        Status Gray DB Write Complete
	        Set {PError}=0
	        Leave
	    Elseif {ADBResults} = 2 Then
	        Status Red Unable to store data
	        Log {ADBmessage}
	        Set {PError}=1
	        Leave
	    Endif
	Loop
Endif

Status Grey TC Calibration finished TN: {ARevision}
Log TC Calibration finished TN: {ARevision}
End

! Writes data like the pulldown.  Each time they save the cal
! A new column gets added to the report using the {*Cal} operator in the Excel file
Sub SaveTCsToDb
	! Write annotation for Trend and report to show where this came from
	! Partial calibration
	If $ < 8 Then
		If "{SPartial}" = "Y" Then
		    Trend Annotation $,0;{AtestTime};{LTemp$};1;{LLabel$} {SStartChan}-{SStopChan}	!Trend annot
		    Log Saving Values for {LTemp$} {LLabel$} Start:{SStartChan} Stop:{SStopChan}
		Else
		    Trend Annotation $,0;{AtestTime};{LTemp$};1;{LLabel$}								!Trend annot
		    Log Saving Values for {LTemp$} {LLabel$} All Channels
		Endif
	Endif
	! We are saving this every time so the calibration system will see it
	If {LRefTechData} then
		Database Use 0
		If {ASystem}={LRerunSys} Then
			Database {LDatabase} Table LabResults key {STestNumber}
		Else
			Database {LDatabase} Table LabResults key {ARevision}
		Endif
		Database Lab = 13
	
		! If rerun then don't touch the original fields (if they're not listed they don't get affected)
		If {ASystem} <> {LRerunSys} Then
			Database Stall = {AStation_Title}
			Database Tester = {SOperDir}
			Database Comment1 = {SEquipment}
			Database Comment2 = {SCalComment}
			Database ResultReport = CALTC
			Database TestDate = {AStartDate} {AStartTime}
			Database ResultFile = stands\TCCAL_{AStation_Title}_{ARevision}
		ElseIf
			Database Comment1 = {SComment1Orig}*
			Database Comment2 = {SComment2Orig}
			! This makes the ICON change until the PDF is generated
			Database PDFLink = -1
		Endif
		Database Write
	Endif
    Cycle Marker
	
	! Write info to TCCalibration table
	Database {LDatabase} table TCCalibration key {ARevision}
	Database TempUnits = {STempUnits}
	Database Write
	
    !Write data to tc_CalibrationSnapshots table
    Status Blue Saving {SSaveCal_Left} to database
	Database Use 1
	Database {LDatabase} table tc_CalibrationSnapshots key InsertOnly
	Database TestNumber = {ARevision}
	Database TimeStamp = {ADate} {ATime}
	Database Recordtype = $
	Database DaqDevice = {SDaqDevice}
	Database Stall = {AStation_Title}

	Set {PValue} = $				! Store tc type
    If {Pvalue} = 2 Then				! Store column labels
    	DelayWrite D32AC = {LLabel$}
    ElseIf {Pvalue} = 3 Then			! 
    	DelayWrite D90AC = {LLabel$}
    ElseIf {Pvalue} = 4 Then			! 
    	DelayWrite D32AR = {LLabel$}
    ElseIf {Pvalue} = 5 Then			! 
    	DelayWrite D90AR = {LLabel$}
    ElseIf {Pvalue} = 6 Then			! 
    	DelayWrite D4AC = {LLabel$}
    ElseIf {Pvalue} = 8 Then			! 
    	DelayWrite D45AC = {LLabel$}
    ElseIf {Pvalue} = 10 Then			! 
    	DelayWrite D110AC = {LLabel$}
    Endif
	! Loop through channels and write
	Set $ = {SStartChan}

	Label SaveSnap
	    !Write Cal$ = {PTC$_Cur}				! Old way of storing data
		Database TC$ = {PTC$_Cur}
	    If {Pvalue} = 2 Then				! Store after cal data for graph
	    	DelayWrite 32AC$ = {PTC$_Cur}
	    ElseIf {Pvalue} = 3 Then			! Store after cal data for graph
	    	DelayWrite 90AC$ = {PTC$_Cur}
	    ElseIf {Pvalue} = 4 Then			! Store as rec data for graph
	    	DelayWrite 32AR$ = {PTC$_Cur}
	    ElseIf {Pvalue} = 5 Then			! Store as rec data for graph
	    	DelayWrite 90AR$ = {PTC$_Cur}
	    ElseIf {Pvalue} = 6 Then			! Store after cal
	    	DelayWrite 4AC$ = {PTC$_Cur}
	    ElseIf {Pvalue} = 8 Then			! Store after cal
	    	DelayWrite 45AC$ = {PTC$_Cur}
	    ElseIf {Pvalue} = 10 Then			! Store after cal
	    	DelayWrite 110AC$ = {PTC$_Cur}
	    Endif
	    Math $ = $ +1
	    If $ <= {SStopChan} Then
	        Goto SaveSnap
	    Endif
	! Write database record if ending at last channel
	If {SStopChan} = {SNumChans_right} Then	
		Database Write 	
		Begin
	
		    If {ADBresults} = 1 Then
		        Status Gray DB Write Complete
		        Set {PError}=0
		        Leave
		    Elseif {ADBResults} = 2 Then
		        Status Red Unable to store data
		        Log {ADBmessage}
		        Set {PError}=1
		        Leave
		    Endif
		Loop
	    If {PError}=0 Then
	        Log {SSaveCal_Left} data saved to database
	        Status Green {SSaveCal_Left} saved to database
	        Set {SSaveCal} = Done
	    Else
	        Log Error saving {SSaveCal_Left} data
	        Status Red Error saving {SSaveCal_Left} data to database
	        Set {SSaveCal} = Error
	    Endif
	Else	
        Status Green {SSaveCal_Left} Channels {SStartchan} to {SStopChan} stored
        Set {SSaveCal} = Stored
        If {PValue} = 8 Then		! If just finished 45 deg value then increment values
			Math 0 {PValue} = 1+{SStopChan} - {SStartChan}	! Auto set the next range
			Math 0 {SStartChan} = {SStopChan} +1
			Math 0 {SStopChan} = {SStopChan} + {PValue}
		Endif
	Endif	

EndSub



