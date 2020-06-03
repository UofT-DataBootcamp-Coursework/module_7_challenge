-- Technical Analysis Deliverable 2: Mentorship Eligibility



--sample below
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary, de.to_date
INTO emp_info
FROM employees as e 
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dep_employees as de
on (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	AND (de.to_date = '9999-01-01')
;