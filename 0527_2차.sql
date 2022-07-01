SELECT * FROM employees;

select * from employees where job_id like 'AD___';

select * from employees where manager_id is null;

select * from employees where salary > 400 and job_id = 'IT_PROG';

select * from employees where salary > 400 and job_id = 'IT_PROG' or job_id = 'FI_ACCOUNT';

select * from employees where employee_id <> 105;

select * from employees where manager_id is not null;

select last_name, lower(last_name),upper(last_name), email, initcap(email) from employees;  -- LOWER, UPPER, INITCAP

select job_id,
    substr(job_id, 1, 2)
from employees;


--- employees ���̺��� job_id ���ڿ� ���� ACCOUNT�� ACCNT�� ���
select job_id,
    replace(job_id, 'ACCOUNT', 'ACCNT')
from employees;


select first_name,
    LPAD(first_name, 12, '*')
from employees;

SELECT 'star'||TRIM(' - space - ')|| 'end' ���ŵ�_���� from dual;


select salary,
    salary/30 �ϱ�,
    TRUNC(salary/30, 0) ������0,
    TRUNC(salary/30, 1) ������1,
    TRUNC(salary/30, -1) ������2
from employees;



