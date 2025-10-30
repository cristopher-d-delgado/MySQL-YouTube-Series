-- Case Statements
select first_name, last_name, age,
case
	when age <=30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then "On Death's Door"
end as Age_Bracket
from employee_demographics;

-- Pay Increase and Bonus 
-- < 50000 = 5% bonus
-- > 50000 = 7% bonus
-- Finance = 10% bonus
select first_name, last_name, salary, dept_id,
# Since case statments work in chronological order and stop conditional after one is met 
# It is important to first check if the department is equal to 6 as this is finance
case 
	when dept_id = 6 then salary + (salary * 0.10) # Finance dept gets 10% bonus
	when salary < 50000 then salary + (salary * 0.05) # 5% increase in salary
    when salary > 50000 then salary + (salary * 0.07) # 7% increase in salary
end as New_Salary
from employee_salary;
