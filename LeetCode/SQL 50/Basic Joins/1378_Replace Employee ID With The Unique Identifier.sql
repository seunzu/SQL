SELECT EU.unique_id, E.name
FROM Employees E
LEFT JOIN EmployeeUNI EU USING (id);