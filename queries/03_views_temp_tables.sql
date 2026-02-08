-- views and temporary tables 

--views to combine employee, department and performance data
create view emp_performance_view as 
select e.emp_id, e.emp_name, d.dept_name, e.salary, p.rating
from employees e join departments d on e.dept_id = d.dept_id 
join departments d on e.dept_id = d.dept_id
join performance p on e.emp_id = p.emp_id;

-- use the view 
select * from emp_performance_view 
where rating >= 4;


-- temporary table for high salary employees
create temporary table high_salary_employees as 
select emp_id, emp_name, salary
from employees
where salary > 70000;

select * from high_salary_employees;
