
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <12-04-2023, ,>
-- Description:	<Multiplication Function, ,>
-- =============================================
CREATE FUNCTION Fun_Multiplication
(
	@Num1 DECIMAL(7,2),
	@Num2 DECIMAL(7,2)
)
RETURNS DECIMAL(7,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result DECIMAL(7,2)
    SET @Result = @Num1 * @Num2


	-- Return the result of the function
	RETURN @Result

END
GO

--Print dbo.Fun_Multiplication(12,8)