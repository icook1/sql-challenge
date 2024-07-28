--#1 Employee number, last name, first name, sex and salary info for each employee
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
INNER JOIN salaries
on employees.emp_no = salaries.emp_no;

--#2 First name, last name, hire date for employees hired in 1986
Select employees.last_name, employees.first_name, employees.hire_date
from employees
Where employees.hire_date BETWEEN '1986-01-01' and ' 1986-12-31';

--#3 Manager of each department along with department number, department name, employee number, last name, first name.
Select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from ((departments
INNER JOIN dept_manager
	on departments.dept_no = dept_manager.dept_no)
	INNer JOIN employees
	on dept_manager.emp_no = employees.emp_no);

--#4 Department number for each employee with that employee's employee number, last name, first name and department name.
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from ((departments
INNER join dept_emp
on departments.dept_no = dept_emp.dept_no)
INNER Join employees
on dept_emp.emp_no = employees.emp_no);

--#5 First name, last name, and sex of employee's with first name Hercules and last name starts with the letter B.
Select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules' AND employees.last_name LIKe 'B%';

--#6 Employees in the sales department, with employee number, last name and first name.
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from ((departments
INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no)
INNER JOIN employees
on dept_emp.emp_no = employees.emp_no)
where departments.dept_name = 'Sales';

--#7 Each employee in Sales and Development departments, with employee number, last name, first name and department name.
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from ((departments
INNER JOIN dept_emp
on departments.dept_no = dept_emp.dept_no)
INNER JOIN employees
on dept_emp.emp_no = employees.emp_no)
where departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--#8 Frequency counts in descending order of all employee last names.
Select employees.last_name, COUNT(employees.last_name) AS Last_name_count
from employees
group by employees.last_name
order by Last_name_Count DESC;