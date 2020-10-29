USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
order by dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
 JOIN dept_manager as dm
      ON dm.emp_no = e.emp_no
 JOIN departments as d
      ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
order by dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
FROM employees as e
 JOIN dept_manager as dm
      ON dm.emp_no = e.emp_no
 JOIN departments as d
      ON d.dept_no = dm.dept_no
 JOIN salaries s
      ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
order by dept_name;

