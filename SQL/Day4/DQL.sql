use employeedb;
CREATE TABLE Employeess(

   id INT,

   name VARCHAR(100),

   department VARCHAR(50),

   salary INT,

   city VARCHAR(50)

);

INSERT INTO Employeess
VALUES
(101,'Sudhan','Developer',65000,'Chennai'),
(102,'Rahul','Tester',40000,'Madurai'),
(103,'Karthik','Developer',55000,'Chennai'),
(104,'Ajay','HR',35000,'Salem'),
(105,'Vijay','Manager',85000,'Coimbatore'),
(106,'Arun','Developer',60000,'Bangalore'),
(107,'Priya','Tester',45000,'Chennai'),
(108,'Divya','HR',30000,'Madurai'),
(109,'Surya','Developer',70000,'Salem'),
(110,'Anitha','Manager',90000,'Chennai');

SELECT * FROM Employeess;
-- task 2
select name,department,salary from Employeess;

-- task 3
select distinct city from Employeess;
-- task 4
SELECT city FROM Employeess WHERE city="Chennai";
-- task 5
SELECT salary FROM Employeess WHERE salary > 60000;
SELECT salary FROM Employeess WHERE salary <= 45000;

-- task 6
SELECT * FROM Employeess WHERE department="Developer" AND city="Chennai";
SELECT * FROM Employeess WHERE city="Madurai" OR city="Salem";

-- task 7
SELECT * FROM Employeess WHERE name LIKE "A%";
SELECT * FROM Employeess WHERE name LIKE "%a";
SELECT  * FROM Employeess WHERE name LIKE "%ya%";

-- task 8

SELECT * FROM Employeess WHERE city IN ("Chennai","Salem");
SELECT * FROM Employeess WHERE salary BETWEEN 45000 AND 70000;

-- task 9
SELECT * FROM Employeess  ORDER BY salary DESC;
SELECT * FROM Employeess ORDER BY name ASC;

-- task 10
SELECT * FROM Employeess LIMIT 5;
SELECT * FROM Employeess order by salary DESC LIMIT 1;