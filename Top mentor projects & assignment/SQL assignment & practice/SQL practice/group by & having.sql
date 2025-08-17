use radse;
select * from employee
order by jobdesc;
select jobdesc, avg(salary) from employee
group by jobdesc;

select jobdesc, count(id) from employee
group by jobdesc;

select jobdesc, count(id) from employee
group by jobdesc;
having count(salary) > "50000";
