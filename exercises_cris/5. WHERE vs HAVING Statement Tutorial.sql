-- Having vs Where 
select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40; # Filter after aggregation 

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%' # filter at the row level
group by occupation
having avg(salary) > 50000; # filter at the aggregated function level