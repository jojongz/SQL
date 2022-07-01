select a.first_name, a.last_name, b.*
from employees a, job_history b
where a.employee_id = b.employee_id
and a.employee_id = 101;

SELECT
    *
FROM employees a, departments b
where a.department_id = b.department_id; 

SELECT a.employee_id, a.department_id, b.department_name, c.location_id, c.city   
FROM employees a, departments b, locations c
where a.department_id = b.department_id
and b.location_id = c.location_id;

SELECT count(*) 조인된건수 
FROM employees a, departments b
where a.department_id = b.department_id;

SELECT count(*)
FROM employees;

SELECT
    *
FROM employees;

SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
where a.department_id = b.department_id(+)
order by a.employee_id;


SELECT a.department_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
where a.department_id(+) = b.department_id
order by a.employee_id;


select a.employee_id, a.first_name, a.last_name, a.manager_id,
    b.first_name||' '||b.last_name manager_name
from employees a, employees b
where a.manager_id = b.employee_id
order by a.employee_id;





