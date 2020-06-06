-- Technical Analysis Deliverable 1: Number of Retiring Employees by Title

-- Create new table for current employees close to retirement
SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name, 
		d.to_date
INTO current_retire_ready
FROM employees AS e
LEFT JOIN dep_employees AS d
ON e.emp_no = d.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (d.to_date = ('9999-01-01'))
;

-- Review current_retire_ready table (comprised of current employees close to retirement age)
SELECT * FROM current_retire_ready;

-- Joining current_retire_ready and titles and salaries tables
SELECT 	crr.emp_no,
		crr.first_name,
		crr.last_name,
		titles.title,
		titles.from_date,
		salaries.salary
INTO retiring_employees_by_title
FROM current_retire_ready AS crr
INNER JOIN titles 
ON crr.emp_no = titles.emp_no
INNER JOIN salaries
ON crr.emp_no = salaries.emp_no
;

-- Review new table <- duplicates noted due to title change throughout employment
SELECT * FROM retiring_employees_by_title;

-- Partition the data to show only most recent title per employee
SELECT 	emp_no,
		first_name,
		last_name,
		title,
		from_date,
		salary
INTO retiring_employees_by_recent_title
FROM 
(SELECT	emp_no,
	first_name,
	last_name,
	title,
	from_date,
	salary, ROW_NUMBER() OVER
 	(PARTITION BY (emp_no)
 	ORDER BY from_date DESC) rn
	FROM retiring_employees_by_title
	) tmp WHERE rn = 1
ORDER BY emp_no
;

-- Review new table
SELECT * FROM retiring_employees_by_recent_title;

-- Number of current employees who are about to retire, grouped by job title
SELECT 	ta1.title AS job_title, 
		count(ta1.title) AS about_to_retire
INTO total_retire_by_title
FROM retiring_employees_by_recent_title as ta1
GROUP BY ta1.title
ORDER BY ta1.title
;

-- Review new table
SELECT * FROM total_retire_by_title;