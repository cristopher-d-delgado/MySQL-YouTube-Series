select gender, avg(age)
from employee_demographics
group by gender;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;
 
-- ORDER BY -- 
# always by default does ascending 
# for strings its A->Z
select * 
from employee_demographics
order by first_name; 
