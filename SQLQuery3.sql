CREATE TABLE CRICKET 
(Name VARCHAR(50), 
City VARCHAR(50),
Age INT);

INSERT INTO CRICKET VALUES 
('Sachin Tendulkar', 'Mumbai', 30),
('Rahul Dravid', 'Bombay', 35),
('M. S. Dhoni', 'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30 );

SELECT * FROM CRICKET;

SELECT * INTO Worldcup FROM CRICKET;

SELECT * FROM Worldcup;

SELECT Name,City 
INTO T20 
FROM CRICKET
WHERE 1=0;

SELECT * FROM T20;

SELECT *
INTO IPL 
FROM CRICKET
WHERE 1=0;

SELECT * FROM IPL;

SELECT * 
INTO PLAYER 
FROM CRICKET
WHERE (Age>30 AND City='Mumbai') OR (Age=31 AND City!='Bombay');

SELECT * FROM PLAYER;

SELECT * 
INTO PLAYER_INFO
FROM CRICKET
WHERE (Age IN (19, 23, 29, 31, 37, 41, 43, 47, 53)) OR (City IN ('Mumbai','Bombay','Jharkhand','Gujarat'));

SELECT * FROM PLAYER_INFO;

SELECT * 
INTO PLAYER_DATA
FROM CRICKET
WHERE Age%5=0;	

SELECT * FROM PLAYER_DATA;

INSERT INTO IPL 
SELECT * 
FROM CRICKET
WHERE City='Jharkhand';

SELECT * FROM IPL;

CREATE TABLE EMPLOYEE 
(Name VARCHAR(50), 
City VARCHAR(50),
Age INT);

INSERT INTO EMPLOYEE VALUES 
('Jay Patel', 'Rajkot', 30),
('Rahul Dave', 'Baroda', 35),
('Jeet Patel', 'Surat', 31),
('Vijay Raval', 'Rajkot', 30 );

SELECT * FROM EMPLOYEE;

SELECT * INTO Employee_detail FROM EMPLOYEE;

SELECT * FROM Employee_detail;

SELECT Name,City 
INTO Employee_data 
FROM EMPLOYEE
WHERE 1=0;

SELECT * FROM Employee_data;

SELECT * 
INTO Employee_info 
FROM EMPLOYEE
WHERE 1=0;

SELECT * FROM Employee_info;

INSERT INTO Employee_info 
SELECT * 
FROM EMPLOYEE
WHERE City='Rajkot';

SELECT * FROM Employee_info;

INSERT INTO Employee_info 
SELECT * 
FROM EMPLOYEE
WHERE Age>32;

SELECT * FROM Employee_info;





--UPDATE OPERATION


--Part – A: 


--From the above given tables perform the following queries (UPDATE Operation):  

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 5000
WHERE AMOUNT = 3000;

SELECT * FROM DEPOSIT;

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)  

UPDATE BORROW
SET BNAME = 'C.G. ROAD'
WHERE CNAME = 'ANIL';

SELECT * FROM BORROW;

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table) 

UPDATE DEPOSIT
SET ACTNO = 111 , AMOUNT = 5000 
WHERE CNAME = 'SANDIP';

SELECT * FROM DEPOSIT;

--4. Update amount of KRANTI to 7000. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 7000
WHERE CNAME = 'KRANTI';

SELECT * FROM DEPOSIT;

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table) 

UPDATE BRANCH
SET BNAME = 'ANDHERI WEST'
WHERE BNAME = 'ANDHERI';

SELECT * FROM BRANCH;

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table) 

UPDATE DEPOSIT
SET BNAME = 'NEHRU PALACE'
WHERE CNAME = 'MEHUL';

SELECT * FROM DEPOSIT;

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)

UPDATE DEPOSIT
SET AMOUNT = 5000
WHERE ACTNO BETWEEN 103 AND 107;

SELECT * FROM DEPOSIT;

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table) 

UPDATE DEPOSIT
SET ADATE = '1995-04-01'
WHERE CNAME = 'ANIL';

SELECT * FROM DEPOSIT;

--9. Update the amount of MINU to 10000. (Use Deposit Table) 

UPDATE DEPOSIT
SET AMOUNT = 10000
WHERE CNAME = 'MINU';

SELECT * FROM DEPOSIT;

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table) 

UPDATE DEPOSIT
SET AMOUNT = 5000 , ADATE = '1996-04-01'
WHERE CNAME = 'PRAMOD';

SELECT * FROM DEPOSIT;
