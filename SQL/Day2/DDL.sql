CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees(
emp_id INT PRIMARY KEY auto_increment,
emp_name VARCHAR(50),
department VARCHAR(100),
salary INT,
city VARCHAR(100)
);
SHOW tables ;
SELECT * FROM Employees;
ALTER TABLE Employees
 ADD  email VARCHAR(200),
ADD phone VARCHAR(20),
ADD experience INT;
SELECT * FROM Employees;
ALTER TABLE Employees modify  salary BIGINT;
ALTER TABLE Employees modify phone BIGINT;
DESC Employees;
ALTER TABLE Employees RENAME column city TO location ;
ALTER TABLE Employees CHANGE emp_name employee_name VARCHAR(100);
ALTER TABLE Employees DROP COLUMN experience ;
ALTER TABLE Employees DROP COLUMN email;
RENAME TABLE Employees to EmployeeDetails;
DESC EmployeeDetails;
CREATE TABLE Students(
student_id INT primary KEY auto_increment,
student_name VARCHAR(50),
course VARCHAR(200),
age INT,
city VARCHAR(299)


);
DESC Students;
truncate TABLE Students;
ALTER TABLE Students ADD mobile VARCHAR(50);
DROP TABLE Students;
DROP TABLE EmployeeDetails;
DROP  DATABASE CompanyDB;
