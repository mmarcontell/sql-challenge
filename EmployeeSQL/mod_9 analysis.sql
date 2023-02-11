SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
	INNER JOIN salaries AS s ON s.emp_no = e.emp_no;
	
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date LIKE '%1986';

SELECT dm.emp_no, dm.dept_no, d.dept_name, e.first_name, e.last_name 
FROM dept_manager as dm
	INNER JOIN departments AS d ON d.dept_no = dm.dept_no
	INNER JOIN employees AS e ON e.emp_no = dm.emp_no;
	
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
	INNER JOIN dept_emp as de ON de.emp_no = e.emp_no
	INNER JOIN departments as d ON d.dept_no = de.dept_no;
	
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
	INNER JOIN dept_emp as de ON de.emp_no = e.emp_no
	INNER JOIN departments as d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
	INNER JOIN dept_emp as de ON de.emp_no = e.emp_no
	INNER JOIN departments as d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT e.last_name, count(e.last_name)
FROM employees as e
GROUP BY e.last_name
ORDER BY count(e.last_name) DESC;
