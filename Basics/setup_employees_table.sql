1. Schema: 
CREATE TABLE Employees 
  (EmployeeID INT PRIMARY KEY, 
  FirstName VARCHAR(50) NOT NULL, 
  LastName VARCHAR(50) NOT NULL, 
  Department VARCHAR(50), 
  Salary DECIMAL(10, 2), 
  JoiningDate DATE); 

2. Data: 
  Multiple INSERT statements to populate the table 
  (e.g., 8-10 rows with diverse values for filtering/grouping).
