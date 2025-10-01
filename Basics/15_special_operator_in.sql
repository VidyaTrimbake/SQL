Que.
Find all employees who work in 'HR', 'IT', or 'Finance'.	

Solution:
SELECT * FROM Employees 
  WHERE Department 
  IN ('HR', 'IT', 'Finance');
