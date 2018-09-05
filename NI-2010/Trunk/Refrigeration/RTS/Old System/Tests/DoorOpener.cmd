! --------------------------------------------------------------------------
! Unified Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : Door opener test command file
!    File     : DoorOpener.cmd
!    Rev      : 1.0
!    By       : Mark Hooks
!    Date     : 20-Oct-11

Transfer nodevice 1
Lookup Location
Lookup General

Set {LTestName}=DoorOpener
Set {LTestType}=DOR

Include ProcInit
Set 1 {PVersion} = 1.1

Status Blue Starting {SMsoNumber} {LTestName}
Log Starting {LTestName} Test {PVersion}

Clear All
Cycle Interval 3600
Status Yellow Waiting for startup timeout

Log Waiting for timeout. No door opening will occur
Set 0 {PNextLeft} = 0
Set 0 {PLeftChange} = 0
Set 0 {SLeftDoor#} = 0
Set 0 {PNextMid} = 0
Set 0 {PMidChange} = 0
Set 0 {SMidDoor#} = 0
Set 0 {PNextRight} = 0
Set 0 {PRightChange} = 0
Set 0 {SRightDoor#} = 0
Set 0 {PDoorStatus} = 0

Interval InterCmds
Begin
    ! -- Check for timeout
    If {ATestTime} > 4 Then
        Leave
    Endif
Loop

Label Restart
Write AToutLen = HMS[{ATestTime}]

! waiting for startup
If {SStartHr} = {SPauseHr} Then
	Goto RunTest
Endif
Math {PValue} = {SStartHr} * 3600
Log Test is paused until HMS[{PValue}]
Set 0 {PStartFlag} = 1

Begin
	Status Yellow Paused {SMsoNumber} {LTestName}
	If {PStartFlag} Then
		If {ATime_Raw} < {SStartHr} * 3600 Then
			Set {PStartFlag} = 0
		Endif
	ElseIf {ATime_Raw} > {SStartHr} * 3600 Then
		Leave
	Endif
Loop

Label RunTest
Status Green Door test running

Math 0 {PNextLeft} = {ATestTime}+ {SLeftIntr} * 1
Set 0 {PLeftChange} = 0
Set 0 {SLeftDoor#} = 0
Math 0 {PNextMid} = {ATestTime} + {SMidIntr} * 1
Set 0 {PMidChange} = 0
Set 0 {SMidDoor#} = 0
Math 0 {PNextRight} = {ATestTime} + {SRightIntr} * 1
Set 0 {PRightChange} = 0
Set 0 {SRightDoor#} = 0
Set 0 {PDoorStatus} = 0
Set 0 {PPauseFlag} = 1
Log Door opener test running
Math {PValue} = {SPauseHr} * 3600
Log Test will run until HMS[{PValue}]

! --------------------- Main test loop -----------------------

Begin

	Status Green {SMsoNumber} {LTestName}
	if ({ATestTime} >= {PNextLeft}+ {SLeftIntr} * 1) & ({SLeftIntr} > 0) then
		Math {PNextLeft} = {ATestTime}
		Set {SLeftDoor#} = {SLeftTime}
		Math {PLeftChange} = {ATestTime} + {SLeftTime}
		Math {PDoorStatus} = {PDoorStatus} + 1
	Endif
	if ({ATestTime} >= {PLeftChange}) & ({PLeftChange} > 0) then
		Set {SLeftDoor#} = 0
		Set {PLeftChange} = 0
		Math {PDoorStatus} = {PDoorStatus} - 1
	Endif
	
	if ({ATestTime} >= {PNextMid} + {SMidIntr} * 1) & ({SMidIntr} > 0) then
		Math {PNextMid} = {ATestTime}
		Set {SMidDoor#} = {SMidTime}
		Math {PMidChange} = {ATestTime} + {SMidTime}
		Math {PDoorStatus} = {PDoorStatus} + 2
	Endif
	if ({ATestTime} >= {PMidChange}) & ({PMidChange} > 0) then
		Set {SMidDoor#} = 0
		Set {PMidChange} = 0
		Math {PDoorStatus} = {PDoorStatus} - 2
	Endif
		
	if ({ATestTime} >= {PNextRight} + {SRightIntr} * 1) & ({SRightIntr} > 0) then
		Math {PNextRight} = {ATestTime}
		Set {SRightDoor#} = {SRightTime}
		Math {PRightChange} = {ATestTime} + {SRightTime}
		Math {PDoorStatus} = {PDoorStatus} + 4
	Endif
	if ({ATestTime} >= {PRightChange}) & ({PRightChange} > 0) then
		Set {SRightDoor#} = 0
		Set {PRightChange} = 0
		Math {PDoorStatus} = {PDoorStatus} - 4
	Endif

    ! -- Check for timeout
    If {ATestTime} >= ({STestLen_Right} * 3600) Then
        Leave
    Endif

	If ({PDoorStatus} = 0) & ({SStartHr} <> {SPauseHr}) Then
		If {PPauseFlag} Then
			If {ATime_Raw} < {SPauseHr} * 3600 Then
				Set {PPauseFlag} = 0
			Endif
		ElseIf {ATime_Raw} > {SPauseHr} * 3600 Then
			Goto Restart
		Endif
	Endif

Loop

Abort
Status Grey Ended: {SMsoNumber} {LTestName} TN:{ARevision} ({ADate} HMS[{ATime_Raw}])
Cycle Marker
Cycle After 0
Write EndTime = {ADate} HMS[{ATime_Raw}]
Write {ATotalCycle}
Write {PCyc4Hr}
Write {PCyc24Hr}
Write {PWhr}
Write {PWhr4Hr}
Write {PWhr24Hr}
Write HMS[{ATotalOn}]
Write HMS[{ATotalOff}]
Write PPerOn = {POnPer}
Write PTotal = HMS[{ATestTime}]
Write PMinOn = HMS[{ACycle_Min_On}]
Write PMaxOn = HMS[{ACycle_Max_On}]
Write PAvgOn = HMS[{ACycle_Avg_On}]
Write PMinOff = HMS[{ACycle_Min_Off}]
Write PMaxOff = HMS[{ACycle_Max_Off}]
Write PAvgOff = HMS[{ACycle_Avg_Off}]

Write {PWatt_MinM_On}
Write {PWatt_MinM_Off}
Write {PWatt_Min_On_Off}
Write {PWatt_MaxM_On}
Write {PWatt_MaxM_Off}
Write {PWatt_Max_On_Off}
Write {PWatt_Avg_On}
Write {PWatt_Avg_Off}
Write {PWatt_Avg_On_Off}

Write HMS[{ACycle_Min_On}]
Write HMS[{ACycle_Max_On}]
Write HMS[{ACycle_Avg_On}]
Write HMS[{ACycle_Min_Off}]
Write HMS[{ACycle_Max_Off}]
Write HMS[{ACycle_Avg_Off}]

Write {PVolt_Min_On_Off}
Write {PVolt_Max_On_Off}
Write {PVolt_Avg_On_Off}

Write {PAmp_MinM_On}
Write {PAmp_MaxM_On}
Write {PAmp_Avg_On}

Write TempMin = {PRmTemp_Min_On_Off}
Write TempMax = {PRmTemp_Max_On_Off}
Write TempAvg = {PRmTemp_Avg_On_Off}
Write TempDev = {PRmTemp_Dev_On_Off}

Write HumMin = {PRmHumid_Min_On_Off}
Write HumMax = {PRmHumid_Max_On_Off}
Write HumAvg = {PRmHumid_Avg_On_Off}

! Save all cycle points to the result file
Write P MaxM MinM Max Min Avg On Off Def Rec
Write D Name-Title

Include StoreGeneral

If ({SNumbTest} >0) Then
    Math 0 {SNumbTest} = {SNumbTest} -1
endif
If ({AMode} = 2) & ({SNumbTest} > 0) Then
    Result Close
    Log Clear
    Include SetupResults
	Clear All
	Plot Clear
	Trend Clear
    Goto Restart
Endif
Label Testend

End

! -- The following commands are executed each scan --
Sub InterCmds
	Include LoopFunctions
    Return
EndSub





