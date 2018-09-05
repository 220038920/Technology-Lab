Error Off
If {SCabAuxVolume} > 0 Then
	DelayWrite TTCabAvg = {PCabCalc_Avg_On_Off_Def_Rec}
	DelayWrite TTCabMaxAvg = {PCabCalc_Max_On_Off_Def_Rec}
	DelayWrite TTCabMinAvg = {PCabCalc_Min_On_Off_Def_Rec}
	Database TTCabAvg = {RTTCabAvg}
Else
	DelayWrite TTCabAvg = {PCab_Avg_On_Off_Def_Rec}
	Group Avg {Pvalue} = {PCab_MaxM_On_Off_Def_Rec}
	DelayWrite  TTCabMaxAvg = {PValue}
	Group Avg {Pvalue} = {PCab_MinM_On_Off_Def_Rec}
	DelayWrite  TTCabMinAvg = {PValue}
	Database TTCabAvg = {RTTCabAvg}
Endif
Error on
DelayWrite TTFrezAvg = {PFrez_Avg_On_Off_Def_Rec}
DelayWrite TTPackAvg = {PPack_Avg_On_Off_Def_Rec}

Group Avg {Pvalue} = {PFrez_MaxM_On_Off_Def_Rec}	! Max of the Average
DelayWrite  TTFrezMaxAvg = {PValue}
Group Avg {Pvalue} = {PFrez_MinM_On_Off_Def_Rec}	! Min of the Average
DelayWrite TTFrezMinAvg = {PValue}

Database TTFrzAvg = {RTTFrezAvg}

DelayWrite TTAmb = {PAmb_Avg_On_Off_Def_Rec}
Database ActualAmbient = {RTTAmb}

!Added 10/28/2011 - SC
Error Off
DelayWrite TTLeftAmb = {PAmbLeft_Avg_On_Off_Def_Rec}
DelayWrite TTRightAmb = {PAmbRight_Avg_On_Off_Def_Rec}
DelayWrite TTLeftAmbMax = {PAmbLeft_MaxM_On_Off_Def_Rec}
DelayWrite TTLeftAmbMin = {PAmbLeft_MinM_On_Off_Def_Rec}
DelayWrite TTLeftAmbStDev = {PAmbLeft_Stdev_On_Off_Def_Rec}
DelayWrite TTRightAmbMax = {PAmbRight_MaxM_On_Off_Def_Rec}
DelayWrite TTRightAmbMin = {PAmbRight_MinM_On_Off_Def_Rec}
DelayWrite TTRightAmbStDev = {PAmbRight_Stdev_On_Off_Def_Rec}
If {PAmbLeftTop} > -998 Then								
	Math 3 {PValue} = ABS[({PAmbLeftTop_Avg_On_Off_Def_Rec} - {PAmbLeftBot_Avg_On_Off_Def_Rec})]/({SProdHeight}/12)
	DelayWrite TTLeftAmbGrad = {PValue}
Endif
If {PAmbRightTop} > -998 Then								
	Math 3 {PValue} = ABS[({PAmbRightTop_Avg_On_Off_Def_Rec} - {PAmbRightBot_Avg_On_Off_Def_Rec})]/({SProdHeight}/12)
	DelayWrite TTRightAmbGrad = {PValue}
Endif	
Error On
