Que.
Find all employees whose last name starts with 'S' and any employee whose first name contains 'a'.	
  
Solution:
SELECT * FROM Employees 
  WHERE LastName LIKE 'S%' 
  OR 
  FirstName LIKE '%a%';
