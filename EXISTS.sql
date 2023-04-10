--EXISTS
SELECT name FROM Registrations
WHERE EXISTS(SELECT name FROM Logins WHERE Logins.name=Registrations.name)

--Creating a Table
CREATE TABLE Product (
ProductID int,
Product_Name varchar(50),
SupplierID int,
Price int
);

--Inserting the values
INSERT INTO Product
VALUES(1,'Spring',1,18),
(1,'Chain',1,19),
(1,'Engine',2,10),
(2,'Wheel',2,22),
(2,'Motor',2,21)

--Creating a Table
CREATE TABLE Suppliers (
SupplierID int ,
Supplier_Name varchar(50),
City varchar(50),
Country varchar(50)
);

--Inserting the values
INSERT INTO Suppliers
VALUES(1,'Ninja','London','UK'),
(2,'Kwasaki','New Orleans','USA'),
(3,'Nissan','Berlin','USA'),
(4,'HeroHonda','Tokyo','Japan')

--Retrieving the data
SELECT * FROM Product
SELECT * FROM Suppliers

--EXISTS
SELECT Supplier_Name FROM Suppliers
WHERE EXISTS (SELECT Product_Name FROM Product WHERE Product.SupplierID=Suppliers.SupplierID AND Price<20)

SELECT MAX(Price) FROM Product


 --Update Query
 UPDATE Suppliers
 SET City='Berlin'
 WHERE SupplierID=6

 --Inserting new Rows
 INSERT INTO Suppliers
 VALUES(5,'Hyundai','London','USA'),(6,'Ninja','Berlin','Germany') 

 SELECT * FROM Customers
 SELECT * FROM Suppliers

 --Union

 SELECT City,Country FROM Customers
 WHERE Country='Germany'
 UNION
 SELECT City,Country FROM Suppliers
 WHERE Country='Germany'
