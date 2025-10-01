Que.
Add a new column Phone to the Employees table and then remove the JoiningDate column.

Solution:
ALTER TABLE Employees 
  ADD Phone VARCHAR(15); 
ALTER TABLE Employees 
  DROP COLUMN JoiningDate;
