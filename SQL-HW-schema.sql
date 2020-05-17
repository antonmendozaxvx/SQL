-- 1. List employee number, last name, first name, sex, and salary

SELECT e.emp_no AS "Employee Number", 
	e.last_name AS "Last Name", 
	e.first_name AS "First Name", 
	e.sex AS "Sex", 
	s.salary AS "Salary"
	FROM employees e
	LEFT JOIN salaries s ON e.emp_no = s.emp_no;
	
-- 2. List first name, last name, hire date for employees hired after 1986

SELECT e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.hire_date AS "Hire Date",
	EXTRACT (YEAR FROM hire_date) AS YEAR
FROM employees e
WHERE hire_date > '12/31/1985';

-- 3. List manager of each department with: dept. number, department name, manager employee number, last name, first name

SELECT d.dept_no AS "Department Number",
	d.dept_name AS "Department Title",
	dm.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name"
	FROM departments d
	LEFT JOIN dept_managers dm ON d.dept_no = dm.dept_no
	LEFT JOIN employees e ON dm.emp_no = e.emp_no
	ORDER BY "Department Number" ASC;
	

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name

SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
	FROM employees e
	LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
	LEFT JOIN departments d ON de.dept_no = d.dept_no
	ORDER BY "Employee Number" ASC;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.sex AS "Sex"
	FROM employees e
	WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
	FROM employees e
	LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
	LEFT JOIN departments d ON de.dept_no = d.dept_no WHERE d.dept_name = 'Sales'
	ORDER BY "Employee Number" ASC;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.	

SELECT e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
	FROM employees e
	LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
	LEFT JOIN departments d ON de.dept_no = d.dept_no WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
	ORDER BY "Employee Number" ASC;
	


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name) as name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;


-- Epilogue "Search your ID Number" 499942
SELECT e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.emp_no AS "Employee Number"
	FROM employees e
	WHERE e.emp_no = '499942';