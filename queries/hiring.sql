SELECT count(*) FROM employees;

SELECT * FROM employees;

SELECT * FROM employees
ORDER BY hire_date;

SELECT * FROM employees
ORDER BY hire_date desc;

SELECT * FROM titles;

SELECT * FROM titles
ORDER BY to_date;

SELECT * FROM titles
WHERE to_date != '9999-01-01'
ORDER BY to_date desc;

SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name, 
		d.to_date
INTO hiring
FROM employees AS e
LEFT JOIN dep_employees AS d
ON e.emp_no = d.emp_no
Where d.to_date = ('9999-01-01')
;

SELECT * FROM hiring
ORDER BY emp_no;

SELECT count(*) FROM hiring;