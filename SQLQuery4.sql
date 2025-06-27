--Alter, Rename Operation

--Use Deposit table of lab-1.


--Part – A:


--From the above given tables perform the following queries (ALTER, RENAME Operation):

--1. Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20),PINCODE INT;

SELECT * FROM DEPOSIT;

--2. Add column state VARCHAR(20).

ALTER TABLE DEPOSIT
ADD STATE VARCHAR(20);

SELECT * FROM DEPOSIT;

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35);

SELECT * FROM DEPOSIT;

--4. Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT;

SELECT * FROM DEPOSIT;

--5. Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT
DROP COLUMN CITY;

SELECT * FROM DEPOSIT;

--6. Rename Column ActNo to ANO.

EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO';

SELECT * FROM DEPOSIT;

--7. Change name of table DEPOSIT to DEPOSIT_DETAIL

EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL';

SELECT * FROM DEPOSIT_DETAIL;



--Part – B:


--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.

EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE';

SELECT * FROM DEPOSIT_DETAIL;

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;

SELECT * FROM DEPOSIT_DETAIL;

--3. Rename Column CNAME to CustomerName.

EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMERNAME';

SELECT * FROM DEPOSIT_DETAIL;

--4. Add Column country.

ALTER TABLE DEPOSIT_DETAIL
ADD COUNTRY VARCHAR(20);

SELECT * FROM DEPOSIT_DETAIL;



--Part – C:--Create following table using query according to the definition.CREATE TABLE STUDENT_DETAIL (Enrollment_No VARCHAR(20),Name VARCHAR(25),CPI DECIMAL(5,2),Birthdate DATETIME);SELECT * FROM STUDENT_DETAIL;--From the above given tables perform the following queries (ALTER, RENAME Operation):

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).

ALTER TABLE STUDENT_DETAIL
ADD City VARCHAR(20) NOT NULL,Backlog INT;

SELECT * FROM STUDENT_DETAIL;

--2. Add column department VARCHAR (20) Not Null.

ALTER TABLE STUDENT_DETAIL
ADD Department VARCHAR(20) NOT NULL;

SELECT * FROM STUDENT_DETAIL;

--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).

ALTER TABLE STUDENT_DETAIL
ALTER COLUMN Name VARCHAR(35);

SELECT * FROM STUDENT_DETAIL;

--4. Change the data type DECIMAL to INT in CPI Column.

ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT;

SELECT * FROM STUDENT_DETAIL;

--5. Delete Column City from the student_detail table.

ALTER TABLE STUDENT_DETAIL
DROP COLUMN City;

SELECT * FROM STUDENT_DETAIL;

--6. Rename Column Enrollment_No to ENO.

EXEC SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO';

SELECT * FROM STUDENT_DETAIL;

--7. Change name of table student_detail to STUDENT_MASTER.EXEC SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER';

SELECT * FROM STUDENT_MASTER;--DELETE, Truncate, Drop Operation


--Part – A:


--Use Deposit_Detail table (Altered table of DEPOSIT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.

DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT <= 4000;

SELECT * FROM DEPOSIT_DETAIL;

--2. Delete all the accounts CHANDI BRANCH.

DELETE FROM DEPOSIT_DETAIL
WHERE BNAME = 'CHANDI';

SELECT * FROM DEPOSIT_DETAIL;

--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105.

DELETE FROM DEPOSIT_DETAIL
WHERE ANO > 102 AND ANO < 105;

SELECT * FROM DEPOSIT_DETAIL;

--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’

DELETE FROM DEPOSIT_DETAIL
WHERE BNAME IN (' AJNI','POWAI');

SELECT * FROM DEPOSIT_DETAIL;

--5. Delete all the accounts whose account number is NULL.

DELETE FROM DEPOSIT_DETAIL
WHERE ANO IS NULL;

SELECT * FROM DEPOSIT_DETAIL;

--6. Delete all the remaining records using Delete command.

DELETE FROM DEPOSIT_DETAIL;

SELECT * FROM DEPOSIT_DETAIL;

--7. Delete all the records of Deposit_Detail table. (Use Truncate)

TRUNCATE TABLE DEPOSIT_DETAIL;

SELECT * FROM DEPOSIT_DETAIL;

--8. Remove Deposit_Detail table. (Use Drop)

DROP TABLE DEPOSIT_DETAIL;



--Part – B:


--Create following table using query according to the definition.

CREATE TABLE EMPLOYEE_MASTER (EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL(8,2),
City VARCHAR(20));SELECT * FROM EMPLOYEE_MASTER;--Insert the following records in the EMPLOYEE_MASTER table. INSERT INTO EMPLOYEE_MASTER VALUES
(101,'Keyur','2005-01-02',12000.00,'Rajkot'),
(102,'Hardik','2015-02-04',14000.00,'Ahmedabad'),
(103,'Kajal','2014-03-06',15000.00,'Baroda'),
(104,'Bhoomi','2023-06-05',12500.00,'Ahmedabad'),
(105,'Harmit','2015-02-04',14000.00,'Rajkot'),
(106,'Mitesh','2025-09-01',5000.00,'Jamnagar'),
(107,'Meera',NULL,7000.00,'Morbi'),
(108,'Kishan','2006-02-03',10000.00,NULL);

SELECT * FROM EMPLOYEE_MASTER;



--From the above given tables perform the following queries (DELETE Operation):

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.

DELETE FROM EMPLOYEE_MASTER
WHERE Salary >= 14000;

SELECT * FROM EMPLOYEE_MASTER;

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.

DELETE FROM EMPLOYEE_MASTER
WHERE City = 'RAJKOT';

SELECT * FROM EMPLOYEE_MASTER;

--3. Delete all the Employees who joined after 1-1-2007.

DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate > '2007-01-01';

SELECT * FROM EMPLOYEE_MASTER;

--4. Delete the records of Employees whose joining date is null and Name is not null.

DELETE FROM EMPLOYEE_MASTER
WHERE JoiningDate IS NULL AND EmpName IS NOT NULL;

SELECT * FROM EMPLOYEE_MASTER;

--5. Delete the records of Employees whose salary is 50% of 20000.
--6. Delete the records of Employees whose City Name is not empty.
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
--8. Remove Employee_MASTER table. (Use Drop)
