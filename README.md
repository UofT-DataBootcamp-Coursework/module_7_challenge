# Module 7 Challenge - Pewlett Hackard

## Challenge Overview

1.  Delivering Results: A README.md in the form of a technical report that details your analysis and findings

2.  Technical Analysis Deliverable 1: Number of Retiring Employees by Title. 
- A table containing the number of employees who are about to retire, grouped by job title (and the CSV containing the data)

3.  Technical Analysis Deliverable 2: Mentorship Eligibility. 
- A table containing employees who are eligible for the mentorship program (and the CSV containing the data)

## Resources

[Data Sources](data)

Software: PostgreSQL, pgAdmin 4

## Challenge Summary

### 1. Technical Report

**Overview

The manager would like to know how many roles will need to be filled as the “silver tsunami” begins to make an impact at Pewlett Hackard (technical analysis #1). They would also like to identify retirement-ready employees who qualify to mentor the next generation of Pewlett Hackard employees (technical analysis #2). 

**Analysis Performed

In your second paragraph, summarize the steps that you took to solve the problem, as well as the challenges that you encountered along the way. This is an excellent spot to provide examples and descriptions of the code that you used.

**In order to fulfill technical analysis #1, TO BE COMPLETED <-------

 
**In order to fulfill technical analysis #2, TO BE COMPLETED (UPDATE QUERY TO INCLUDE PARTITION) <-------


**Results, limitations, and next steps

Per technical analysis #1, there will be 33,118 employees approaching retirement. Senior Engineers (13,651) and Senior Staff (12,872) combined comprise 80% of the total employees approaching retirement, while Engineer (8%), Staff (6%), Technique Leader (5%), and Assistant Engineer (1%) make up the difference. Only 2 Managers meet the criteria for employees approaching retirement, which should not be a concern to fill as there appears to be ample availability among current employees for a potential promotion.

One limitation noted within technical analysis #1 is that location of these employees aren't known (assumption: there are multiple company locations across the country). Further analysis over their specific locations would be helpful to better understand which locations will be impacted the most by the "silver tsunami".

Per technical analysis #2, there will be 1,549 employees eligible to be a part of the mentorship program. Senior Staff (569) and Senior Engineer (529) combined comprise over 70% of eligible employees, while Engineer (12%), Staff (10%), Technique Leader (5%), and Assistant Engineer (2%) make up the difference. It is interesting to note that no Managers met the criteria (born in 1965, currently employed), a potential issue if the mentorship program were to extend to Managers as well. Recommend to expand the criteria to capture a larger pool of applicants.

One limitation noted within technical analysis #2 is that no gender, ethnic/race, or ability information is presented. When setting up a mentorship program, it would be advised to ensure your pool of mentors are as diverse as the community they are serving (assumption: not everyone can be a mentor; application-based program). 

**INCLUDE INFO FOR EMPLOYEES BEING HIRED <-------

Entity Relationship Diagram - Pewlett Hackard

![](images/PW_ERD.png)

[ERD Script](queries/ERD_script.txt)

### 2. Technical Analysis Deliverable #1 - Number of Retiring Employees by Title

![](images/about_to_retire.PNG)

[Technical Analysis Deliverable 1 - sql file](queries/tech_analysis_1.sql)

[Technical Analysis Deliverable 1a - csv file (totals by title)](data/technical_analysis_deliverable_1_totals_by_title.csv)

[Technical Analysis Deliverable 1b - csv file (full data)](data/technical_analysis_deliverable_1.csv)

### 3. Technical Analysis Deliverable #2 - Mentorship Eligibility

[Technical Analysis Deliverable 2 - sql file](queries/tech_analysis_2.sql)

[Technical Analysis Deliverable 2 - csv file](data/technical_analysis_deliverable_2.csv)

## Report completed by:
![](images/sal.PNG)
