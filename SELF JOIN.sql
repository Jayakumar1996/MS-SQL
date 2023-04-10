--CREATING A TABLE
CREATE TABLE Employee(
EID int,
ENAME varchar(50),
SALARY int,
MID int
)

--Inserting the values 
INSERT INTO Employee
VALUES(101,'SMITH',8000,101),
(102,'WARNER',11000,108),
(103,'JAMES',18000,109),
(104,'SCOTT',82000,104),
(105,'BLAKE',34300,110),
(106,'ADAMS',8000,106)

--Retrieving the data
SELECT * FROM Employee

--SELF JOIN
--Write a Query to display the employee details who are getting the Salary same as the employee Smith also getting?

--SELECT * FROM Employee E1,Employee E2 WHERE E1.SALARY=E2.SALARY AND E1.ENAME='SMITH'
 
 SELECT E1.EID,E1.ENAME,E1.SALARY FROM Employee E1,Employee E2 WHERE E1.SALARY=E2.SALARY AND E2.ENAME='SMITH'


