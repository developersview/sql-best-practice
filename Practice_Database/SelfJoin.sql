SELECT A.ID AS "Employee_ID", A.FirstName AS "Employee_Name",
B.ID AS "Supervisor_ID", B.FirstName AS "Supervisor_Name"
FROM Employees A, Employees B
WHERE A.ID=B.ID