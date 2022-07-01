SELECT 
    * 
FROM employees
ORDER BY commission_pct;

SELECT 
    salary * commission_pct 
FROM employees
ORDER BY commission_pct;

SELECT 
    salary * NVL(commission_pct,1) 
FROM employees
ORDER BY commission_pct;

SELECT
    first_name, last_name,
    department_id, salary 원래급여,
    DECODE(department_id, 60, salary*1.1, salary) 조정된급여,
    DECODE(department_id, 60, '10%인상', '미인상') 인상급여 
FROM employees;

SELECT
    employee_id, first_name, last_name, salary,
    CASE   
        WHEN salary > = 9000 then '상위급여'
        WHEN salary BETWEEN 6000 and 8999 THEN '중위급여'
        ELSE '하위급여'
    END AS 급여등급
FROM employees
WHERE job_id = 'IT_PROG';

select
    employee_id, salary, 
rank() over(order by salary desc) RANK급여,
dense_rank() over(order by salary desc) dense_RANK_급여,
row_number() over(order by salary desc) row_number_급여
from employees;

SELECT
    a.employee_id,
    a.department_id,
    b.department_name,
    salary,
    rank() over(partition by a.department_id order by salary desc) RANK급여,
    dense_rank() over(partition by a.department_id order by salary desc) dense_rank급여,
    row_number() over(partition by a.department_id order by salary desc) row_number급여

FROM employees A, departments B
where a.department_id = b.department_id
order by b.department_id, a.salary desc;





