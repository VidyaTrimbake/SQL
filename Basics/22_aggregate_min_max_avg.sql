Que.
Find the minimum, maximum, and average salary across the entire company.	

Solution:
SELECT MIN(Salary) AS Lowest, 
  MAX(Salary) AS Highest, 
  AVG(Salary) AS Average 
  FROM Employees;
