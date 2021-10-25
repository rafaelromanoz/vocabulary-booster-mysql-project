DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mesParam INT, anoParam INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeTotal INT;
SELECT COUNT(EMPLOYEE_ID) FROM hr.employees WHERE MONTH(HIRE_DATE) = mesParam AND YEAR(HIRE_DATE) = anoParam INTO quantidadeTotal;
RETURN quantidadeTotal;
END $$
DELIMITER ;
