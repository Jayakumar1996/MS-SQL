USE [products]
GO

/****** Object:  StoredProcedure [dbo].[SelectAllCustomers]    Script Date: 10-04-2023 16:22:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectAllCustomers]
AS
SELECT * FROM Customers
GO;
GO


EXEC SelectAllCustomers