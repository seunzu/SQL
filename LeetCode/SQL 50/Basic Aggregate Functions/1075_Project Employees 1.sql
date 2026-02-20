SELECT 
    P.project_id,
    ROUND(AVG(E.experience_years), 2) average_years
FROM Project P
JOIN Employee E USING (employee_id)
GROUP BY 1;