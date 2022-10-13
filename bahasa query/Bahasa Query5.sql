SELECT
    employees.employee_id,
    employees.last_name,
    employees.department_id,
    departments.department_name
FROM
    employees,
    departments
WHERE
    employees.department_id = departments.department_id;

SELECT
    employees.last_name,
    employees.department_id,
    departments.department_name
FROM
    employees,
    departments
WHERE
        employees.department_id = departments.department_id
    AND employees.last_name = 'Matos';

SELECT
    e.employee_id,
    e.last_name,
    e.department_id,
    d.department_id,
    d.location_id
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id;

SELECT
    e.last_name,
    d.department_name,
    l.city
FROM
    employees   e,
    departments d,
    locations   l
WHERE
        e.department_id = d.department_id
    AND d.location_id = l.location_id;

SELECT
    e.last_name,
    e.department_id,
    d.department_name
FROM
         employees e
    INNER JOIN departments d ON e.department_id = d.department_id;

SELECT
    e.last_name,
    e.department_id,
    d.department_name
FROM
    employees   e
    LEFT OUTER JOIN departments d ON ( e.department_id = d.department_id );

SELECT
    e.last_name,
    e.department_id,
    d.department_name
FROM
    employees   e
    RIGHT OUTER JOIN departments d ON ( e.department_id = d.department_id );

SELECT
    e.last_name,
    d.department_id,
    d.department_name
FROM
    employees   e
    FULL OUTER JOIN departments d ON ( e.department_id = d.department_id );

SELECT
    worker.last_name
    || ' memiliki manager '
    || manager.last_name
FROM
    employees worker,
    employees manager
WHERE
    worker.manager_id = manager.employee_id;
    
    
--1
SELECT
    locations.location_id,
    locations.street_address,
    locations.city,
    locations.state_province,
    countries.country_name
FROM
    locations,
    countries
WHERE
    locations.country_id = countries.country_id;

--2
SELECT
    employees.last_name,
    departments.department_id,
    departments.department_name
FROM
    employees,
    departments
WHERE
        employees.department_id = departments.department_id
    AND departments.department_name = 'Shipping';

--3
SELECT
    e.last_name,
    e.job_id,
    d.department_id,
    d.department_name
FROM
         employees e
    INNER JOIN departments d ON e.department_id = d.department_id
    INNER JOIN locations   l ON d.location_id = l.location_id
WHERE
    l.city = 'Toronto';
    
--4
SELECT
    worker.last_name,
    worker.employee_id,
    manager.last_name,
    manager.manager_id
FROM
    employees worker,
    employees manager
WHERE
    worker.manager_id = manager.employee_id;
  
--5
select 