use Radse;
create table employee (
id int primary key,
name varchar (50),
jobdesc varchar (50),
salary int
);
insert into employee values (1,"ram","admin",100000);
insert into employee values (2,"bam","manager",50000);
insert into employee values (3,"cam","HR",200000);
insert into employee values (4,"dam","Sales",600000);
insert into employee values (5,"Fam","Engineer",800000);
select * from employee;

select * from employee
where name = "ram";
select * from employee
where name IN ("ram","CAM");
select * from employee
where name = "RAM" OR JOBDESC = "ENGINEER";
select * from employee
where NAME <> "RAM";
select * from employee
where JOBDESC NOT IN ("ENGINEER","ADMIN");
select * from employee
where SALARY BETWEEN 100000 AND 900000;

select * from employee
where NAME LIKE '%A%';
select * from employee
where NAME LIKE '_A%';
SELECT distinct SALARY FROM employee;
select * from employee
where NAME NOT LIKE 'R%';

UPDATE EMPLOYEE
SET JOBDESC = "ANALYST"
WHERE JOBDESC = "ENGINEER";

DELETE FROM EMPLOYEE
WHERE ID = 4;
SELECT * FROM EMPLOYEE
ORDER BY NAME;
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC;
SELECT * FROM EMPLOYEE
ORDER BY ( CASE JOBDESC
WHEN "ENGINEER" THEN 1
WHEN "MANAGER" THEN 2
WHEN "ADMIN" THEN 3
WHEN "hr" THEN 4
);