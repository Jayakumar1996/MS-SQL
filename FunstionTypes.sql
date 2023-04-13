exec SelectAllCustomers

SELECT CONCAT(Customer_Name,'',Contact_Name) AS FULL_NAME FROM Customers;

SELECT LOWER(Customer_Name) FROM Customers

SELECT UPPER(Customer_Name) FROM Customers

SELECT LENGTH(Customer_Name) FROM products;

SELECT * FROM Employee
SELECT ABS(-10) FROM Employee;

SELECT FLOOR(SALARY) FROM Employee;

SELECT ROUND(SALARY,2) FROM Employee;

SELECT CAST(ENAME AS VARCHAR(5)) FROM Employee;


--CASE STATEMENTS
SELECT
CASE
WHEN SALARY > 1000 THEN 'High'
WHEN SALARY > 500 THEN 'Medium'
ELSE 'Low'
END AS sales_category
FROM Employee;


CREATE FUNCTION Fun_Addition(@Num1 Decimal(7,2),
                         @Num2 Decimal(7,2))
RETURNS Decimal(7,2)
Begin
    DECLARE @Result Decimal(7,2)
    SET @Result = @Num1 + @Num2
    RETURN @Result
end				