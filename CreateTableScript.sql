-- change the name of database if you have different DB
use MyDatabase;

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo'
                 AND  TABLE_NAME = 'EMPLOYEE'))
BEGIN
	CREATE TABLE EMPLOYEE
	(
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Salary DECIMAL NOT NULL,
	Designation VARCHAR(40) NOT NULL,
	DeptId INT NOT NULL
	)
	-- SEED DATA
	INSERT INTO EMPLOYEE VALUES('SampleUser',50000, 'HR', 20);
	select * from EMPLOYEE;
END

