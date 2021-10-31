DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.employees AS e
  INNER JOIN hr.jobs AS j
  ON j.JOB_ID = e.JOB_ID
  WHERE cargo = j.JOB_TITLE;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
