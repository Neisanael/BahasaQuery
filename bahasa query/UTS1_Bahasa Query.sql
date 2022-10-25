--1
SELECT
    employee_id,
    first_name,
    last_name,
    phone_number,
    salary
FROM
    employees
WHERE
    ( salary BETWEEN 10000 AND 15000 )
    AND employee_id > 105;

--2

SELECT
    first_name
    || ' '
    || last_name AS "NAMA KARYAWAN",
    salary AS "GAJI LAMA",
    salary * ( 10 / 100 ) + salary AS "GAJI BARU"
FROM
    employees;

--3

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '01-JAN-1997' AND '31-DEC-2001'
ORDER BY
    hire_date DESC;

--4

SELECT
    first_name,
    job_id,
    lpad(salary * 12, 10, '$')
FROM
    employees
WHERE
    job_id LIKE '%MAN'
    AND salary > 10000;

--5

SELECT DISTINCT
    first_name,
    phone_number,
    job_id
FROM
    employees
WHERE
    phone_number LIKE '51%'
    AND job_id != 'AD_VP'
    OR job_id != 'AC_MGR'
ORDER BY
    first_name;

--6

SELECT
    upper(first_name),
    lower(last_name),
    manager_id,
    hire_date,
    round((sysdate - hire_date) / 7)
FROM
    employees
WHERE
    manager_id IN (
        '102',
        '103',
        '108'
    );

--7

SELECT
    round((sysdate - hire_date) / 360),
    employee_id,
    CASE
        WHEN round((sysdate - hire_date) / 360) BETWEEN 1 AND 5 THEN
            salary * ( 10 / 100 ) + salary
        WHEN round((sysdate - hire_date) / 360) BETWEEN 5 AND 10 THEN
            salary * ( 12.5 / 100 ) + salary
        WHEN round((sysdate - hire_date) / 360) BETWEEN 10 AND 20 THEN
            salary * ( 18 / 100 ) + salary
        WHEN round((sysdate - hire_date) / 360) > 20        THEN
            salary * ( 22 / 100 ) + salary
        ELSE
            salary
    END
FROM
    employees;
--8

SELECT
    last_name,
    job_id,
    salary,
    decode(job_id, 'AD_PRESS', salary *(12 / 100) + salary, 'ST_MAN', salary *(14 / 100) + salary,
           'IT_PROG', salary *(4 / 100) + salary, 'SA_REP', salary *(7.5 / 100) + salary, salary *(2 / 100) + salary) AS "GAJI TAMBAHAN"
FROM
    employees
ORDER BY
    hire_date ASC,
    first_name DESC;