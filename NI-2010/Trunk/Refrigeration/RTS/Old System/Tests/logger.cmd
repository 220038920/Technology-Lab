! --------------------------------------------------------------------------
! Whirlpool Test Room Data Collection System
! --------------------------------------------------------------------------
!
!    Descr    : LOGGER test
!    File    : LOGGER.CMD
!    Rev    : 1.0
!    By    : Mark Hooks
!    Date    : 20-Jun-95
!    SH 2/99 Added LastTest,EndTime
!    SH 6/99 Added Yokogawa support
!    SH 9/99 Fix for open TC detect
!    SH 10/99 Added humidity
!    1.8 SH 11/24/99 Removed result save
!    1.9 SH 09/18/00 Added TC record to database support
!	 2.0 SC 11/3/00  Added Room 15 Model 50 support
!	 2.1 SH 03/22/01 Changed cycle interval to 5 minutes
!	 2.2 SH 11/13/02 Standardized with Cycle/Aham
!	 2.3 SH 09/19/05 Removed model 50 suppport
!	 2.4 SH 03/07/06 Added support for Mexico 220V transducers and common Yok point names
!	 2.6 SH 09/28/09 Added CsvSim support
!	     NB 01/17/12 New WIDE incorporated into this test

Lookup General
Lookup Location

! To support reruns
Include Rerun

Point Clear
If "{AProcedure}" = "Logger220" Then
	Point vaw220
Else
	Point vaw
Endif
Point Logger
Point {SPointFile}

If "{SPointTree}" <> "" Then
	If "{SPointTree}" <> "NULL" Then
		Point {SPointTree}
		Point TreeGroups
	Endif
Endif

If {LRefTechData} Then
	Include Product track header
Endif
If "{SOperator}" = "" Then
	Status Red Please log into RTS and restart test
	goto TestEnd
EndIf
If "{SResultReport}" = "" Then		! This should be set by the default value but sometimes it is blank
	Set {SResultReport} = Development
EndIf

Set 1 {PVersion} = 2.7
Set {LTestName}={LLoggerTestName}

Include AuxInInit
Include AuxInSetup

Status Blue Starting {LTestName} test {PVersion}
Log Starting {LTestName} Test {PVersion}

If "{SHumidityEnable}" = "Y" Then
	Include HumiditySetup
ElseIf "{SHumidityEnable}" = "R" Then
	Include HumiditySetupR
EndIf
If "{SUseYok}" = "Y" Then
    Point Yok
    Set 1 {PYVolt} = 0
    Set 3 {PYAmp} = 0
    Set 2 {PYWatt} = 0
    Set 4 {PYWhr} = 0
	Set 2 {PWattHrDiff} = 0
    Set {PLoad} = 5
    Calibrate AuxGain {PYWhr} 0.001 
    Plot Scale YWatt = 0.1
    Log Yokogawa Enabled

	Set 2 {PWhrError} = 0
Endif

Transfer units {STempUnits}
Transfer Monitor norm cycle
Set Lock {STempUnits}

Set 0 {Pvalue} = 0
Revision
Include WideChk
Include Save As
Result Report {SResultReport}
Result Copies 1
Plot Interval {SSampleRate}
!Set Lock {SVoltSet#}

! If rerunning, then "undo" plot scaling for voltage
If {ASim} & {SOrigVolt} > 150 Then
	Log 220 Volt product, changing gain to 2
	Calibrate AuxGain {PVolt} 2.0
Endif

Plot Scale Watt = 0.1
Plot Scale Volt = 1.0
! Make sure the sample rate changes to an OTC detect is forced
Math {PValue}={SSampleRate}-2
Transfer Interval {PValue}
Trend Interval {SSampleRate}
DelayWrite StartTime = {ADate} HMS[{ATime_Raw}]
DelayWrite ATestStart = {AStartDate} {AStartTime}
DelayWrite ASystem = {ASystem_Title}
DelayWrite AStation = {AStation_Title}
Stable {SStableGrp}
Set Lock {SStableGrp}
Clear All
Cycle Interval 300
If {LLocation} <> 7 Then
	Status Yellow Waiting for startup timeout
	Begin
	    If {AState_Last} <> 0  Then
	        Leave
	    ElseIf ({SCheckOTC} = 1) Then
	        Log Cab Average verify bypassed
	        Set {SCheckOTC} = 0
	        Leave
	    Endif
	Loop
Endif
Include Cold Resistance
Log Waiting for timeout
! Wait for good front end data
!Begin
!    If {AState_Last} <> 0 Then
!        Leave
!    Endif
!Loop
! Set sample rate back
Math {PValue}={SSampleRate}-1
Transfer Interval {PValue}
Trend Clear
Plot Clear
! Adjust the plot scaling if needed
If {PVolt} > 150 Then
    Plot Scale Volt = 0.5
Endif
! SH Added 6/99 to allow test to wait for off cycle if integrating
If "{SUseYok}" = "Y" Then
    Log Waiting for product off
    Status Yellow Waiting for product off
Endif
Begin
	
    If ("{SUseYok}" <> "Y") | ("{SWaitForOff}" <> "Y") | ({AState} = 1) Then
	    If "{SUseYok}" = "Y" Then
	        ! Reset integrators
	        Clear ALL
		    ! Reset integrators
		    Set {PLoad} = 7
		    Set {SLoad} = 7
	        Set {PLoad} = 5
	        Set {SLoad} = 5
	    	Status Green Product off-integrators reset
	        Log Product off-integrators reset
	    Endif
        Leave
    Endif


Loop
!Transfer Filter Off - Special test 
Interval InterCmds
Begin

    ! -- Check for timeout
    If {ATestTime} >= ({STimeout} * 60) Then
        Leave
    Endif
	If ({PdryBulb}<>-999 & {PwetBulb} <> -999)Then
		Humidity {Phumidity} = {Pdrybulb} {Pwetbulb} 30
	Endif

!    If "{SUseYok}" = "Y" && {PLoad} < 4) Then
!        ! Reset integrators
!        Set {PLoad} = 7
!        Log Integrators reset
!    Endif


Loop

Label Restart
DelayWrite StartStable = {AStable}
Write AToutLen = HMS[{ATestTime}]
Log Test started
Clear All
Plot Clear
Cycle Interval 3600
Status Green {LTestName} test {PVersion} in progress

! --------------------- Main test loop -----------------------

Begin

    ! -- Check for timeout
    If {ATestTime} >= ({STestLen_Right} * 60) Then
        Leave
    Endif

    If {ASettings} & {ATestTime} > 15 Then				  
		Error Off
		!Set up HS Aux channel if selected while test is running
		Include AuxInSetup
		Error On   		  
    Endif
   	!Calculate Aux Input Channel
	Include AuxInProcess

    If "{SUseYok}" = "Y" Then
       Math {PYDWhr}={PWhr}*1000-{PYWhr}
       Math {PWhrPerDiff}=100*{PYDWhr}/{PYWhr}
    Endif

Loop

Abort
If {ASim} = 0 Then
	Status Grey {LTestName} Ended TN:{ARevision}
Else
	Status Grey {LTestName} Ended TN:{STestNumber}
Endif
Cycle Marker
Cycle After 0
DelayWrite EndTime = {ADate} HMS[{ATime_Raw}]
DelayWrite TestStable = {AStableMax}
DelayWrite {ATotalCycle}
DelayWrite {PCyc4Hr}
DelayWrite {PCyc24Hr}
DelayWrite {PWhr}
DelayWrite {PWhr4Hr}
DelayWrite {PWhr24Hr}
DelayWrite HMS[{ATotalOn}]
DelayWrite HMS[{ATotalOff}]
DelayWrite PPerOn = {POnPer}
DelayWrite PTotal = HMS[{ATestTime}]
DelayWrite PMinOn = HMS[{ACycle_Min_On}]
DelayWrite PMaxOn = HMS[{ACycle_Max_On}]
DelayWrite PAvgOn = HMS[{ACycle_Avg_On}]
DelayWrite PMinOff = HMS[{ACycle_Min_Off}]
DelayWrite PMaxOff = HMS[{ACycle_Max_Off}]
DelayWrite PAvgOff = HMS[{ACycle_Avg_Off}]

DelayWrite {PWatt_MinM_On}
DelayWrite {PWatt_MinM_Off}
DelayWrite {PWatt_Min_On_Off}
DelayWrite {PWatt_MaxM_On}
DelayWrite {PWatt_MaxM_Off}
DelayWrite {PWatt_Max_On_Off}
DelayWrite {PWatt_Avg_On}
DelayWrite {PWatt_Avg_Off}
DelayWrite {PWatt_Avg_On_Off}

DelayWrite HMS[{ACycle_Min_On}]
DelayWrite HMS[{ACycle_Max_On}]
DelayWrite HMS[{ACycle_Avg_On}]
DelayWrite HMS[{ACycle_Min_Off}]
DelayWrite HMS[{ACycle_Max_Off}]
DelayWrite HMS[{ACycle_Avg_Off}]

DelayWrite {PVolt_Min_On_Off}
DelayWrite {PVolt_Max_On_Off}
DelayWrite {PVolt_Avg_On_Off}

DelayWrite {PAmp_MinM_On}
DelayWrite {PAmp_MaxM_On}
DelayWrite {PAmp_Avg_On}

DelayWrite AmbMin = {PAmb_Min_On_Off}
DelayWrite AmbMax = {PAmb_Max_On_Off}
DelayWrite AmbAvg = {PAmb_Avg_On_Off}
DelayWrite AmbDev = {PAmb_Dev_On_Off}

DelayWrite HumMin = {PHum_Min_On_Off}
DelayWrite HumMax = {PHum_Max_On_Off}
DelayWrite HumAvg = {PHum_Avg_On_Off}

! For Mexico
!ojo aqui se esta haciendo modificacion para que lea 220V en el reporte cambio de variables watt X watt1

If {LLocation} = 8 Then
	DelayWrite STestTemp = {SAmbient}
	DelayWrite ATestLength = HMS[{ATestTime}]

	DelayWrite Solicitud = {SSolicitud}
	DelayWrite Empa = {SNumempa}
	DelayWrite {POnPer}
Endif

! Save all cycle points to the result file
DelayWrite PR MaxM MinM Max Min Avg On Off Def Rec
DelayWrite P Title MinM MaxM Avg Dev On Off
DelayWrite D Title

If "{SUseYok}" = "Y" Then
    ! DelayWrite results on report
    DelayWrite 1CM = Yok:{PYWhr} RTS:{PWhr}*1000
    DelayWrite 2CM = Whr Difference {PYDWhr}
    DelayWrite 3CM = Whr % Error {PWhrPerDiff}
Endif

Include Database LabResults
Database Write
Include Database LabSpecific

Database TestName = {LTestName} {PVersion}
Include TTMaxMin

If {AMode} <> 3 & {LRefTechData} Then
	Database Write
Endif

Result SetFile {LSaveAs}
Result Print {SPrintRep}
Result Write Setup
Include Rerun Write
Result Close

Include Database ZipResults

If ({SNumbTest} >0) Then
    Math 0 {SNumbTest} = {SNumbTest} -1
endif
If ({AMode} = 2) & ({SNumbTest} > 0) Then
    Log Clear
    Trend Clear
    Set 0 {PValue}= {ARevision}
    Revision
	Wide Load
    Include Save As
    DelayWrite LastTest = {SOperDir}\{SProductID}-{PValue}-{AStation_Title}
	If "{SUseYok}" = "Y" Then
	    ! Reset integrators
	    Set {PLoad} = 7
	    Set {SLoad} = 7
	    Log Integrators reset
	    ! Put back in integrator mode
	    Set {PLoad} = 5
	    Set {SLoad} = 5
	Endif
    Goto Restart
Endif
!If {STCData}>1 Then
!	Gosub SaveTCsToDb
!Endif
Label Testend

End

! -- The following commands are executed each scan --
Sub InterCmds
    Math 2 {PCyc4Hr} = {ATotalCycle} / ({ATestTime} / 14400)
    Math 2 {PCyc24Hr} = {PCyc4Hr} * 6
    Math 4 {PWhr4Hr} = {PWhr} / ({ATestTime} / 14400)
    Math 4 {PWhr24Hr} = {PWhr4Hr} * 6
    Math 1 {POnPer} = ({ATotalOn} / ({ATotalOn} + {ATotalOff})) * 100

    ! -- Check for changes in the intervals ---
    If {ASettings} Then
        Plot Interval {SSampleRate}
        Trend Interval {SSampleRate}
    Endif

    Return
EndSub

! --------------------- AddComment -----------------------
! Adds a comment to the test and creates a log entry
Sub AddComment
	Log {LValue}
    Math 0 {PMessIndex} = {PMessIndex} + 1
    Set $ = {PMessIndex}
    Write $TM = HMS[{ATestTime}]
	Write $CM = {LValue}
	Return
EndSub
Sub SaveTCsToDb
	Database RefTechDatabase table TCs key {ARevision} keyfield TestNumber
	Database TimeStamp = {ADate} {ATime}
	Database Target = {SRTPName}
	Database Recordtype = {STCData_right}
	
	Database TC1 = {PTC1_Avg_On_Off_Def_Rec}
	Database TC2 = {PTC2_Avg_On_Off_Def_Rec}
	Database TC3 = {PTC3_Avg_On_Off_Def_Rec}
	Database TC4 = {PTC4_Avg_On_Off_Def_Rec}
	Database TC5 = {PTC5_Avg_On_Off_Def_Rec}
	Database TC6 = {PTC6_Avg_On_Off_Def_Rec}
	Database TC7 = {PTC7_Avg_On_Off_Def_Rec}
	Database TC8 = {PTC8_Avg_On_Off_Def_Rec}
	Database TC9 = {PTC9_Avg_On_Off_Def_Rec}
	Database TC10 = {PTC10_Avg_On_Off_Def_Rec}
	Database TC11 = {PTC11_Avg_On_Off_Def_Rec}
	Database TC12 = {PTC12_Avg_On_Off_Def_Rec}
	Database TC13 = {PTC13_Avg_On_Off_Def_Rec}
	Database TC14 = {PTC14_Avg_On_Off_Def_Rec}
	Database TC15 = {PTC15_Avg_On_Off_Def_Rec}
	Database TC16 = {PTC16_Avg_On_Off_Def_Rec}
	Database TC17 = {PTC17_Avg_On_Off_Def_Rec}
	Database TC18 = {PTC18_Avg_On_Off_Def_Rec}
	Database TC19 = {PTC19_Avg_On_Off_Def_Rec}
	Database TC20 = {PTC20_Avg_On_Off_Def_Rec}
	Database TC21 = {PTC21_Avg_On_Off_Def_Rec}
	Database TC22 = {PTC22_Avg_On_Off_Def_Rec}
	Database TC23 = {PTC23_Avg_On_Off_Def_Rec}
	Database TC24 = {PTC24_Avg_On_Off_Def_Rec}
	Database TC25 = {PTC25_Avg_On_Off_Def_Rec}
	Database TC26 = {PTC26_Avg_On_Off_Def_Rec}
	Database TC27 = {PTC27_Avg_On_Off_Def_Rec}
	Database TC28 = {PTC28_Avg_On_Off_Def_Rec}
	Database TC29 = {PTC29_Avg_On_Off_Def_Rec}
	Database TC30 = {PTC30_Avg_On_Off_Def_Rec}
	Database TC31 = {PTC31_Avg_On_Off_Def_Rec}
	Database TC32 = {PTC32_Avg_On_Off_Def_Rec}
	Database TC33 = {PTC33_Avg_On_Off_Def_Rec}
	Database TC34 = {PTC34_Avg_On_Off_Def_Rec}
	Database TC35 = {PTC35_Avg_On_Off_Def_Rec}
	Database TC36 = {PTC36_Avg_On_Off_Def_Rec}
	Database TC37 = {PTC37_Avg_On_Off_Def_Rec}
	Database TC38 = {PTC38_Avg_On_Off_Def_Rec}
	Database TC39 = {PTC39_Avg_On_Off_Def_Rec}
	Database TC40 = {PTC40_Avg_On_Off_Def_Rec}
	Database Write 
EndSub




