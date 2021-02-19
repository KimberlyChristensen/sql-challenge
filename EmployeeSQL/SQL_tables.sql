--Create tables 
--Import CSV Files into corresponding tables

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;

create table titles
	(
	title_id varchar(10),
	title varchar,
	PRIMARY KEY (title_id)
	);

create table employees
	(emp_no int,
  	 emp_title varchar(10),
	 birth_date date,
	 first_name varchar,
	 last_name varchar,
	 sex varchar(2),
	 hire_date date,
	 PRIMARY KEY (emp_no),
	 FOREIGN KEY (emp_title) REFERENCES titles(title_id)
	);

create table salaries
	(
	emp_no int,
	salary int,
	PRIMARY KEY (emp_no)
	);

create table departments
	(
  	dept_no varchar(10),
  	dept_name varchar,
	PRIMARY KEY (dept_no)
	);

create table dept_emp
	(
  	emp_no int,
  	dept_no varchar(10),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
	);

create table dept_manager
	(
  	dept_no varchar(10),
  	emp_no int,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
