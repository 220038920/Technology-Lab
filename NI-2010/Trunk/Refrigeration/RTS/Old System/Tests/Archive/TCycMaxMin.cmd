Error Off
If {SCabAuxVolume} > 0 Then
	DelayWrite CCabAvg = {PCabCalc_Avg_On_Off}
	DelayWrite CCabMaxAvg = {PCabCalc_MaxM_On_Off}
	DelayWrite CCabMinAvg = {PCabCalc_MinM_On_Off}
Else
	DelayWrite CCabAvg = {PCab_Avg_On_Off}
	! The Max of the Averages for the Cab group
	Group Avg {Pvalue} = {PCab_MaxM_On_Off}
	DelayWrite  CCabMaxAvg = {PValue}
	! The Min of the Averages for the Cab group
	Group Avg {Pvalue} = {PCab_MinM_On_Off}
	DelayWrite  CCabMinAvg = {PValue}
Endif
Error on
DelayWrite CFrezAvg = {PFrez_Avg_On_Off}
! The Max of the Averages for the Frz group
Group Avg {Pvalue} = {PFrez_MaxM_On_Off}
DelayWrite  CFrezMaxAvg = {PValue}
! The Min of the Averages for the Frz group
Group Avg {Pvalue} = {PFrez_MinM_On_Off}
DelayWrite CFrezMinAvg = {PValue}
Math {PValue} = {RCCabAvg} - {RCFrezAvg}
DelayWrite CCabDif = {PValue}
