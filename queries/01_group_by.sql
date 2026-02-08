-- group by queriees on employee performance data

--average salary per department
select  d.dept_name, avg(e.salary) avg_salary
  from employees e join departments d
  on e.dept_id = d.dept_id
  group by d.dept_name;

--number of employees in each department
select d.dept_name, count(e.emp_id) emp_count
  from employees e join departments d 
  on e.dept_id = d.dept_id
  group by d.dept_name;

--departments having average salary greater than 65000
select d.dept_name, avg(e.salary) avg_salary 
  from employees e join departments d 
  on e.dept_id = d.dept_id 
  group by d.dept_name 
  having avg(salary) > 65000;
