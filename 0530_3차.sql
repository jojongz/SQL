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
    department_id, salary �����޿�,
    DECODE(department_id, 60, salary*1.1, salary) �����ȱ޿�,
    DECODE(department_id, 60, '10%�λ�', '���λ�') �λ�޿� 
FROM employees;

SELECT
    employee_id, first_name, last_name, salary,
    CASE   
        WHEN salary > = 9000 then '�����޿�'
        WHEN salary BETWEEN 6000 and 8999 THEN '�����޿�'
        ELSE '�����޿�'
    END AS �޿����
FROM employees
WHERE job_id = 'IT_PROG';

select
    employee_id, salary, 
rank() over(order by salary desc) RANK�޿�,
dense_rank() over(order by salary desc) dense_RANK_�޿�,
row_number() over(order by salary desc) row_number_�޿�
from employees;

SELECT
    a.employee_id,
    a.department_id,
    b.department_name,
    salary,
    rank() over(partition by a.department_id order by salary desc) RANK�޿�,
    dense_rank() over(partition by a.department_id order by salary desc) dense_rank�޿�,
    row_number() over(partition by a.department_id order by salary desc) row_number�޿�

FROM employees A, departments B
where a.department_id = b.department_id
order by b.department_id, a.salary desc;





