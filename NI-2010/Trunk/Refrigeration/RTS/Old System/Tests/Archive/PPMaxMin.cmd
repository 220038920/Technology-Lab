DelayWrite PPFrezAvg = {PFrez_Avg_On_Off_Def_Rec}
DelayWrite PPCabAvg = {PCab_Avg_On_Off_Def_Rec}

DelayWrite PPPackAvg = {PPack_Avg_On_Off_Def_Rec}
DelayWrite PPCabAvg = {PCab_Avg_On_Off_Def_Rec}

Group Avg {Pvalue} = {PFrez_MaxM_On_Off_Def_Rec}	! Max of the Average
DelayWrite  PPFrezMaxAvg = {PValue}
Group Avg {Pvalue} = {PFrez_MinM_On_Off_Def_Rec}	! Min of the Average
DelayWrite PPFrezMinAvg = {PValue}
Group Avg {Pvalue} = {PCab_MaxM_On_Off_Def_Rec}
DelayWrite  PPCabMaxAvg = {PValue}
Group Avg {Pvalue} = {PCab_MinM_On_Off_Def_Rec}
DelayWrite  PPCabMinAvg = {PValue}

