-- SQL for analysis portion

select * from "Salaries" limit 100;
select * from "Titles" limit 100;
select * from department_employees limit 100;
select * from department_manager limit 100;
select * from departments limit 100;
select * from employees limit 100;

-- Data Analysis Query 1:

select e.emp_n, e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join "Salaries" as s on
	e.emp_n = s.emp_no;
	
-- Data Analysis Query 2:

select first_name, last_name, hire_date
from employees
where hire_date >= '1/1/1986' and hire_date <= '12/31/1986';

-- Data Analysis Query 3:

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from department_manager as dm
left join departments as d on dm.dept_no = d.dept_no
left join employees as e on e.emp_n = dm.emp_no;
	