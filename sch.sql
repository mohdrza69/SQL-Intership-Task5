-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(100),
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers VALUES
(1, 'Ravi Kumar', 'Delhi'),
(2, 'Anita Sharma', 'Mumbai'),
(3, 'Mohit Verma', 'Kolkata'),
(4, 'Priya Singh', 'Chennai');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Mobile', 15000),
(103, 1, 'Headphones', 2000),
(104, 5, 'Tablet', 18000); -- CustomerID=5 (no matching customer)
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
