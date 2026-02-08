-- window function queries

--rank employees by salary within each department
select e.emp_name, d.dept_name, e.salary,
  rank() over (partition by d.dept_name order by e.salary desc) salary_rank 
  from employees e join departments d on e.dept_id = d.dept_id;

--find top paid employee in each department
select * from (select emp_name, dept_name, salary,
  rank() over (partition by d.dept_name order by salary desc) as deptSalRank
  from employees e join departments d 
  on d.dept_id = e.dept_id) t 
  where deptSalRank = 1;
