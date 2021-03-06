SELECT 
    j.JOB_TITLE AS `Cargo`,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
        WHEN
            ROUND(AVG(SALARY), 2) >= 2000
                && ROUND(AVG(SALARY), 2) <= 5800
        THEN
            'Júnior'
        WHEN
            ROUND(AVG(SALARY), 2) >= 5801
                && ROUND(AVG(SALARY), 2) <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(AVG(SALARY), 2) >= 7501
                && ROUND(AVG(SALARY), 2) <= 10000
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial` , JOB_TITLE;
