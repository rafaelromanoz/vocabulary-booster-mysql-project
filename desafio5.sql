SELECT JOB_TITLE AS `Cargo`, MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
ROUND(AVG (MIN_SALARY / 12),2) AS `Média mínima mensal`,
ROUND(AVG (MAX_SALARY / 12),2) AS `Média máxima mensal`
FROM hr.jobs AS j INNER JOIN hr.employees AS e ON e.JOB_ID = j.JOB_ID 
GROUP BY j.JOB_ID ORDER BY (MAX_SALARY - MIN_SALARY), `Cargo`;
