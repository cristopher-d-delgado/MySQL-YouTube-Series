-- Triggers and Events
DELIMITER $$ 
CREATE TRIGGER employee_insert 
	-- When new info is added into employee salary table this happens
	AFTER INSERT ON employee_salary 
	FOR EACH ROW 
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
	VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

-- Insert someone 
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);

-- Check the trigger to see if they were added into employee demographics
SELECT * 
FROM employee_demographics;


-- EVENTS 
-- An event takes place when its scheduled 
-- Lets say we want to retire anyone over the age of 60 
SELECT * 
FROM employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	SELECT * 
    FROM employee_demographics
    WHERE age >= 60; 
END $$
DELIMITER ; 