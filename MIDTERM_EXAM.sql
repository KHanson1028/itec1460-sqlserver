-- Create Select Statement For Northwind Database, PUT SQL before the select statement in the terminal
"SELECT FirstName, LastName, HireDate FROM Employees;"

-- Create a JOIN report that shows which employees are handling orders --
-- Write a query that list employee names, shows OrderID for each order they processesd, Show OrderDate, and Sort the results by EmployeeID and then OrderDate"

-- Create the Alias for the table names E for Employees and O for Orders table --
-- Specify the alias using AS-- 
-- JOIN puts both tables together, this joins the orders table to the employee table --
SELECT E.FirstName, E.LastName, O.OrderID, O.OrderDate FROM Employees AS e JOIN Orders AS o ON e.EmployeeID = o.EmployeeID;

-- Create a Report showing total sales --
SELECT SUM(UnitPrice)
FROM Products;

-- Instert a new supplier --
-- Use INSERT INTO -- When Ran, will say one row affected --
INSERT INTO Suppliers(CompanyName, City)
VALUES ('NorthWind Traders', 'Seattle');

-- Create New Category --
INSERT INTO Categories(CategoryName)
VALUES ('Organic Products');

-- Insert a new product -- 
Insert into Products(ProductName)
VALUES ('Minneapolis Pizza');

-- Update Statement --
UPDATE Categories SET CategoryName = 'Organic Products' WHERE categoryName = 'Exotic Liquids';

-- Delete Statement --
-- the from is the product table and the name is minneapolis pizza -- 
DELETE FROM Products WHERE ProductName = 'Minneapolis Pizza';

-- Create a new table and constraints --
-- Start by creating a table and adding columns -- 

CREATE TABLE EmployeePerformance(
         PerformanceID INT PRIMARY KEY,
         EmployeeID INT,
         Year INT,
         Quarter INT,
         SalesTarget DECIMAL(15,2) ,
         ActualSales DECIMAL(15,2)
)