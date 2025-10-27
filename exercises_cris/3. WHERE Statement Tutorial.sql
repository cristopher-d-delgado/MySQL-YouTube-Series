-- WHERE Clause 

select * 
from parks_and_recreation.employee_salary
where first_name = 'Leslie'; 

select * 
from parks_and_recreation.employee_salary
where salary >= 50000;

select * 
from employee_demographics 
where gender != 'Female';

select * 
from employee_demographics
where birth_date > '1985-01-01';

-- AND or NOT -- Logical Operators 
select * 
from employee_demographics
where birth_date > '1985-01-01'
AND gender = 'male';

select * 
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male'; 

select * 
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';

-- LIKE Statment -- 
-- % and _ 
select * 
from employee_demographics
where first_name like '%a%';
