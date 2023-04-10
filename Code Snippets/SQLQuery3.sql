--Creating a Table
CREATE TABLE products(
    PersonID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
--Retrieve the data
SELECT * FROM products

--Inserting the values
INSERT INTO products
VALUES(3,'Radha', 'krishnan', 'Mailam', 'Villupuram');


--Creating a Table
CREATE TABLE Registrations(
reg_id int,
name varchar(255)
);

--Retrieve the data
SELECT * FROM Registrations

--Inserting the values
INSERT INTO Registrations
VALUES(1,'Andrew'),(2,'Bob'), (3,'Charlie'), (4,'David')

--Creating a Table
CREATE TABLE Logins(
log_id int,
name varchar(255)
)

--Retrieve the data
SELECT * FROM Logins

--Inserting the values
INSERT INTO Logins
VALUES(1,'Xavier'),(2,'Andrew'), (3,'Yolanda'),(4,'Bob')


--INNER JOIN
SELECT * FROM Registrations
INNER JOIN Logins
ON Registrations.name=Logins.name

SELECT reg_id, Logins.name, log_id FROM Registrations
INNER JOIN Logins
ON Registrations.name=Logins.name

--FULL OUTER JOIN
SELECT * FROM Registrations
FULL OUTER JOIN Logins
ON Registrations.name=Logins.name
WHERE Registrations.reg_id is NULL OR
Logins.log_id is NULL

--SELF JOIN
SELECT * FROM Registrations, Logins
WHERE reg_id=1

--GROUP BY
SELECT COUNT(name),log_id FROM Logins
GROUP BY log_id
HAVING COUNT(name)<1

--Creating a Table
CREATE TABLE Customers(
Customer_ID int Primary key,
Customer_Name varchar(255),
Contact_Name varchar(255),
Address varchar(255),
City varchar(255),
Postal_Code varchar(255),
Country varchar(255)
)

--Inserting the values
INSERT Customers
VALUES(1,'Ajay','Maria','Obera St.57','Los Angles','12209','Germany'),
(2,'Vijay','Soundarya','Avda. de la Constitución 2222','California','12508','France'),
(3,'Jayakumar','Priya','Mataderos 2312','Kiwi','54728','Ice land'),
(4,'Ajith','Shalini','120 Hanover Sq','California','12209','France'),
(5,'Vijay','Maria','Berguvsvägen 8','Los Angles','12508','Germany'),
(6,'Radha','Soundarya','Mataderos 2312','Tamil Nadu','12407','India')

--Retrieve the data
SELECT * FROM Customers

--GROUP BY 
SELECT COUNT(Customer_ID) AS TOTAL, Country FROM Customers
GROUP BY Country
HAVING COUNT(Customer_ID)>1

SELECT COUNT(Customer_Name) AS Customer, Contact_Name FROM Customers
GROUP BY Contact_Name
HAVING COUNT(Customer_Name)>1


