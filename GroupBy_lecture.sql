use employees;

# next two queries do the same thing:
SELECT first_name
FROM employees
GROUP BY first_name;

SELECT DISTINCT first_name
FROM employees
ORDER BY first_name;

#counts no. of people hired on each date returned:
SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY hire_date ASC
LIMIT 10;