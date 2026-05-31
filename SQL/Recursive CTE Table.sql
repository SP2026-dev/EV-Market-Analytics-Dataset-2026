CREATE TABLE ev_employees
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    designation VARCHAR(50),
    manager_id INT,
    department VARCHAR(50),
    annual_sales_units INT
);

INSERT INTO ev_employees(emp_id, emp_name, designation, manager_id, department, annual_sales_units) VALUES
(1, 'Elon', 'CEO', NULL, 'Management', 0),
(2, 'Robert', 'Sales Director', 1, 'Sales', 900000),
(3, 'Sophia', 'Operations Director', 1, 'Operations', 750000),
(4, 'Daniel', 'Sales Manager', 2, 'Sales', 500000),
(5, 'Emma', 'Regional Sales Manager', 2, 'Sales', 450000),
(6, 'Chris', 'Operations Manager', 3, 'Operations', 300000),
(7, 'Kevin', 'Sales Executive', 4, 'Sales', 200000),
(8, 'Ryan', 'Sales Executive', 4, 'Sales', 180000),
(9, 'Olivia', 'Area Sales Executive', 5, 'Sales', 160000),
(10, 'Mia', 'Operations Executive', 6, 'Operations', 120000);

SELECT * FROM ev_employees;