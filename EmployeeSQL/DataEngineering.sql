--Create Relevant Tables for CSV Resources

--Create Departments Table
CREATE TABLE Departments (
	dept_no VARCHAR NOT NULL, 
	dept_name VARCHAR NOT NULL, 
	PRIMARY KEY(dept_no)
)
-- Insert Data
INSERT INTO Departments (dept_no,dept_name)
VALUES ('d001','Marketing'),
('d002','Finance'),
('d003','Human Resources'),
('d004','Production'),
('d005','Development'),
('d006','Quality Management'),
('d007','Sales'),
('d008','Research'),
('d009','Customer Service')
--View Table
Select * From Departments


--Create Department and Employee (Dept_Emp) Table
CREATE TABLE Dept_Emp (
	emp_no VARCHAR NOT NULL, 
	dept_no VARCHAR NOT NULL, 
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
)
-- Insert Data
-- Inserted the data using Import/Export pgAdmin Function
--View Table
Select * From Dept_Emp


--Create Department and Manager (Dept_Manager) Table
CREATE TABLE Dept_Manager (
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
)
-- Insert Data
-- Inserted the data using Import/Export pgAdmin Function
--View Table
Select * From Dept_Manager


--Create Employee Table
CREATE TABLE Employee (
	emp_no VARCHAR NOT NULL,
	emp_title_id VARCHAR(7) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no)
)
-- Insert Data
-- Inserted the data using Import/Export pgAdmin Function
--View Table
Select * From Employee



--Create Salaries Table
CREATE TABLE Salaries (
	emp_no VARCHAR NOT NULL,
	salary VARCHAR NOT NULL,
	PRIMARY KEY(emp_no)
)
-- Insert Data
-- Inserted the data using Import/Export pgAdmin Function
--View Table
Select * From Salaries


--Create Title Table
CREATE TABLE Title (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)
)
-- Insert Data
INSERT INTO Title (title_id,title)
VALUES ('s0001','Staff'),
('s0002','Senior Staff'),
('e0001','Assistant Engineer'),
('e0002','Engineer'),
('e0003','Senior Engineer'),
('e0004','Technique Leader'),
('m0001','Manager')
--View Table
Select * From Title