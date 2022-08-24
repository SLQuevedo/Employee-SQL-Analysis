--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;

--List first name, last name, and hire date  
--for employees who were hired in 1986.
SELECT employees.last_name,
employees.first_name,
employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)= 1986
ORDER BY last_name;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT employees.last_name,
employees.first_name,
dept_manager.emp_no,
dept_manager.dept_no,
departments.dept_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;

--5. List first name, last name, and sex 
--for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT employees.first_name, 
employees.last_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, 
--and department name.
SELECT employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name,
dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.first_name,
employees.last_name,
employees.emp_no,
departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.
SELECT last_name, 
COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
