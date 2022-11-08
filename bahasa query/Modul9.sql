select last_name from employees where salary > (select salary from employees where last_name = 'Abel');
select last_name from employees where salary > 11000;
select salary from employees where last_name = 'Abel';

select last_name, job_id from employees where job_id = (select job_id from employees where employee_id = 141);

select last_name, job_id, salary from employees where job_id = (select job_id from employees where employee_id = 141) and salary > (select salary from employees where employee_id =143);

select last_name, job_id, salary from employees where salary = (select min(salary) from employees);

select department_id, min(salary) from employees group by department_id having min(salary) > (select min(salary) from employees where department_id = 50);

select job_id, avg(salary) from employees group by job_id having avg(salary) = (select min(avg(salary)) from employees group by job_id);

select employee_id, last_name from employees where salary in (select min(salary) from employees group by department_id); 

select last_name, job_id from employees where job_id = (select job_id from employees where last_name = 'Haas');

select last_name, salary, department_id from employees where salary in (select min(salary) from employees group by department_id);

select employee_id, last_name, job_id, salary from employees where salary < any(select salary from employees where job_id = 'IT_PROG') and job_id <> 'IT_PROG';
SELECT salary
FROM employees
WHERE job_id = 'IT_PROG';

--1
select department_id, hire_date from employees where last_name = 'Zlotkey';
select last_name, hire_date from employees where department_id = (select department_id from employees where last_name = 'Zlotkey') and last_name != 'Zlotkey';
select last_name, hire_date from employees where department_id = 80 and hire_date < '29-JAN-00';

--2
SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING max(salary) > 10000;
select avg(salary) from employees;
select employee_id, last_name, salary from employees where salary > (select avg(salary) from employees) order by salary;

--3
select employee_id, last_name from employees where employee_id in (select employee_id from employees where last_name like '%u%');

--4
select last_name, department_id, job_id from employees natural join departments where location_id = 1700;