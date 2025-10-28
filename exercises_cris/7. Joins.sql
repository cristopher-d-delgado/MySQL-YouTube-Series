-- Joins 
-- Inner Join
# Returns rows that are the same based on column in both tables
SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT * 
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- Outer Join 
SELECT *
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- Joining multiple tables 
select	* 
from employee_demographics as dem 
inner join employee_salary as sal 
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id
;