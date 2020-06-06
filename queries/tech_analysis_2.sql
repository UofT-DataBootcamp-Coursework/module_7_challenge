-- Technical Analysis Deliverable 2: Mentorship Eligibility

-- Create new table for current employees close who qualify to act as a mentor
SELECT 	e.emp_no, 
		e.first_name,
		e.last_name,
		d.to_date
INTO mentorship_eligibility
FROM employees AS e 
INNER JOIN dep_employees AS d 
ON (e.emp_no = d.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (d.to_date = ('9999-01-01'))
;

-- Review mentorship_eligibility
SELECT * FROM mentorship_eligibility;

-- Joining mentorship_eligibility and titles tables
SELECT 	me.emp_no,
		me.first_name,
		me.last_name,
		titles.title,
		titles.from_date,
		titles.to_date
INTO mentorship_eligibility_with_titles
FROM mentorship_eligibility AS me
INNER JOIN titles 
ON me.emp_no = titles.emp_no
;

-- Review new table <- duplicates noted due to title change throughout employment
SELECT * FROM mentorship_eligibility_with_titles;

-- Partition the data to show only most recent title per employee eligible to be mentor
SELECT 	emp_no, 
		first_name,
		last_name,
		title,
		from_date,
		to_date
INTO mentorship_eligibility_current_title
FROM 
(SELECT	emp_no, 
		first_name,
		last_name,
		title,
		from_date,
		to_date, ROW_NUMBER() OVER
 	(PARTITION BY (emp_no)
 	ORDER BY from_date DESC) rn
	FROM mentorship_eligibility_with_titles
	) tmp WHERE rn = 1
ORDER BY emp_no
;

SELECT * FROM mentorship_eligibility_current_title;

-- Total possible mentors by title
SELECT	title AS job_title, 
		count(title) AS possible_mentors
FROM mentorship_eligibility_current_title 
GROUP BY title
ORDER BY title
;

-- Total possible mentors
SELECT count(*) AS mentorship_eligibility_current_title
FROM mentorship_eligibility_current_title
;