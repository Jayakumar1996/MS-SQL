
SELECT * FROM Employee

CREATE PROCEDURE EmpNameAndSalary
@ENAME VARCHAR(20),
@SALARY INT 
AS
BEGIN
SELECT ENAME, SALARY FROM Employee WHERE ENAME = @ENAME AND SALARY =@SALARY
END



EXEC EmpNameAndSalary 'SCOTT',82000

EXEC EmpNameAndSalary 'SMITH',8000