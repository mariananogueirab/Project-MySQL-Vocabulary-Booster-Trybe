DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_of_jobs INT;
SELECT COUNT(j.EMPLOYEE_ID)
    FROM hr.job_history AS j
    INNER JOIN hr.employees AS e
    ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email
    INTO total_of_jobs;
    RETURN total_of_jobs;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
