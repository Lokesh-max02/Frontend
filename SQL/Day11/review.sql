USE CompanyDB;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2),
    department VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100)
);
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE City (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employe (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    city_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Department(department_id),

    FOREIGN KEY (city_id)
        REFERENCES City(city_id)
);
INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');

INSERT INTO City VALUES
(1, 'Chennai'),
(2, 'Bangalore'),
(3, 'Hyderabad'),
(4, 'Mumbai'),
(5, 'Delhi');
ALTER TABLE Employee
ADD phone VARCHAR(15);
ALTER TABLE Employee
MODIFY emp_name VARCHAR(150);
ALTER TABLE Employee
RENAME COLUMN email TO email_address;
ALTER TABLE Employee
DROP COLUMN phone;
RENAME TABLE Employee TO EmployeeDetails;
TRUNCATE TABLE EmployeeDetails;
DROP TABLE EmployeeDetails;
INSERT INTO Employe
(emp_id, emp_name, salary, department_id, city_id)
VALUES
(101, 'Arun', 45000, 1, 1),
(102, 'Bala', 38000, 2, 2),
(103, 'Charan', 52000, 1, 3),
(104, 'Deepak', 18000, 3, 4),
(105, 'Elango', 65000, 4, 1),
(106, 'Fahad', 42000, 2, 5),
(107, 'Gokul', 55000, 1, 1),
(108, 'Hari', 25000, 3, 2),
(109, 'Imran', 48000, 4, 3),
(110, 'Jagan', 19000, 5, 4),
(111, 'Karthik', 72000, 1, 1),
(112, 'Lokesh', 35000, 2, 2),
(113, 'Manoj', 58000, 3, 5),
(114, 'Naveen', 15000, 5, 3),
(115, 'Prakash', 62000, 4, 1); 
INSERT INTO Department (department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');
SELECT * FROM City;
UPDATE Employe
SET salary = salary + 5000
WHERE department_id = 1;
SELECT * 
FROM Employe
WHERE department_id = 1;
UPDATE Employe
SET city_id = 1
WHERE department_id = 2;
DELETE FROM Employe
WHERE salary < 20000;
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    c.city_name
FROM Employe e
INNER JOIN City c
    ON e.city_id = c.city_id
WHERE e.salary > 40000
  AND e.salary < 60000
  AND c.city_name = 'Chennai';
  SELECT *
FROM Employe
ORDER BY salary DESC
LIMIT 5;