USE employees;

SELECT CONCAT('1', '2', '3'); --concatenates strings
SELECT NOW(); --returns current time (at run time)
SELECT CURRENT_DATE(); --returns current date
SELECT UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP('1968-11-08 07:00:00');

SELECT CEILING(505.505);
SELECT FLOOR(505.505);
SELECT ROUND(505.505);
SELECT ROUND(505.405);

SELECT PI();

SELECT MIN(salary)
FROM salaries
WHERE to_date > CURRENT_DATE();
