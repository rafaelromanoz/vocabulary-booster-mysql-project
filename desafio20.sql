DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailParam VARCHAR(100))
BEGIN
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS `Nome completo`, DEPARTMENT_NAME AS `Departamento`, JOB_TITLE AS `Cargo` FROM
hr.employees AS e INNER JOIN hr.job_history AS jo ON e.EMPLOYEE_ID = jo.EMPLOYEE_ID INNER JOIN hr.departments AS d ON jo.DEPARTMENT_ID = d.DEPARTMENT_ID INNER JOIN hr.jobs AS j ON j.JOB_ID = jo.JOB_ID WHERE e.EMAIL = emailParam ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
