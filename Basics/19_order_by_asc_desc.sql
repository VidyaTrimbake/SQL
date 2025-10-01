Que.
List all employees, sorted first by their Department (A-Z) and then by Salary (highest to lowest).	
  
Solution:
SELECT * FROM Employees 
  ORDER BY 
  Department ASC, 
  Salary DESC;
