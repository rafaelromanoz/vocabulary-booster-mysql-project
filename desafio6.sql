SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`, 
START_DATE AS `Data de início do cargo`,
DEPARTMENT_NAME AS `Departamento`  
FROM hr.employees AS e 
INNER JOIN hr.job_history AS jo ON e.EMPLOYEE_ID = jo.EMPLOYEE_ID 
INNER JOIN hr.jobs AS j ON j.JOB_ID = jo.JOB_ID 
INNER JOIN hr.departments AS d ON jo.DEPARTMENT_ID = d.DEPARTMENT_ID 
ORDER BY `Nome completo` DESC, `Cargo`;
