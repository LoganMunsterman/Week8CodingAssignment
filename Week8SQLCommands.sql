SELECT t.title,
COUNT(t.title) AS numberWithTitle
	FROM employees e
INNER JOIN titles t
	ON e.emp_no = t.emp_no
WHERE e.birth_date > '1965-01-01'
	AND t.to_date = '9999-01-01'
GROUP BY t.title;

SELECT t.title,
AVG(s.salary) AS AverageSalary
FROM salaries s
INNER JOIN titles t
ON s.emp_no = t.emp_no
WHERE s.to_date = '9999-01-01'
GROUP BY t.title;

SELECT sum(s.salary) AS TwoYearSalaryCost, de.dept_name AS Department
FROM salaries s 
INNER JOIN dept_emp d 
	ON d.emp_no = s.emp_no 
INNER JOIN departments de 
	ON de.dept_no = d.dept_no 
WHERE dept_name = "Marketing"
	AND d.from_date >= '1990-01-01' 
	AND d.to_date <= '1992-12-31'
GROUP BY de.dept_name;