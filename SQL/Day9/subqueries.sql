create database SubDB;
use SubDB;
CREATE TABLE Employees (
    empid INT PRIMARY KEY AUTO_INCREMENT,
    empname VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department VARCHAR(100)
);
INSERT INTO Employees (empname, salary, department)
VALUES
('Lokesh', 50000, 'IT'),
('Arun', 45000, 'HR'),
('Kumar', 60000, 'Finance');
INSERT INTO Employees (empname, salary, department)
VALUES
('Rahul', 50000, 'HR'),
('Gokul', 85000, 'IT'),
('Maddy', 90000, 'Finance');
SELECT * FROM Employees;
-- task 1
select * from Employees where salary > (select avg(salary) from Employees);
-- task 2
select * from Employees where salary =(select max(salary) from Employees);
-- task 3
select * from Employees where salary =(select min(salary) from Employees);
-- task 4
select * from Employees where department =(select department from Employees where empname="Rahul");
-- task 5
select * from Employees where department IN (select department from Employees where salary > 40000);