

-- CREATE OR ALTER TABLE t_martin_kraus_project_SQL_primary_final as
-- declare evaluated_year int default 2020;

WITH
payrolls as (
	SELECT 
		cp.value, cp.payroll_year, cp.payroll_quarter,
		cpc.name as calculation_name,
		cpib.name as industry_name,
		cpu.name as unit,
		cpvt.name value_type
	FROM czechia_payroll cp
	LEFT JOIN czechia_payroll_calculation cpc
		ON cp.calculation_code = cpc.code
	LEFT JOIN czechia_payroll_industry_branch cpib 
		ON cp.industry_branch_code  = cpib.code
	LEFT JOIN czechia_payroll_unit cpu 
		ON	cp.unit_code = cpu.code 
	LEFT JOIN czechia_payroll_value_type cpvt
		ON cp.value_type_code = cpvt.code
	WHERE
		cp.payroll_year = 2017
),
prices as (
	SELECT
		*
	FROM czechia_price cp
	left join czechia_price_category cpc
		on cp.category_code = cpc.code
	where year(date_from) = 2017
)
select * from prices
