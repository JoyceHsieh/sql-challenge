-- import departments data to table
copy public.departments (dept_no, dept_name) 
FROM '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/sql-challenge/data/departments.csv' 
DELIMITER ',' CSV HEADER HEADER QUOTE '\"' ESCAPE '''';



-- import department employee data to table
copy public.dept_emp (emp_no, dept_no) 
FROM '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/sql-challenge/data/dept_emp.csv' 
DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';

-- import department manager data to table
copy public.dept_manager (dept_no, emp_no) 
FROM '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/sql-challenge/data/dept_manager.csv' 
DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';

-- import employees data to table
copy public.employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) 
FROM '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/sql-challenge/data/employees.csv' 
DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';


-- import salaries data to table
copy public.salaries (emp_no, salary) 
FROM '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/sql-challenge/data/salaries.csv' 
DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';

-- import titles to table
copy public.titles (title_id, title) 
FROM '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/sql-challenge/data/titles.csv' 
DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';