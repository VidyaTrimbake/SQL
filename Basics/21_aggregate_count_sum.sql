Que.
Get the total number of employees and the total amount of money spent on all salaries.	
  
Solution:
SELECT COUNT(EmployeeID) AS TotalCount, 
  SUM(Salary) AS TotalPayroll 
  FROM Employees;
