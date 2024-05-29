

-- CREATE OR ALTER TABLE t_martin_kraus_project_SQL_primary_final as

select 
	*
from czechia_payroll cp
join czechia_payroll_calculation cpc 
	on cp.calculation_code = cpc.code
