--Perform SQL queries for Group by with having and Order by 


--Table: SALES_DATA 

CREATE TABLE SALES_DATA
(Region VARCHAR(35),
Product VARCHAR(25),
Sales_Amount DECIMAL(8,2),
Year INT);

SELECT * FROM SALES_DATA;

INSERT INTO SALES_DATA VALUES
('North America', 'Watch', 1500, 2023),
('Europe', 'Mobile', 1200, 2023),
('Asia', 'Watch', 1800, 2023),
('North America', 'TV', 900, 2024),
('Europe', 'Watch', 2000, 2024),
('Asia', 'Mobile', 1000, 2024),
('North America', 'Mobile', 1600, 2023 ),
('Europe', 'TV', 1500, 2023 ),
('Asia', 'TV', 1100, 2024),
('North America', 'Watch', 1700, 2024);

SELECT * FROM SALES_DATA;



--Part – A:


--1. Display Total Sales Amount by Region. 



--2. Display Average Sales Amount by Product 
--3. Display Maximum Sales Amount by Year 
--4. Display Minimum Sales Amount by Region and Year 
--5. Count of Products Sold by Region 
--6. Display Sales Amount by Year and Product 
--7. Display Regions with Total Sales Greater Than 5000