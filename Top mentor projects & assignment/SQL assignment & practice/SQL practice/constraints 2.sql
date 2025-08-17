use radse;
drop table worker;
create table worker(
id int primary key auto_increment,
wname varchar(50) not null,
jobdesc varchar(50) default "unassigned",
salary int
check (salary>100000));

insert into worker(wname,salary) values 
("ram",200000);
insert into worker(wname,salary) values ("arivu",300000);

-- add null constraint
alter table employee
modify id int varchar (50) not null;

-- drop null constraint
alter table employee
modify id int varchar (50);

-- add default constraint
alter table employee
alter jobdesc set default "unassigned";

-- drop default

alter table employee
alter jobdesc drop default;

-- add check constarint
alter table employee
add conatraint chk_salary check (salary > 100000);

-- drop check
alter table employee
drop chk_salary;


select * from worker;