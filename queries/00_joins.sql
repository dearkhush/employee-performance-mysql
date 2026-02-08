-- join queries on employees performance database

--inner join: employee with department and performance

select e.emp_id, e.emp_name, d.dept_name, e.salary, p.rating
from employees e
join departments d ON e.dept_id = d.dept_id
join performance p ON e.emp_id = p.emp_id;

--left join: show all employees even if employees performance is missing

select e.emp_id, e.emp_name, d.dept_name, p.rating
from employees e
left join performance p ON e.emp_id = p.emp_id
join departments d ON e.dept_id = d.dept_id; 
