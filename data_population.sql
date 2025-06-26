-- Step 1: Create a sample table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(100) DEFAULT 'General',
    Salary DECIMAL(10, 2)
);

-- Step 2: Insert data into the table
INSERT INTO Employees (ID, Name, Age, Department, Salary) 
VALUES (1, 'Alice', 30, 'HR', 50000.00);

INSERT INTO Employees (ID, Name, Age, Salary) 
VALUES (2, 'Bob', 28, NULL, 45000.00); -- Department will use default 'General'

-- Step 3: Handle missing values
INSERT INTO Employees (ID, Name, Age, Department) 
VALUES (3, 'Charlie', NULL, 'Finance'); -- Salary is NULL

-- Step 4: Update data
UPDATE Employees
SET Salary = 47000.00
WHERE Name = 'Bob';

-- Step 5: Delete specific data
DELETE FROM Employees
WHERE ID = 3;
