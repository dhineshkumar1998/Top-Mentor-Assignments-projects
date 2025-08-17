USE RADSE;
SELECT COUNT(*) TOTAL FROM EMPLOYEE;
select avg(SALARY) FROM EMPLOYEE
WHERE JOBDESC = "MANAGER";

select sum(SALARY) FROM EMPLOYEE
WHERE JOBDESC = "MANAGER";

select max(SALARY) FROM EMPLOYEE;
select min(SALARY) FROM EMPLOYEE;

select name, char_length(name) from employee;

select name, concat('rs', salary) from employee;
SELECT ucase(NAME), Salary FROM EMPLOYEE;
select name, left(jobdesc, 3) jobdesc from employee;