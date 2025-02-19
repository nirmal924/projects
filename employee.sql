-- Create the employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10, 2)
);
-- Create the department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert sample data
INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');
INSERT INTO Employee (emp_id, emp_name, dept_id, salary) VALUES
(101, 'John Doe', 1, 50000),
(102, 'Jane Smith', 2, 60000),
(103, 'James Brown', 3, 55000);
-- Select employee data along with department info
SELECT e.emp_name, e.salary, d.dept_name
FROM Employee e
INNER JOIN Department d ON e.dept_id = d.dept_id;

