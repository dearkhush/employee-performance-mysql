-- transaction control examples

-- salary update with commit / rollback

start transaction;

update employees
set salary = salary + 50000
where emp_id = 103;

-- check before committing
SELECT emp_id, emp_name, salary
FROM employees
WHERE emp_id = 103;

-- COMMIT if everything looks correct
-- COMMIT;

-- ROLLBACK if something is wrong
-- ROLLBACK;

