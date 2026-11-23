
# SHOW DATABASES
show databases;

-- CREATE DATABASE ITV
create database ITV;

/* CAN BE 
USED FOR
MULTI-LINE
COMMANDS
*/

# SELECT THE DATABASE CALLED ITV
USE ITV;

-- CREATE TABLE CALLED DEMO
CREATE TABLE DEMO
	(
    ID INT,
    NAME VARCHAR(50),
    DEPARTMNET VARCHAR(50)
    );
    
-- TO SHOW TABLES
SHOW TABLES;

-- DESCTIBE THE TABLE DEMO
DESCRIBE DEMO;

-- CREATE A TABLE NAME EMPLOYEE
CREATE TABLE EMPLOYEE
	(
    EMP_ID INT,
    EMP_NAME VARCHAR(50),
    DEPARTMENT VARCHAR(50)
    );
    
SHOW TABLES;
DESCRIBE EMPLOYEE;
DESCRIBE TABLE EMPLOYEE;

/*
DQL - DATA QUERY LANGUAGE
SELECT - HELPS TO VISIALIZE THE INFORMATION INTABLE FROM DB
FROM - HELPS TO REFER THE TABLE WHICH WE HAVE TO RETRIVE INFORMATIONS FROM
WHERE - HELPS TO MAKE CONDITION ON NON GROUPING INFORMATION
GROUP BY - HELPS TO MAKE THE GROUPS ON INFORMATION LIKE ON AGGREGATION
HAVING - HELPS TO MAKE CONDITION ON GROUPING INFORMATION
ORDER BY - HEPLS TO SORT TABLE IN ASE OR DESC
LIMIT - HELPS TO RETRIVE DATA WITH LIMIT
OFFSET - HELPS TO SKIP THE INFORMATIM FROM THE TABLE
*/

SELECT * FROM employees;

select first_name,last_name,salary
from employees
where salary > 5000
order by salary desc;

select first_name,last_name,salary
from employees
where salary between 5000 and 10000
order by salary desc;

select *
from employees
where department_id=50;

select *
from employees
where department_id in (50,60,70);

select *
from employees
where first_name like 'A%';
-- % - place holder
-- Like - Pattern Match

select *
from employees
where first_name like '%A';


select *
from employees
where department_id=50 and salary > 5000;


select *
from employees
where department_id=50 or salary > 5000;

select *
from employees
where commission_pct is not null;

select *
from employees
where commission_pct is null;

select sum(salary) as total_salary,
	avg(salary) as avg_salary,
    count(*) as no_of_employees,
    min(hire_date) as New_joinned,
    max(hire_date) as old_employee
from employees;

