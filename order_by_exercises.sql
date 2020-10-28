use employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena' , 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name DESC, first_name ASC;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

SELECT DISTINCT *
FROM employees
WHERE last_name LIKE '%q%'
ORDER BY last_name;