USE [products]
GO
/****** Object:  StoredProcedure [dbo].[PRO_InsertFruitDetails]    Script Date: 11-04-2023 11:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- EXEC PRO_InsertFruitDetails 1,@Price = 100
ALTER PROCEDURE [dbo].[PRO_InsertFruitDetails]
(
	@ID INT,
	@FruitName VARCHAR(50),
	@Price INT,
	@StockQuantity INT,
	@OrderQuantity INT,
	@Inventory INT
)
AS
BEGIN

	SET NOCOUNT ON;

INSERT INTO Fruits
           (
				ID,
				FruitName, 
				Price,
				StockQuantity,
				OrderQuantity,
				Inventory
			)
VALUES
			(
			    @ID,
				@FruitName,
				@Price,
				@StockQuantity,
				@OrderQuantity,
				@Inventory
			)
UPDATE Fruits
SET FruitName = 'Watermelon'
WHERE ID=1


END

