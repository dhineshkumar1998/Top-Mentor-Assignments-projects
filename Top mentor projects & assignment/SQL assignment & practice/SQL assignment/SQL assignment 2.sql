create table employee(
employee_id int,
name varchar(50),
department_id int,
salary int);
insert into employee values (1,"alice",101,120000);
insert into employee values (2,"bob",102,85000);
insert into employee values (3,"charlie",103,45000);
insert into employee values (4,"david",104,95000);
insert into employee values (5,"eve",105,70000);

select*from employee;

create table department(
department_id int,
name varchar(10)
);

insert into DEPARTMENT values (101, "Sales");
insert into DEPARTMENT values (102, "HR");
insert into DEPARTMENT values (103, "Temp");
insert into DEPARTMENT values (104, "eng");

select * from DEPARTMENT;

WITH DepartmentAverage AS ( 
SELECT department_id, AVG(salary) AS avg_salary 
FROM employee
GROUP BY department_id
)

SELECT e.name, d.name AS department_name, e.salary 
FROM employee e 
JOIN department d ON e.department_id = d.department_id 
JOIN DepartmentAverage da ON e.department_id = da.department_id 
WHERE e.salary > da.avg_salary; 


select e.name as emloyee_name, d.name as department_name from employee e
join department d on e.department_id = d.department_id

SELECT name, salary  
FROM employee
ORDER BY salary DESC  
LIMIT 2;

DELETE FROM employees 
WHERE department_id = (SELECT department_id FROM departments WHERE name = 
'Temporary');