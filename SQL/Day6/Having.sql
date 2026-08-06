CREATE DATABASE Buildin_Function;
-- task 1
use Buildin_Function;
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

-- task 2
INSERT INTO Employees (id, name, department, salary, city) VALUES
(1, 'Arun', 'HR', 35000, 'Chennai'),
(2, 'Priya', 'IT', 60000, 'Coimbatore'),
(3, 'Karthik', 'Finance', 55000, 'Madurai'),
(4, 'Divya', 'Marketing', 45000, 'Salem'),
(5, 'Rahul', 'IT', 70000, 'Chennai'),
(6, 'Sneha', 'HR', 40000, 'Trichy'),
(7, 'Vignesh', 'Sales', 38000, 'Erode'),
(8, 'Meena', 'Finance', 62000, 'Coimbatore'),
(9, 'Suresh', 'Marketing', 50000, 'Madurai'),
(10, 'Anitha', 'IT', 75000, 'Chennai'),
(11, 'Ravi', 'Sales', 42000, 'Salem'),
(12, 'Keerthi', 'HR', 39000, 'Trichy'),
(13, 'Manoj', 'Finance', 68000, 'Erode'),
(14, 'Pooja', 'Marketing', 47000, 'Coimbatore'),
(15, 'Ajith', 'IT', 80000, 'Chennai'),
(16, 'Nisha', 'Sales', 41000, 'Madurai'),
(17, 'Harish', 'HR', 36000, 'Salem'),
(18, 'Deepa', 'Finance', 65000, 'Trichy'),
(19, 'Kiran', 'Marketing', 52000, 'Erode'),
(20, 'Lavanya', 'IT', 85000, 'Coimbatore');

-- Display all records
SELECT * FROM Employees;
-- task 3
Alter Table Employees add email varchar(200);
Alter Table Employees modify salary bigint;
Alter Table Employees rename column city to  location;
-- task 5
UPDATE  Employees SET salary=20000 where id=1;
UPDATE Employees SET department="IT" where id=1;
UPDATE Employees SET department ="IT",salary=40000,location="Manmallai" where id=4;
-- task 6
DELETE From  Employees   where id=2;
DELETE FROM Employees where location="chennai";
-- task 7
select * from Employees;
select name,salary from Employees;
select department from Employees;
select * from Employees where salary > 40000;
-- task 8
