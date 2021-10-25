DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailFunc VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeEmpregos INT;
SELECT COUNT(j.EMPLOYEE_ID) AS teste FROM hr.job_history AS j 
INNER JOIN hr.employees AS e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID WHERE e.EMAIL = emailFunc 
INTO quantidadeEmpregos;
RETURN quantidadeEmpregos;
END $$
DELIMITER ;
