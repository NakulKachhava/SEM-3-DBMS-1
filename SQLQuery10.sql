--Implement SQL Joins



--Create below tables as per following data


CREATE TABLE STU_INFO(
Rno INT,
Name VARCHAR(30),
Branch VARCHAR(30));


INSERT INTO STU_INFO VALUES 
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

SELECT * FROM STU_INFO;



CREATE TABLE RESULT(
Rno INT,
SPI DECIMAL(2,1));


INSERT INTO RESULT VALUES 
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);

SELECT * FROM RESULT;



CREATE TABLE EMPLOYEE_MASTER(
EmployeeNo VARCHAR(10),
Name VARCHAR(30),
ManagerNo VARCHAR(10));


INSERT INTO EMPLOYEE_MASTER VALUES 
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');

SELECT * FROM EMPLOYEE_MASTER;



--Part – A:


--1. Combine information from student and result table using cross join or Cartesian product.

SELECT * 
FROM STU_INFO S
CROSS JOIN RESULT R;


--2. Perform inner join on Student and Result tables.

SELECT * 
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno;

--3. Perform the left outer join on Student and Result tables.

SELECT * 
FROM STU_INFO S
LEFT JOIN RESULT R
ON S.Rno = R.Rno;

-- OR

SELECT * 
FROM STU_INFO S
LEFT OUTER JOIN RESULT R
ON S.Rno = R.Rno;

--4. Perform the right outer join on Student and Result tables.

SELECT * 
FROM STU_INFO S
RIGHT JOIN RESULT R
ON S.Rno = R.Rno;

-- OR

SELECT * 
FROM STU_INFO S
RIGHT OUTER JOIN RESULT R
ON S.Rno = R.Rno;

--5. Perform the full outer join on Student and Result tables.

SELECT * 
FROM STU_INFO S
FULL JOIN RESULT R
ON S.Rno = R.Rno;

-- OR

SELECT * 
FROM STU_INFO S
FULL OUTER JOIN RESULT R
ON S.Rno = R.Rno;

--6. Display Rno, Name, Branch and SPI of all students.

SELECT S.Rno, Name, Branch, SPI 
FROM STU_INFO S
LEFT JOIN RESULT R
ON S.Rno = R.Rno;

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.

SELECT S.Rno, Name, Branch, SPI 
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
WHERE Branch = 'CE';

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.

SELECT S.Rno, Name, Branch, SPI 
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
WHERE Branch != 'EC';

--9. Display average result of each branch.

SELECT Branch ,AVG(SPI) AS Result
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
GROUP BY Branch;

--10. Display average result of CE and ME branch.

SELECT Branch ,AVG(SPI) AS Result
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
WHERE Branch IN ('CE','ME')
GROUP BY Branch;

--11. Display Maximum and Minimum SPI of each branch.

SELECT Branch ,MAX(SPI) AS Max_SPI ,MIN(SPI) AS Min_SPI
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
GROUP BY Branch;

--12. Display branch wise student’s count in descending order.

SELECT Branch ,COUNT(S.Rno) AS Stu_count
FROM STU_INFO S
LEFT JOIN RESULT R
ON S.Rno = R.Rno
GROUP BY Branch
ORDER BY Stu_count DESC;



--Part – B:


--1. Display average result of each branch and sort them in ascending order by SPI.

SELECT Branch ,AVG(SPI) AS Result
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
GROUP BY Branch
ORDER BY Result;

--2. Display highest SPI from each branch and sort them in descending order.

SELECT Branch ,MAX(SPI) AS Highest_SPI
FROM STU_INFO S
INNER JOIN RESULT R
ON S.Rno = R.Rno
GROUP BY Branch
ORDER BY Highest_SPI DESC;



--Part – C:


--1. Retrieve the names of employee along with their manager’s name from the Employee table.

SELECT E.NAME AS Employee ,M.Name AS Manager 
FROM EMPLOYEE_MASTER E
INNER JOIN EMPLOYEE_MASTER M
ON E.ManagerNo = M.EmployeeNo