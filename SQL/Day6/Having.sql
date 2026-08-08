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
select * from Employees where salary >5000 And location="Madurai";
select * from Employees where salary >50000 OR location="Madurai";
select * from Employees where department IN  ("IT")  ;
select * from Employees where department NOT IN  ("IT")  ;
select * from Employees where salary BETWEEN 20000 AND 40000   ;
select * from Employees where name like "D%"  ;
-- task 9
select  * from Employees order by salary desc;
select  * from Employees order by salary ;
select  * from Employees order by salary desc limit 5;
select  * from Employees order by id desc limit 3;
-- task 10
select count(salary),sum(salary),max(salary),min(salary),avg(salary) from Employees;
-- task 11
select  department,count(id) from Employees group by  department ;
select department ,sum(salary) from Employees group by department;
select location ,avg(salary) from Employees group by location;
select department ,max(salary) from Employees group by department;
-- task 12
select department, count(id) from Employees group by department having count(id)>2;
select location,avg(salary) from Employees group by location having avg(salary) > 50000;
select department, sum(salary) from Employees group by department having sum(salary)>200000;
-- task 13
select name ,upper(name) AS upper_name from Employees;
select name,lower(name) AS lower_name from Employees;
select name ,length(name) AS length_ from Employees;
select   concat(name,"-",location) AS details from Employees;
select name ,substring(name,1,2) AS string__ from Employees;
select location ,replace(location,"Madurai","Chennai") AS city from Employees;
select name,left(name,4) AS left_ from Employees;
select name,right(name,4) AS left_ from Employees;
select name,reverse(name) AS Reverse_ from Employees;
select trim(name) AS trim_ from Employees;
-- task 14
Alter TABLE Employees ADD join_date DATE;

UPDATE Employees SET join_date = '2023-01-15' WHERE id = 1;
UPDATE employees SET join_date = '2022-06-20' WHERE id = 2;
UPDATE employees SET join_date = '2021-11-05' WHERE id = 3;
UPDATE employees SET join_date = '2024-02-10' WHERE id = 4;
UPDATE employees SET join_date = '2023-08-18' WHERE id = 5;
SELECT NOW() AS current_datetime;
select curdate() AS current__date ;
SELECT year(join_date) AS current_year from Employees;