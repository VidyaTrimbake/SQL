Que.
Find the number of employees in each unique department.
  
Solution:
SELECT Department, 
  COUNT(EmployeeID) AS EmployeesInDept 
  FROM Employees 
  GROUP BY Department;
