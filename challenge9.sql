CREATE TABLE departments
PRIMARY KEY (dept_no),
dept_no VARCHAR NOT NULL, 
dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

CREATE TABLE titles(
PRIMARY KEY (title_id),
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees(
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title) REFERENCES titles(title_id),
emp_no VARCHAR NOT NULL,
emp_title VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL
);

SELECT * FROM employees;

CREATE TABLE dept_emp
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no VARCHAR NOT NULL,
dept_no VARCHAR NOT NULL
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
dept_no VARCHAR,
emp_no VARCHAR
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no VARCHAR NOT NULL,
salary BIGINT NOT NULL
);

SELECT * FROM salaries;




