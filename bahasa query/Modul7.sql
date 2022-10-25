SELECT department_id, department_name, location_id, city
FROM departments
NATURAL JOIN locations;

SELECT department_id, department_name, location_id, city
FROM departments
NATURAL JOIN locations
WHERE department_id IN (20,50);

SELECT employees.employee_id, employees.last_name,
departments.location_id, department_id
FROM employees JOIN departments
USING (department_id);

SELECT l.city, d.department_name
FROM locations l JOIN departments d USING (location_id)
WHERE location_id = 1400;

SELECT l.city, d.department_name
FROM locations l JOIN departments d USING (location_id)
WHERE d.location_id = 1400;

SELECT e.employee_id, e.last_name,
d.location_id, department_id
FROM employees e JOIN departments d
USING (department_id);

SELECT employee_id, city, department_name
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id;

select e.employee_id, l.city, d.department_id from employees e, departments d, locations l where d.department_id=e.department_id and d.location_id = l.location_id;

select d.department_id, d.department_name, l.location_id, l.city from departments d inner join locations l on l.location_id = d.location_id;

--1
select location_id, street_address, city, state_province, country_name from locations natural join countries;

--2b
select e.last_name, d.department_id, d.department_name from employees e join departments d on e.department_id = d.department_id;
--2a
select e.last_name, department_id, d.department_name from employees e join departments d using (department_id);

--3a
select e.last_name, e.job_id, d.department_id, d.department_name from locations l ,departments d ,employees e where d.department_id=e.department_id and d.location_id=l.location_id;
--3b
select e.last_name, e.job_id, department_id, d.department_name from locations l join departments d using (location_id )join employees e using (department_id) where city like 'Toronto';
--3c
select e.last_name, e.job_id, d.department_id, d.department_name from locations l join departments d on l.location_id = d.location_id join employees e on d.department_id = e.department_id where l.city like 'Toronto';

--4
SELECT e.last_name emp,e.employee_id, m.last_name mgr, m.manager_id
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id) 
order by m.last_name;