DROP TABLE employee; -- drop and freshly create
USE RADSE
CREATE TABLE OFFICE (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

CREATE TABLE PARTNERS (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30) NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES OFFICE(branch_id)
);

INSERT INTO OFFICE VALUES(1,"Chennai","16 ABC Road");
INSERT INTO OFFICE VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO OFFICE VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO OFFICE VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO PARTNERS VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO PARTNERS VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO PARTNERS VALUES(3,'George','SALES',2000000,1);
INSERT INTO PARTNERS VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO PARTNERS VALUES(5,'Meena','HR',2000000,3);
INSERT INTO PARTNERS VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO PARTNERS VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO PARTNERS VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO PARTNERS VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO PARTNERS VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO PARTNERS VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO PARTNERS VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO PARTNERS VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO PARTNERS VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO PARTNERS VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

SELECT * FROM employee;
SELECT * FROM branch;

-- inner join: only matching rows
SELECT PARTNERS.emp_id,PARTNERS.ename,PARTNERS.job_desc,office.br_name
FROM PARTNERS
INNER JOIN office
ON PARTNERS.branch_id=office.branch_id
ORDER BY emp_id;

SELECT PARTNERS.emp_id,PARTNERS.ename,PARTNERS.job_desc,office.br_name
FROM PARTNERS
left JOIN office
ON PARTNERS.branch_id=office.branch_id
ORDER BY emp_id;

SELECT PARTNERS.emp_id,PARTNERS.ename,PARTNERS.job_desc,office.br_name
FROM PARTNERS
right JOIN office
ON PARTNERS.branch_id=office.branch_id
ORDER BY emp_id;

-- below query gives same result without using join keyword
SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee,branch
WHERE employee.branch_id=branch.branch_id
ORDER BY emp_id;

-- using table name alias
SELECT e.emp_id,e.ename,e.job_desc,b.br_name
FROM employee AS e
INNER JOIN branch AS b
ON e.branch_id=b.branch_id
ORDER BY e.emp_id;

-- Right join is matched rows + all other rows in right table
SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
RIGHT JOIN branch
ON employee.branch_id=branch.branch_id
ORDER BY emp_id;

-- Left join is matched rows with all other rows in left table 
SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
LEFT JOIN branch
ON employee.branch_id=branch.branch_id
ORDER BY emp_id;

-- Cross join joins each row of first table with every other row of second table
SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
CROSS JOIN branch;

-- displays the employee count in each branch
SELECT b.br_name,COUNT(e.emp_id)
FROM branch as b
JOIN employee as e
ON b.branch_id = e.branch_id
GROUP BY e.branch_id;