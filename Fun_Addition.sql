USE [products]
GO

/****** Object:  UserDefinedFunction [dbo].[Fun_Addition]    Script Date: 12-04-2023 09:55:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Fun_Addition]
				(
					@Num1 Decimal(30,20),
                    @Num2 Decimal(30,20)
	     		 )

RETURNS Decimal(30,20)
	Begin
		DECLARE @Result Decimal(30,20)
		SET @Result = @Num1 + @Num2
		RETURN @Result
	end
GO

--EXECUTION
--Print dbo.[Fun_Addition](345,45);
