CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
SELECT * FROM worker
WHERE salary BETWEEN 200000 AND 400000;

select worker_id,first_name,department,
CASE
	WHEN salary> 300000 THEN 'Rich people'
    WHEN salary<=300000 && salary>=100000 THEN 'Middle people'
    Else 'Poor People'
END
AS people_stage_wise
FROM worker;

select department, count(department) as total_employees from worker
group by department
order by total_employees desc
limit 3;

create table Persons1 (
	ID int primary key,
    LastName varchar(255) not null unique,
    FirstName varchar(255) not null unique,
    age int
);

select * from persons1;

create database mongoprac;
use mongoprac;
create table student(
s_id int primary key,
s_name varchar(25) not null,
s_department varchar(25) not null
);

insert into student values (1001,"Jayanth","ECE"),(1002,"Praveen","CSE"),(1003,"Logesh","Mech"),(1006,'karthick','Aero'),(1007,"Mahesh","Civil");

select * from student;
create table VIT(
s_id int primary key,
s_cgpa varchar(5) not null
);
insert into vit values (1001,'7.2'),(1002,'8.6'),(1007,'9.25');
select * from vit;

select * from student right outer join vit on (student.s_id = vit.s_id);