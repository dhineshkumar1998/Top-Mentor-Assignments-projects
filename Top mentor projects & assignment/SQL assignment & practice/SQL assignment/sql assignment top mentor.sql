create table employee(
employee_id int,
name varchar(50),
depart int,
salary int);
insert into employee values (1,"alice",101,120000);
insert into employee values (2,"bob",102,85000);
insert into employee values (3,"charlie",103,45000);
insert into employee values (4,"david",104,95000);
insert into employee values (5,"eve",105,70000);

select*from employee;

create table department(
depart_id int,
name varchar(10)
);

insert into DEPARTMENT values (101, "Sales");
insert into DEPARTMENT values (102, "HR");
insert into DEPARTMENT values (103, "Temp");
insert into DEPARTMENT values (104, "eng");

select * from DEPARTMENT;

select*from employee where depart = "101";

SELECT name  
FROM employee 
WHERE depart = (SELECT depart_id FROM department WHERE name = 
'Sales');

SELECT SUM(salary) AS total_salary  
FROM employee;

SELECT NAME , DEPART FROM employee WHERE SALARY > 45000;

SELECT d.name AS department_name, SUM(e.salary) AS total_salary 
FROM employee e 
JOIN department d ON e.depart = d.depart_id 
GROUP BY d.name;

