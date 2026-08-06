CREATE DATABASE MentorDB;
use MentorDB;
CREATE TABLE Detail(
stu_id INT PRIMARY KEY auto_increment,
stu_name VARCHAR(50),
stu_age INT,
email VARCHAR(200),
currentdate date,
created_by varchar(200)default"admin",
CREATED_AT date,
UPDATED_BY varchar(200),
UPDATED_AT date);

SELECT * FROM Detail;

INSERT INTO Detail (stu_name,stu_age,email,currentdate,created_by,CREATED_AT,UPDATED_BY,UPDATED_AT) VALUES ("REACT",20,"harish007@gmail.com",curdate(),"ADMIN",curdate(),"harish",curdate());



