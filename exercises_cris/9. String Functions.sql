-- String functions
-- length()
# Find out the length of each first name and order by the shortest name to longest name
select first_name, length(first_name)
from employee_demographics
order by 2;
;
-- upper() & lower()
# Sometimes its best to standardize the strings with upper and lower
select first_name, upper(first_name)
from employee_demographics
;

select first_name, lower(first_name)
from employee_demographics
;

-- trim(), ltrim(), rtrim()
# Sometimes it is also usefull to remove leading and trailing whitespace in strings
# trim() which gets rid of leading and trailing whitespace
select trim('       sky            ');
# ltrim() which gets rid of left hand side whitespace
select ltrim('       sky            ');
# rtrim() which gets rid of right hand side whitespace
select rtrim('       sky            ');

-- left(), right(), substrings()
select first_name, 
left(first_name, 4), # Take the first 4 character strating from the left
right(first_name, 4), # Take the first 4 characters starting from the right
substring(first_name, 3, 2), # Take the characters specified by where to start '3' and take the characters specificied '2'
birth_date,
substring(birth_date, 6, 2) as birth_month # An actual use case if you wanted to extract the month from the birthdate
from employee_demographics;

-- replace()
# will replace lowercase 'a' with 'z' 
select first_name, replace(first_name, 'a', 'z')
from employee_demographics
;

-- locate()
select first_name, locate('An', first_name)
from employee_demographics
;

-- concat()
select first_name, last_name, 
concat(first_name, ' ',  last_name) as full_name
from employee_demographics
;