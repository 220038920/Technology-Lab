! Temp Period Database Calls
! 4/13/2015 SH
! Database calls for temp period

	Database  Dome = {PDome_Avg_On}
	Database  EvapIn = {PEvapIn_Avg_On}
	Database  EvapMid = {PEvapMid_Avg_On}
	Database  EvapOut = {PEvapOut_Avg_On}
	Database  SuctionLine = {PSuctionLine_Avg_On}
	Database  Discharge = {PDischarge_Avg_On}
	Database  TBulb	 = {PTBulb_Avg_On}
	Database  HeatLoopOut = {PHLOut_Avg_On}
	Database  MidCond = {PCondMid_Avg_On}
	Database  CondOut = {PCondOut_Avg_On}
	If {PHAuxType} = 5 | {PHAuxType} = 13 | {PHAuxType} = 14 Then	! Setra 0-1000
		Database HeadPres = {PHAuxInput_Avg_On}
	Else
		Database HeadPres = {PHPSI_Avg_On}
	EndIf
	Database  SuctPres  = {PLPSI_Avg_On}
	Database MinOn= {RTMinutesOn}
	Database MinOff= {RTMinutesOff}
	Database CycPerHr  = {RTCyc1Hr}
