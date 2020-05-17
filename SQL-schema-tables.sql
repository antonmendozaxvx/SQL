CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
	);
	
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
	);
	
CREATE TABLE dept_managers (
	dept_no VARCHAR,
	emp_no INT
	);
	
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date date,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date date
	);
	
CREATE TABLE salaries (
	emp_no INT,
	salary INT
	);
	
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
	);
	
	
	SELECT * FROM departments;