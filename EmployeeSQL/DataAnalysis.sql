--Q1)List the employee number, last name, first name, sex, and salary of each employee
	SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Employee.sex, Salaries.salary
	FROM Employee
	JOIN Salaries
		ON Employee.emp_no = Salaries.emp_no;

--Q2)List the first name, last name, and hire date for the employees who were hired in 1986
	SELECT Employee.first_name, Employee.last_name, Employee.hire_date
	FROM Employee
	WHERE EXTRACT (Year from hire_date) = 1986;
	
--Q3)List the manager of each department along with their department number, department name, employee number, last name, and first name
	SELECT Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employee.last_name, Employee.first_name
	FROM Employee
	INNER JOIN Dept_Manager
		ON Employee.emp_no = Dept_Manager.emp_no
	INNER JOIN Departments
		ON Dept_Manager.dept_no = Departments.dept_no;
	
--Q4)List the department number for each employee along with that employee’s employee number, last name, first name, and department name
	SELECT Dept_Emp.dept_no, Dept_Emp.emp_no, Employee.last_name, Employee.first_name, Departments.dept_name 
	FROM Employee
	INNER JOIN Dept_Emp
		ON Employee.emp_no = Dept_Emp.emp_no
	INNER JOIN Departments
		ON Dept_Emp.dept_no = Departments.dept_no;
		
--Q5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
	SELECT Employee.first_name, Employee.last_name, Employee.sex
	FROM Employee
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Q6)List each employee in the Sales department, including their employee number, last name, and first name
	SELECT Dept_Emp.emp_no, Employee.last_name, Employee.first_name
	FROM Employee
	INNER JOIN Dept_Emp
		ON Employee.emp_no = Dept_Emp.emp_no
		WHERE Dept_Emp.dept_no = 'd007';
		
--Q7)List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
	SELECT Dept_Emp.emp_no, Employee.last_name, Employee.first_name, Departments.dept_name 
	FROM Employee
	INNER JOIN Dept_Emp
		ON Employee.emp_no = Dept_Emp.emp_no
	INNER JOIN Departments
		ON Dept_Emp.dept_no = Departments.dept_no
		WHERE Departments.dept_no = 'd007' or Departments.dept_no = 'd005';
		
--Q8)List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
	SELECT last_name, 
	COUNT(last_name) AS "Count"
	FROM Employee
	Group BY last_name
	ORDER BY "Count" DESC;
