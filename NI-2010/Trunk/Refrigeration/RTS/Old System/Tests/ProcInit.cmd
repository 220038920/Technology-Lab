! --------------------------------------------------------------------------
! Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr   : General include file located at the start of each test
!    File    : ProcInit.cmd
!    Rev     : 1.0
!    By      : Scott Hellmer
!    Date    : 4/2/2015
!	04/02/15	SH	Created to allow CSA and Whirlpool to use Aham.cmd
!
Status Yellow Please wait test starting
Transfer Monitor norm cycle	! Select points for the monitor view - cycle
Point Clear
Point vaw
Point Aham				! Aham - Points needed by the main procedure
Point General
Point Groups
Point {SPointFile}			! User Point

! Configure the test for temp units and limits
If "{STempUnits}" = "F" Then
	Lookup LimitsF
	Transfer Units F
Else
	Lookup LimitsC
	Transfer Units C
Endif
Set Lock {STempUnits}
Error off
!Initialize and Setup Aux Input channel
Include AuxInInit
Include AuxInSetup
Error On
If "{SResultReport}" = "" Then
	Set {SResultReport} = Aham
EndIf
If "{SHumidityEnable}" = "Y" Then
	Include HumiditySetup
EndIf
If "{SPlotList1}" = "" Then
	Set {SPlotList1}=VOLT;WATT;FREZ;CAB;AMB
EndIf
If {LRefTechData} Then
	Include Product track header
Endif
Error Off
If "{SInitDefrNow}" = "Y" Then
	Log RITS: Triggered a defrost
	Driver RitsCommand STATUS START !To trigger a defrost
	Set {SInitDefrNow} = OK
Endif
Error On
If {ASim} & {SOrigVolt} > 150 Then
	Log 220 Volt product, changing gain to 2
	Calibrate AuxGain {PVolt} 2.0
    Plot Scale Volt = 0.5	! This didn't work below because {PVolt} was 115 during the first scan of CSV
Endif

! Adjust the plot scaling if needed
If {PVolt} > 150 Then
    Plot Scale Volt = 0.5
Endif
Plot Scale Amp = 10
Plot Scale Watt = 0.1

! Wait for good front end data
Begin
    If {AState_Last} <> 0 | {ASim} Then
        Leave
    ElseIf {ATestTime} > 300 Then		    
    	Log Bad State file!
		Status Red Bad State file!
        Goto TestEnd
    Endif
Loop
Status Blue {LTestName} Test - Waiting for good TC reading
Begin
	If {ASim} Then
		Leave
	Endif
    If ({PCab_Avg} > -998 & {PCab_Avg} <> 0 & {PCab_Avg} <130) Then
        Leave
    ElseIf ({PFrez_Avg} > -998 & {PFrez_Avg} <> 0 & {PFrez_Avg} <130) Then
        Leave
    ! Timeout
    ElseIf {ATestTime} > 300 Then
    	Log Timeout waiting for good cab average
        Leave
    ElseIf ({SCheckOTC} = 1) Then
        Log Cab Average verify bypassed
        Set {SCheckOTC} = 0
        Leave
    Endif
Loop	    
Include AuxInProcess	! Calculate Aux Input Channel - Still needed to do this to initialize Aux Inputs even with above statement
! Check for ambient group defined
If {PAmb} > -998 Then
Else
	If "{AChain}" = "N/A" Then
		Prompt YesNo No Ambient TCs are defined.  Press Yes to ignore and continue. {PAmb}
		Begin
			If {APrompt} = 6 Then
				Leave
			ElseIf {APrompt} = 7 Then
				Status Gray Test Aborted
				Halt			
			Endif
		Loop
	Endif
Endif! If rerunning, then "undo" plot scaling for voltage

Include SetupResults

! -- Set up ambient checker
Error Off
If {ASystemRev} >= 3.922 then
	Log RTS ver {ASystemRev} Supports Ambient limit {SAmbient_Right} +- {LRoomOut}
	Group Lim 3						! Use ambient group
	Group Lim Nom {SAmbient_Right}	! Set nominal target (usually 90 deg F)
	Group Lim Win {LRoomOut}				! Max of 91, Min of 89 or 32 deg C +- 0.55
Else
	If (LEFT["{AProcedure}",4]) = "Aham" Then
		Prompt OK RTS Version is {ASystemRev} and needs to be >= 3.922 to run Aham
		Begin
			If {APrompt} > 0 Then
				Leave
				Status Gray Test Aborted
				Halt			
			Endif
		Loop
	Endif
Endif
Error On

If {SAmbient_Right} > 0 Then
	Math 2 {PValue} = {SAmbient_Right} - {LRoomOut}
	Write AmbMinLim = {PValue}
	Math 2 {PValue} = {SAmbient_Right} + {LRoomOut}
	Write AmbMaxLim = {PValue}
Else
	Write AmbMinLim = 0
	Write AmbMaxLim = 0
	Write AmbStatus = Real time ambient check disabled
	Log Real time ambient check disabled
Endif

If {SSampleRate} <10 Then
	Set 0 {SSampleRate}=50
Endif
If {ASim} Then
	Plot Interval 1
	Trend Interval 1
	Transfer Filter Off
	Write ReplayFile = {ASimFile}
	Log Replay using file {ASimFile} 
Else
	Plot Interval {SSampleRate}
	Trend Interval {SSampleRate}
Endif
Transfer Interval {SSampleRate}

Stable {SStableGrp_Right}
Set Lock {SStableGrp}
If "{SPointTree}" <> "" Then
	If "{SPointTree}" <> "NULL" Then
		Point {SPointTree}
		Point TreeGroups
	Endif
Endif

DelayWrite TestType = {STestType_Left}
DelayWrite TestSpec = {STestType_Right}

