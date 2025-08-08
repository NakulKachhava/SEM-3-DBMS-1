--Implement Complex Joins



--From the above given table perform the following queries:


--Part – A:


--1. Combine information from Person and Department table using cross join or Cartesian product.

SELECT * 
FROM PERSON
CROSS JOIN DEPT;

--2. Find all persons with their department name

SELECT 
	PersonName,
	DepartmentName
FROM PERSON D
LEFT JOIN DEPT P
ON P.DepartmentID = D.DepartmentID;

--3. Find all persons with their department name & code.

SELECT 
	PersonName,
	DepartmentName,
	DepartmentCode
FROM PERSON D
LEFT JOIN DEPT P
ON P.DepartmentID = D.DepartmentID;

--4. Find all persons with their department code and location.

SELECT 
	PersonName,
	DepartmentCode,
	Location
FROM PERSON D
LEFT JOIN DEPT P
ON P.DepartmentID = D.DepartmentID;

--5. Find the detail of the person who belongs to Mechanical department.

SELECT * 
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Mechanical';

--6. Find person’s name, department code and salary who lives in Ahmedabad city.

SELECT 
	PersonName,
	DepartmentCode,
	Salary
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE City = 'Ahmedabad';

--7. Find the person's name whose department is in C-Block.

SELECT 
	PersonName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE Location = 'C-Block';

--8. Retrieve person name, salary & department name who belongs to Jamnagar city.

SELECT 
	PersonName,
	Salary,
	DepartmentName
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE City = 'Jamnagar';

--9. Retrieve person’s detail who joined the Civil department after 1-Aug-2001.

SELECT *
FROM PERSON P
INNER JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Civil' AND JoiningDate > '2001-08-01';

--10. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.



--11. Find department wise person counts.
--12. Give department wise maximum & minimum salary with department name.
--13. Find city wise total, average, maximum and minimum salary.
--14. Find the average salary of a person who belongs to Ahmedabad city.
--15. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)