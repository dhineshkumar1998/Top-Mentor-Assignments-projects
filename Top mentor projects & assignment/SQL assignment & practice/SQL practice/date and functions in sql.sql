use radse;
alter table employee add hiredate date;
select * from employee;

update employee
set hiredate="2024-10-18";

update employee
set hiredate="2024-01-10"
where jobdesc = "admin";

update employee
set hiredate="2020-09-09"
where jobdesc = "Manager";

select now();
select date(now());

select date_format(curdate(), "%m/%y/%d") date;
select datediff("1998/12/25","2024/12/25");
select date_add("1998/12/25", interval 25 day) date;