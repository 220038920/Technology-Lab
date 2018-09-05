! -- Save temp period averages for freezer and cab
DelayWrite TFrezMin = {PFrez_Min_On_Off_Def_Rec}
DelayWrite TFrezMax = {PFrez_Max_On_Off_Def_Rec}
DelayWrite TFrezAvg = {PFrez_Avg_On_Off_Def_Rec}
Database AvgFrzTemp = {PFrez_Avg_On_Off_Def_Rec}

DelayWrite TAmbAvg = {PAmb_Avg_On_Off_Def_Rec}

Error Off
If {SCabAuxVolume} > 0 Then
	DelayWrite TCabMin = {PCabCalc_Min_On_Off_Def_Rec}
	DelayWrite TCabMinAvg = {RTCabMin}
	DelayWrite TCabMax = {PCabCalc_Max_On_Off_Def_Rec}
	DelayWrite TCabMaxAvg = {RTCabMax}
	DelayWrite TCabAvg = {PCabCalc_Avg_On_Off_Def_Rec}
	Log Calculated Cab Avg:{RTCabAvg} 	Cab Min:{RTCabMin}

	Database AvgCabTemp= {PCabCalc_Avg_On_Off_Def_Rec}
	
	Math 1 {PValue} = {RTCabMax}-{RTCabMin}
	DelayWrite TCabSwing = {PValue}
	Database CabSwing = {PValue}

	! Gradient - Max-Min
	Group Max {Pvalue} = {PCab_Avg_On_Off_Def_Rec}	! Gets the individual Cab TC avg with the warmest avg
	Group Min {Pvalue2} = {PCab_Avg_On_Off_Def_Rec}	! Gets the individual Cab TC avg with the coldest avg
	Math 1 {PValue} = {Pvalue}-{Pvalue2}
	DelayWrite TCabGrad = {Pvalue}
	Database CabGradient= {PValue}
Else
	DelayWrite TCabMin = {PCab_Min_On_Off_Def_Rec}
	DelayWrite TCabMax = {PCab_Max_On_Off_Def_Rec}
	DelayWrite TCabAvg = {PCab_Avg_On_Off_Def_Rec}
	Database AvgCabTemp = {PCab_Avg_On_Off_Def_Rec}
	
	Group Avg {Pvalue} = {PCab_MaxM_On_Off_Def_Rec}	! The Average of all the Maxes of the 
	DelayWrite TCabMaxAvg = {PValue}
	Group Avg {Pvalue2} = {PCab_MinM_On_Off_Def_Rec}! The Min of the Averages
	DelayWrite TCabMinAvg = {PValue2}
	Math 1 {PValue} = {PValue}-{PValue2}
	DelayWrite TCabSwing = {PValue}
	Database CabSwing= {PValue}

	! Gradient - Max-Min
	Group Max {Pvalue} = {PCab_Avg_On_Off_Def_Rec}	! Gets the individual Cab TC avg with the warmest avg
	Group Min {Pvalue2} = {PCab_Avg_On_Off_Def_Rec}	! Gets the individual Cab TC avg with the coldest avg
	Math 1 {PValue} = {Pvalue}-{Pvalue2}
	DelayWrite TCabGrad = {Pvalue}
	Database CabGradient = {PValue}
Endif
Error On

! ABRS Gradient - Max-Avg, Evansville only
If {LLocation} = 4 Then
	Group Max {Pvalue} = {PCab_Avg_On_Off_Def_Rec}
	Group Min {Pvalue2} = {PCab_Avg_On_Off_Def_Rec}
	! Find delta from average
	Math 2 {PValue} = {PValue}-{PCab_Avg_On_Off_Def_Rec}
	Math 2 {PValue2} = {PCab_Avg_On_Off_Def_Rec}-{PValue2}
	DelayWrite ABRS = Max,{PValue},Min,{PValue2}	 	
	If {PValue2} > {PValue} Then
		Set 2 {PValue}={PValue2}
	Endif
	DelayWrite ABRS2 = Chosen,{PValue}
	DelayWrite TABRSCabGrad = {Pvalue}
	Database ABRSCabGradient = {PValue}
Endif

Group Avg {Pvalue} = {PFrez_MaxM_On_Off_Def_Rec}
DelayWrite  TFrezMaxAvg = {PValue}
Group Avg {Pvalue2} = {PFrez_MinM_On_Off_Def_Rec}
DelayWrite TFrezMinAvg = {PValue2}
Math 1 {PValue} = {PValue}-{PValue2}
DelayWrite TFrezSwing = {PValue}
Database FrzSwing = {PValue}

Group Max {Pvalue} = {PFrez_Avg_On_Off_Def_Rec}
Group Min {Pvalue2} = {PFrez_Avg_On_Off_Def_Rec}
If ({Pvalue}-{PFrez_Avg_On_Off_Def_Rec})>({PFrez_Avg_On_Off_Def_Rec}-{PValue2})Then
	Math 1 {PValue} = {Pvalue}-{PFrez_Avg_On_Off_Def_Rec}
Else
	Math 1 {PValue} ={PFrez_Avg_On_Off_Def_Rec}-{PValue2}
Endif	
DelayWrite TFrezGrad = {PValue}
Database FrzGradient = {PValue}

If {PCabDoor} > -998 Then
	DelayWrite DoorDiffLabel = Door Differentials
	Group Max {Pvalue} = {PCabDoor_Avg_On_Off_Def_Rec}
	Math 1 {PValue} = {PValue} - {PCab_Avg_On_Off_Def_Rec}
	If {PValue} > -998 Then
		DelayWrite CabDoorMaxDiff = {PValue} 
		Database CabDoorMaxDiff = {PValue}
		DelayWrite DDCabMaxLabel = Cab Max
	Endif
	
	Group Min {Pvalue} = {PCabDoor_Avg_On_Off_Def_Rec}
	! Changed 6/1/00 SH/DD
	Math 1 {PValue} = {PValue} - {PCab_Avg_On_Off_Def_Rec}
	If {PValue} > -998 Then
		DelayWrite CabDoorMinDiff = {PValue}
		Database CabDoorMinDiff = {PValue}
		DelayWrite DDCabMinLabel = Cab Min
	Endif
Endif

If {PFrezDoor} > -998 Then
	Group Max {Pvalue} = {PFrezDoor_Avg_On_Off_Def_Rec}
	Math 1 {PValue} = {PValue} - {PFrez_Avg_On_Off_Def_Rec}
	If {PValue} > -998 Then
		DelayWrite FrzDoorMaxDiff = {PValue} 
		Database FrzDoorMaxDiff = {PValue}
		DelayWrite DDFrzMaxLabel = Frz Max
	Endif
		
	Group Min {Pvalue} = {PFrezDoor_Avg_On_Off_Def_Rec}
	! Changed - DD/SH
	Math 1 {PValue} =  {PValue} - {PFrez_Avg_On_Off_Def_Rec}
	If {PValue} > -998 Then
		DelayWrite FrzDoorMinDiff = {PValue} 
		Database FrzDoorMinDiff = {PValue}
		DelayWrite DDFrzMinLabel = Frz Min
	Endif
Endif

Math 1 {PValue} = {PCab_Avg_On_Off_Def_Rec} - {PFrez_Avg_On_Off_Def_Rec}
DelayWrite TCabDif = {PValue}
Database CabFrzDiff = {PValue}
Math 1 {PValue} = {PMeatPan_Avg_On_Off_Def_Rec} - {PCab_Avg_On_Off_Def_Rec}
If {PValue} < 100 Then
 	DelayWrite TMeatPanDif = {PValue}
 	DelayWrite TMeatPanDifLabel = {PMeatPan_Title}
	Database MeatPan = {PMeatPan_Avg_On_Off_Def_Rec}
EndIf
If {PPanLeftUp} > -998 Then								
	Math 1 {PValue} = {PPanLeftUp_Avg_On_Off_Def_Rec} - {PCab_Avg_On_Off_Def_Rec} 
 	DelayWrite TLeftUpCrisperDif = {PValue}
 	DelayWrite TLeftUpDifLabel = {PPanLeftUp_Title}
 	Database LeftCrisper = {PPanLeftUp_Avg_On_Off_Def_Rec}
EndIf
If {PPanRightDn} > -998 Then
	Math 1 {PValue} = {PPanRightDn_Avg_On_Off_Def_Rec} - {PCab_Avg_On_Off_Def_Rec}
	DelayWrite TRightDnCrisperDif = {PValue}
 	DelayWrite TRightDnDifLabel = {PPanRightDn_Title}
	Database RightCrisper = {PPanRightDn_Avg_On_Off_Def_Rec}
EndIf
If {LLocation} = 4 Then
	DelayWrite TCabDoorTop = {PCabDoorTop_Avg_On_Off_Def_Rec}
	Database TPCabDoorTop = {PCabDoorTop_Avg_On_Off_Def_Rec}
Endif
