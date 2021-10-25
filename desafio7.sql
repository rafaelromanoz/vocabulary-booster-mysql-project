SELECT UCASE(CONCAT(FIRST_NAME,' ', LAST_NAME)) AS `Nome completo`,  
j.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.employees AS e INNER JOIN hr.job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID 
WHERE MONTH(START_DATE) IN(01,02,03) ORDER BY `Nome completo`, `Data de início`;
