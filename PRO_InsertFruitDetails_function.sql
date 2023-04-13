CREATE TABLE Fruits(
ID int,
FruitName VARCHAR(50),
Price INT,
StockQuantity INT,
OrderQuantity INT,
Inventory INT
);

DROP TABLE Fruits

SELECT * FROM Fruits

--Inserting values to the tables
EXEC PRO_InsertFruitDetails 1, 'Apple', 60, 80, 20, 100

EXEC PRO_InsertFruitDetails 2, 'Orange', 75, 120, 30, 150

EXEC PRO_InsertFruitDetails 5, 'Banana',60, 160, 100, 260

--Updating Values 
EXEC PRO_InsertFruitDetails 4,'potato', 45, 80, 125,40
