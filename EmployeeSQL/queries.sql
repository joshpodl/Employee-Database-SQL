-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM salaries
INNER JOIN employees ON employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986
SELECT employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986;

-- List the manager of each department with department number, department name, manager's employee number, last name, first name
SELECT dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
LEFT JOIN employees ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT employees.first_name,
employees.last_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
