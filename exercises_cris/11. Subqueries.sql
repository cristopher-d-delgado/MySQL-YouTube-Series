-- Subquries
# Subquery (also called an inner query or nested query) is a query inside
# another query 
# Should return all employee_ids that are in employee_salary 
# but also just returns those in dept_id = 1 
select * 
FROM employee_demographics
WHERE employee_id IN 
	(SELECT employee_id
		FROM employee_salary 
        WHERE dept_id = 1)
;

# Let's say you want to see everyone's salary 
# and determine if there is salary is above avg or below avg
select first_name, salary, 
	(select avg(salary)
	from employee_salary)
from employee_salary
;


