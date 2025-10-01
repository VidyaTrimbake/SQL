Que. 
Add a constraint to the Employees table ensuring the Email column has unique values and Salary is greater than 0.

Solution:
  Adding constraints seperately->
ALTER TABLE Employees 
  ADD UNIQUE (Email); 
ALTER TABLE Employees 
  ADD CHECK (Salary > 0);

OR
   Adding constraints by combining->
ALTER TABLE Employees
  ADD CONSTRAINT UQ_Email UNIQUE (Email),
  ADD CONSTRAINT CK_Salary CHECK (Salary > 0);
