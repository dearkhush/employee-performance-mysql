-- employee performance database schema

CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT,
    salary INT,
    join_date DATE,
    manager_id INT,
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE performance(
    emp_id INT,
    review_year INT,
    rating INT,
    FOREIGN KEY(emp_id) REFERENCES employees(emp_id)
);
