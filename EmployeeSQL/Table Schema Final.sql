Create table titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	primary key (title_id)
);

create table employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

Create table departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	Primary Key (dept_no)
);

Create table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	Foreign Key (emp_no) References employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);

Create Table dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);

Create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no)
);

