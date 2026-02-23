SELECT 
    M.employee_id,
    M.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM Employees M
JOIN Employees E ON E.reports_to = M.employee_id
GROUP BY 1, 2
ORDER BY 1;