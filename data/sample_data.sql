-- sample data for employee performance database

INSERT INTO departments VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Sales');

INSERT INTO employees VALUES
(101, 'Amit', 1, 80000, '2020-05-10', NULL),
(102, 'Neha', 1, 95000, '2019-03-15', 101),
(103, 'Rahul', 2, 50000, '2021-01-20', NULL),
(104, 'Priya', 3, 60000, '2020-07-11', 105),
(105, 'Karan', 3, 70000, '2018-09-01', NULL);

INSERT INTO performance VALUES
(101, 2023, 4),
(102, 2023, 5),
(103, 2023, 3),
(104, 2023, 4),
(105, 2023, 5);
