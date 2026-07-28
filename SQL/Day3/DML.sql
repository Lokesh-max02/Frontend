CREATE DATABASE EmployeeDB;
use EmployeeDB;

-- task 1
CREATE TABLE Employees(
id INT PRIMARY KEY auto_increment,
name VARCHAR(200),
dept VARCHAR(200),
salary INT,
city VARCHAR(200)


);
INSERT INTO Employees(name,dept,salary,city) values("Rahul","CSE",40000,"Kallakurichi"),
 ("Gokul","ECE",50000,"Erode"), ("Harun","EEE",30000,"Chennai"),("Lokesh","CSE",40000,"Kallakurichi"),
  ("Saran","CSE",60000,"Madurai");
  SELECT * FROM Employees;
  
  -- Student Database
  CREATE TABLE Students(
  student_id INT PRIMARY KEY auto_increment,
  student_name VARCHAR (50),
  course VARCHAR(100),
  age INT ,
  city VARCHAR(200)
  
  );
  SELECT * FROM Students;
  INSERT INTO Students (student_name,course,age,city) VALUES("Rahul","CSE",40000,"Kallakurichi"),
 ("Gokul","ECE",50000,"Erode"), ("Harun","EEE",30000,"Chennai"),("Lokesh","CSE",40000,"Kallakurichi"),
  ("Saran","CSE",60000,"Madurai"),("Rahul","CSE",40000,"Kallakurichi"),
 ("Gokul","ECE",50000,"Erode"), ("Harun","EEE",30000,"Chennai");
 UPDATE Students SET age=25 where student_id=6 ;
--  task 3
UPDATE Employees SET salary=70000 where id=3;
select * FROM Employees;

-- task 4
UPDATE Employees SET dept="Team Lead" WHERE id=2;
UPDATE Employees SET city="Banglore"   WHERE id=2;

-- task 5

DELETE FROM  Employees where id=5;

-- TASK 6
UPDATE Employees 	SET salary=salary+10000 where dept="software_developer";

-- task 7
UPDATE Students SET city="coimbatore" WHERE city="chennai";
SELECT * FROM Students;
-- task 8
DELETE FROM Students WHERE age<=20;

-- task 9
CREATE TABLE Products(
product_id INT PRIMARY KEY auto_increment,
product_name VARCHAR (200),
price INT,
category VARCHAR(100)


);
INSERT INTO Products (product_name,price,category) VALUES("Ironbox",1000,"Electronics"),
("TV",10000,"Electronics"),("Door",50000,"Wood"),("bata ",1000,"Footwear"),
("Coolers",1000,"glass");
SELECT * FROM Products;
UPDATE Products SET  price=5000 where product_id=4;
DELETE FROM Products WHERE product_id=3;

-- task 10

create table employee(
employee_id int primary key auto_increment,
employee_name varchar(500),
emp_age int,
emp_salary int ,
emp_city varchar(200));


insert into employee (employee_name,emp_age,emp_salary,emp_city) values
('vicky',21,21000,'chennai'),
('lokesh',22,25000,'salem'),
('rakesh',31,34000,'tuty'),
('suresh',32,43000,'chennai'),
('madhan',23,44000,'pondychery'),
('suresh',32,45000,'ooty'),
('naresh',42,35000,'tirupati'),
('gokul',32,43500,'chennai'),
('rahul',35,43000,'tuty');

UPDATE employee SET emp_salary=70000 WHERE employee_id=7;
SELECT * FROM employee;
DELETE FROM employee where employee_id=7;
SELECT emp_city from employee where emp_city="Chennai";
SELECT emp_salary from employee where emp_salary >=50000;