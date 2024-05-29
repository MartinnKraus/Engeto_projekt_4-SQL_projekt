

-- CREATE OR ALTER TABLE t_martin_kraus_project_SQL_primary_final as

SELECT 
	*
FROM czechia_payroll cp
JOIN czechia_payroll_calculation cpc
	ON cp.calculation_code = cpc.code
JOIN czechia_payroll_industry_branch cpib 
	ON cp.industry_branch_code  = cpib.code
JOIN czechia_payroll_unit cpu 
	ON	cp.unit_code = cpu.code 