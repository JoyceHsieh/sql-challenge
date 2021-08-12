-- import departments data to table
copy departments from 'data/departments.csv'
with (format csv, header);

-- import department employee data to table
copy dept_emp from 'Users/chiachinghsieh/Desktop/UCIBootCamp/Course/SQL_HW/data/dept_emp.csv'
with (format csv, header);

-- import department manager data to table
copy dept_manager from '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/SQL_HW/data/dept_manager.csv'
with (format csv, header);

-- import employees data to table
copy employees from '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/SQL_HW/data/employees.csv'
with (format csv, header);

-- import salaries data to table
copy salaries from '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/SQL_HW/data/salaries.csv'
with (format csv, header);

-- import titles to table
copy titles from '/Users/chiachinghsieh/Desktop/UCIBootCamp/Course/SQL_HW/data/titles.csv'
with (format csv, header);