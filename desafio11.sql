SELECT t1.ContactName AS `Nome`, t1.Country AS `País`, COUNT(*) -1 AS `Número de compatriotas` 
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.Country = t2.Country 
GROUP BY t1.CustomerID HAVING `Número de compatriotas` > 0 ORDER BY `Nome`;
