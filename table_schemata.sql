CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
	);

SELECT * 
FROM titles;


CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(30) REFERENCES titles(title_id),
	birth_date VARCHAR(30),
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	sex VARCHAR(30),
	hire_date VARCHAR(30)
	);
	
SELECT * 
FROM employees;

CREATE TABLE salaries(
	emp_no INT	NOT NULL REFERENCES employees(emp_no),
	salary INT NOT NULL
	);
	
SELECT * 
FROM salaries;

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(100)
	);
	
SELECT *
FROM departments;

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL REFERENCES departments(dept_no),
	emp_no INT NOT NULL REFERENCES employees(emp_no)
	);
	
SELECT *
FROM dept_manager;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	dept_no VARCHAR(30) NOT NULL REFERENCES departments(dept_no)
	);
	
SELECT *
FROM dept_emp;