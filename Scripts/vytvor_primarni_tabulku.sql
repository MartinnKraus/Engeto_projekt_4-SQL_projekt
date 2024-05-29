

-- CREATE OR ALTER TABLE t_martin_kraus_project_SQL_primary_final as

SELECT 
	*
from czechia_payroll cp
join czechia_payroll_calculation cpc
	on cp.calculation_code = cpc.code
join czechia_payroll_industry_branch cpib 
	on cp.industry_branch_code  = cpib.code