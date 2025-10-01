Que.
For all employees in the 'Sales' department, change their department to 'Marketing' and increase their salary by 10%.
  
Solution:
UPDATE Employees 
  SET Department = 'Marketing', Salary = Salary * 1.1 
  WHERE Department = 'Sales';
