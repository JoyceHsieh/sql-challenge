-- create titles table
-- set combination of emp_no & from_date as primary key (some emp_no have multiple titles)
-- DROP TABLE IF EXISTS titles cascade;
CREATE TABLE titles (
    title_id varchar(10) NOT NULL primary key,
    title varchar(100) NOT NULL);


-- create employees table
-- DROP TABLE IF EXISTS employees cascade;
CREATE TABLE employees (
    emp_no int NOT NULL primary key,
	emp_title_id varchar(10) NOT NULL,
	foreign key(emp_title_id) references titles(title_id),
    birth_date date NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(10) NOT NULL,
    hire_date date NOT NULL);
	
-- create salaries table
-- DROP TABLE IF EXISTS salaries cascade;
CREATE TABLE salaries (
    emp_no int NOT NULL primary key,
	foreign key(emp_no) references employees(emp_no),
    salary int NOT NULL);


-- create departments table
-- DROP TABLE IF EXISTS departments cascade;
CREATE TABLE departments (
    dept_no varchar(10) NOT NULL primary key,
    dept_name varchar(30) NOT NULL);
	
-- create department employee table
-- set combination of emp_no & dept_no as primary key (emp_no has a duplicates value)
-- DROP TABLE IF EXISTS dept_emp cascade;
CREATE TABLE dept_emp (
    emp_no int NOT NULL,
	foreign key(emp_no) references employees(emp_no),
    dept_no varchar(4) NOT NULL,
	foreign key(dept_no) references departments(dept_no));
	
	
-- create department manager table
-- DROP TABLE IF EXISTS dept_manager cascade;
CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
    foreign key(dept_no) references departments(dept_no),
    emp_no int NOT NULL primary key,
	foreign key(emp_no) references employees(emp_no));