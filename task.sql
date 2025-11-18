CREATE DATABASE ShopDB;

USE ShopDB;


CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ProductID)
);


CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(100),
    PRIMARY KEY (CustomerID)
);


CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT,
    CustomerID INT,
    Date DATE,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL
);


CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (OrderItemID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE SET NULL
);




# DESCRIBE OrderItems;
# INSERT INTO Employees (FirstName, LastName, Position, HireDate, Department)
# VALUES ('John', 'Doe', 'Manager', '2023-01-10', 'Marketing'),
#       ('Jane', 'Dough', 'Developer', '2023-02-20', 'IT');
# SELECT * FROM Employees;