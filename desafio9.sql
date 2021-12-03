SELECT * FROM w3schools.employees;
SELECT * FROM w3schools.customers;

SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`
FROM w3schools.employees AS e
INNER JOIN w3schools.customers AS c
ON c.CustomerName = CONCAT(e.FirstName, ' ', e.LastName)
INNER JOIN 
