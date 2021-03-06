-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e
LEFT JOIN salaries AS s
ON e.emp_no = s.emp_no
ORDER BY salary DESC;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31'
ORDER BY emp_no;

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments as d 
JOIN dept_manager as dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no= e.emp_no
ORDER BY emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no= d.dept_no
ORDER BY emp_no;

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name,e.sex
FROM employees as e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
ORDER BY emp_no;

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'
ORDER BY emp_no;

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS last_name_count 
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;

