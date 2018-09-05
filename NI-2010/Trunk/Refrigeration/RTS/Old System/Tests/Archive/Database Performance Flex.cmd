!  v1.9 - Added support for iso tests
!  v2.0 - Changed for Asim to use orig values
!  v2.1 - Added Iso Freezing
!  v2.2 - Changed *** and ** temp to after excursion
!  v2.3 - Added TT AmbLeft and AmbRight max and mins
!  v2.4 - Added TT AmbLeft and AmbRight StDevs
Error on
!Add TP and DR period information
!Add rest of information on report.
Database Use {LLabSpecificTable}
If {ASim} = 1 Then
	Database {LDatabase} Query Delete From FlexResults Where TestNumber = {STestNumber}
	Database Reset
	Set 0 {PRevision} = {STestNumber}
Else
	Set 0 {PRevision} = {ARevision}
Endif
Database {LDatabase} Table FlexResults key InsertOnly Keyfield {PRevision}
Log Database {LDatabase} Table FlexResults key InsertOnly Keyfield {PRevision}
Database fields TestNumber,Type,Variable,Value
Set $ = 1
Log PerformanceFlex V2.4
! This needs to be first
Database values {PRevision},SP,TestName,{RVersion}
! Total Test Summary Info
Database values {PRevision},TT,KWH,{RTTWhr}
Database values {PRevision},TT,KWH24,{RTTWhr24Hr}
Database values {PRevision},TT,ADCKWH24,{RADCWhr}
Database values {PRevision},TT,PerOn,{RTTPerOn}
Database values {PRevision},TT,TotOn,{RTTTotOn}
Database values {PRevision},TT,TotOff,{RTTTotOff}
Database values {PRevision},TT,TotDef,{RTTTotDef}
Database values {PRevision},TT,DefOff,{RTTDefOff}
Database values {PRevision},TT,WAvgOn,{RTTWAvgOn}
Database values {PRevision},TT,WAvgOff,{RTTWAvgOff}
Database values {PRevision},TT,WAvgDef,{RTTWAvgDef}
Database values {PRevision},TT,WAvgRec,{RTTWAvgRec}
Database values {PRevision},TT,Volt,{RTTVolt}
Database values {PRevision},TT,LeftAmb,{RTTLeftAmb}
Database values {PRevision},TT,LeftAmbMax,{RTTLeftAmbMax}
Database values {PRevision},TT,LeftAmbMin,{RTTLeftAmbMin}
Database values {PRevision},TT,LeftAmbStdev,{RTTLeftAmbStDev}
Database values {PRevision},TT,RightAmb,{RTTRightAmb}
Database values {PRevision},TT,RightAmbMax,{RTTRightAmbMax}
Database values {PRevision},TT,RightAmbMin,{RTTRightAmbMin}
Database values {PRevision},TT,RightAmbStdev,{RTTRightAmbStDev}
Database values {PRevision},TT,AvgOn,{RTTAvgOn}
Database values {PRevision},TT,AvgOff,{RTTAvgOff}
Database values {PRevision},TT,Cyc1Hr,{RTTCyc1Hr}
Database values {PRevision},TT,CabAvg,{RTTCabAvg}
Database values {PRevision},TT,CurLeakMax,{RCurLeakMax}
! Power Period Summary Info
Database values {PRevision},PP,KWH,{RPWhr}
Database values {PRevision},PP,KWH24,{RPWhr24Hr}
Database values {PRevision},PP,ADCKWH24,{RADCWhr}
Database values {PRevision},PP,PerOn,{RPPerOn}
Database values {PRevision},PP,TotOn,{RPTotOn}
Database values {PRevision},PP,TotOff,{RPTotOff}
Database values {PRevision},PP,TotDef,{RPTotDef}
Database values {PRevision},PP,DefOff,{RPDefOff}
Database values {PRevision},PP,WAvgOn,{RPWAvgOn}
Database values {PRevision},PP,WAvgOff,{RPWAvgOff}
Database values {PRevision},PP,WAvgDef,{RPWAvgDef}
Database values {PRevision},PP,WAvgRec,{RPWAvgRec}
Database values {PRevision},PP,Volt,{RPVolt}
Database values {PRevision},PP,LeftAmb,{RPLeftAmb}
Database values {PRevision},PP,RightAmb,{RPRightAmb}
Database values {PRevision},PP,AvgOn,{RPAvgOn}
Database values {PRevision},PP,AvgOff,{RPAvgOff}
Database values {PRevision},PP,Cyc1Hr,{RPCyc1Hr}
Database values {PRevision},PP,CabAvg,{RPCabAvg}
Database values {PRevision},PP,UFact,{RCUFact}
Database values {PRevision},PP,Cycles,{RPCycles}
! Temp Period
Database values {PRevision},TP,KWH,{RTWhr}
Database values {PRevision},TP,KWH24,{RTWhr24Hr}
Database values {PRevision},TP,PerOn,{RTPerOn}
Database values {PRevision},TP,TotOn,{RTTotOn}
Database values {PRevision},TP,TotOff,{RTTotOff}
Database values {PRevision},TP,WAvgOn,{RTWAvgOn}
Database values {PRevision},TP,WAvgOff,{RTWAvgOff}
Database values {PRevision},TP,Volt,{RTVolt}
Database values {PRevision},DR,KWH,{RPDefRecWhr}
Database values {PRevision},TP,AvgOn,{RTAvgOn}
Database values {PRevision},TP,AvgOff,{RTAvgOff}
Database values {PRevision},TP,Cyc1Hr,{RTCyc1Hr}
Database values {PRevision},TP,UFact,{RTUFact}
Database values {PRevision},TP,Cycles,{RTCycles}
! Typical Cycles Info
Database values {PRevision},TC,AvgOn,{RCAvgOn}
Database values {PRevision},TC,AvgOff,{RCAvgOff}
Database values {PRevision},TC,UFact,{RCUFact}
Database values {PRevision},TC,Cycles,{RCCycles}
Database values {PRevision},TC,Cyc1Hr,{RCCyc1Hr}
! Test Times Info
Database values {PRevision},TT,PeriodBegin,{RTTStart}
Database values {PRevision},TT,PeriodEnd,{RTTEnd}
Database values {PRevision},TT,PeriodLength,{RTTLength}
Database values {PRevision},TT,Stabilization,{RTTStable}
Database values {PRevision},PP,PeriodBegin,{RPStart}
Database values {PRevision},PP,PeriodEnd,{RPEnd}
Database values {PRevision},TP,PeriodBegin,{RTStart}
Database values {PRevision},TP,PeriodEnd,{RTEnd}
Database values {PRevision},PP,TypCycles,{RCycTime}
Database values {PRevision},DR,PeriodBegin,{RDStart}
Database values {PRevision},DR,PeriodEnd,{RDEnd}
! Setpoint/Spec Info
If {ASim} = 0 Then
	Database values {PRevision},SP,Stall,{AStation_Title}
	Database values {PRevision},SP,StartDate,{AStartDate} {AStartTime}
	Database values {PRevision},SP,EndDate,{ADate} HMS[{ATime_Raw}]
	Database values {PRevision},SP,Freq,{SFreqSet#}
	Database values {PRevision},SP,Voltage,{SVoltSet#}
Else
	Database values {PRevision},SP,Stall,{SOrigStall}
	Database values {PRevision},SP,StartDate,{SOrigStartTime}
	Database values {PRevision},SP,EndDate,{SOrigEndTime}
	Database values {PRevision},SP,Freq,{SOrigFreq}
	Database values {PRevision},SP,Voltage,{SOrigVolt}
Endif
Database values {PRevision},SP,Engineer,{SEngineer_Left}
Database values {PRevision},SP,Technician,{SOperator}
Database values {PRevision},SP,ControlSettings,{SSettings}
Database values {PRevision},SP,Ambient,{SAmbient_Right}
Database values {PRevision},SP,TestLength,{RTotalTest}
Database values {PRevision},SP,ProductID,{SProductID}
Database values {PRevision},SP,Product Type,{SProductType}
Database values {PRevision},SP,Compressor,{SCompType}
Database values {PRevision},SP,Refrigerant,{SRefrType}
Database values {PRevision},SP,TempUnits,{STempUnits}
Database values {PRevision},SP,PointFile,{SPointFile}
Database values {PRevision},SP,Procedure,{AProcedure}
Database values {PRevision},SP,Comment1,{SComment1}
Database values {PRevision},SP,Comment2,{SComment2}
Database values {PRevision},SP,TestSum,{AStation_Title} {ADate} HMS[{ATime_Raw}]	! This is used for the group summary line in SSRS
Database values {PRevision},SP,PreviousTestNum,{RPreviousTestNum}	! This is used for the group summary line in SSRS
! Temp Info
Database values {PRevision},TP,LeftAmb,{RTLeftAmb}
Database values {PRevision},TP,RightAmb,{RTRightAmb}
Database values {PRevision},TP,CabDif,{RTCabDif}
Database values {PRevision},TP,CabAvg,{RTCabAvg}
Database values {PRevision},TP,FrzAvg,{RTFrezAvg}
Database values {PRevision},PP,AmbMax,{RPAmbMax}
Database values {PRevision},PP,AmbMin,{RPAmbMin}

If ("{AChain}" = "N/A") Then
	Database values {PRevision},SP,Chain,0
Else
	Database values {PRevision},SP,Chain,1
Endif

! Iso Information
If ("{AProcedure}" = "Nofrost") | ("{AProcedure}" = "IsoStatic") Then
	Log PerformanceFlex {AProcedure}
	Database values {PRevision},TT,CabAvgMax,{RTTCabAvgMax}
	Database values {PRevision},TT,CabMemMaxAvg,{RTTCabMemMaxAvg}
	Database values {PRevision},TT,CabExcursion,{RTTCabExcursion}
	Database values {PRevision},TP,WarmestPack3Star,{RTWarmestPack3Star}
	Database values {PRevision},TP,WarmestPack3Over,{RTTWarmestPack3Over}
	Database values {PRevision},TP,WarmestPack2Star,{RTWarmestPack2Star}
	Database values {PRevision},TP,WarmestPack2Over,{RTTWarmestPack2Over}
	Database values {PRevision},SP,Standard,{SIsoStandard}
! Iso Freezing Test
ElseIf "{AProcedure}" = "IsoFreezing" Then
	Database values {PRevision},SP,LoadTime,{RLoadTime}
	Database values {PRevision},TP,WarmestPack3Star,{RTWarmestPack3Star}
	Database values {PRevision},TP,WarmestPack3End,{RTWarmestPack3Over}
	Database values {PRevision},TP,WarmestPack2Star,{RTWarmestPack2Star}
	Database values {PRevision},TP,WarmestPack2End,{RTWarmestPack2Over}
	Database values {PRevision},TP,WarmestCab,{RTWarmestCab}
	Database values {PRevision},TP,LighLoadTime,{RLightLoadTime}
	Database values {PRevision},TP,BallastLoadTime,{RBallastLoadTime}
ElseIf "{AProcedure}" = "Temprise" Then
	Database values {PRevision},SP,LoadTime,{RLoadTime}
	Database values {PRevision},TT,Duration,{RDiffFrez}
	Database values {PRevision},TT,FrezOver9,{RSecondFrez}
	Database values {PRevision},TT,FrezOver18,{RFirstFrez}
! Pulldown Information
ElseIf "{AProcedure}" = "Pull" Then
	Database values {PRevision},TT,CabTime,{RCabTime}
	Database values {PRevision},TT,FrzTime,{RFrezTime}
! Aham and Cycle
ElseIf ("{AProcedure}" = "Aham") | ("{AProcedure}" = "Cycle") Then
	Database values {PRevision},TT,RunTimeAD,{RRunTimeAD}
	Database values {PRevision},TT,RunTimeAD,{RRunTimeBD}
	Database values {PRevision},TT,PrevFrzAvg,{RPrevFrzAvg}
	Database values {PRevision},TT,PrevCabAvg,{RPrevCabAvg}
	Database values {PRevision},SP,CabVolume,{SCabVolume}
	Database values {PRevision},SP,CabAuxVolume,{SCabAuxVolume}
!	SS - Steady State conditions for Stability checks
	Database values {PRevision},TT,SSStart,{RSSStart}
	Database values {PRevision},TT,SSEnd,{RSSEnd}
	Database values {PRevision},TT,SSLength,{RSSLength}
	Database values {PRevision},TT,SSCabAvg,{RSSCabAvg}
	Database values {PRevision},TT,SSFrzAvg,{RSSFrzAvg}
! Model50
ElseIf ("{AProcedure}" = "Model50") Then
	Database values {PRevision},SP,IceThickness,{SIceThickness}
	Database values {PRevision},SP,WaterTemp,{SWaterTemp}
Endif
If {ASim} Then
	Database values {PRevision},TP,Volt,{SOrigVolt}
Else
	Database values {PRevision},TP,Volt,{SVoltSet#}
Endif

Database Write
