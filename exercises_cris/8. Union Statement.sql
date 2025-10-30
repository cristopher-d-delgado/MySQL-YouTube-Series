-- Unions 
# Unions serve as a way of selecting data from multiple tables as once
select	first_name, last_name
from employee_demographics
union # Union does an automatic distinct values so in realtity "union distinct"
select	first_name, last_name
from employee_salary
;

select	first_name, last_name
from employee_demographics
union all # Union all will incorporate all values and will get rid of duplicate values
select	first_name, last_name
from employee_salary
;

# Use case 
# FInd out who is generally older to lay off and also find out whose salary is a lot 
select first_name, last_name, 'Old Man' AS Label
from employee_demographics
where age > 40 and gender = 'Male'
union 
select first_name, last_name, 'Old Lady' AS Label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'Highly Paid Employee' AS Label
from employee_salary
where salary > 70000
order by first_name, last_name
;