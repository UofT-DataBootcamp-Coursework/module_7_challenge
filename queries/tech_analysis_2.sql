-- Technical Analysis Deliverable 2: Mentorship Eligibility

-- Joining employees and titles tables
SELECT e.emp_no, e.first_name, e.last_name, titles.title, titles.from_date, titles.to_date
INTO mentorship_eligibility
FROM employees as e 
INNER JOIN titles 
ON (e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (titles.to_date = '9999-01-01')
;

SELECT * FROM mentorship_eligibility;