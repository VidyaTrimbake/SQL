Que.
Calculate the average salary for each department.	
  
Solution:
SELECT Department, 
  AVG(Salary) AS AvgDeptSalary 
  FROM Employees 
  GROUP BY Department;
