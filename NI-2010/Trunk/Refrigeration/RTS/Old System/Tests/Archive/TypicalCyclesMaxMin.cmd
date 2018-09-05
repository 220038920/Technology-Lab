	! The Average of all the Maximums for all points in the Frez group
	Group Avg {Pvalue} = {PFrez_MaxM_On_Off}
	DelayWrite  CFrezMaxAvg = {PValue}
	! The Average of all the Minimums for all points in the Frez group
	Group Avg {Pvalue} = {PFrez_MinM_On_Off}
	DelayWrite CFrezMinAvg = {PValue}
	! The Average of all the Maximums for all points in the Cab group
	Group Avg {Pvalue} = {PCab_MaxM_On_Off}
	DelayWrite  CCabMaxAvg = {PValue}
	! The Average of all the Minimums for all points in the Cab group
	Group Avg {Pvalue} = {PCab_MinM_On_Off}
	DelayWrite  CCabMinAvg = {PValue}
