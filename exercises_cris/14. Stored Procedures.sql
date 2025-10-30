-- Stored Procedures 
DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT * 
	FROM employee_salary 
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary 
	WHERE salary >= 10000;
END $$
DELIMITER ; 

CALL large_salaries4();