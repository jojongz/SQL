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


--- employees 테이블에서 job_id 문자열 값이 ACCOUNT면 ACCNT로 출력
select job_id,
    replace(job_id, 'ACCOUNT', 'ACCNT')
from employees;


select first_name,
    LPAD(first_name, 12, '*')
from employees;

SELECT 'star'||TRIM(' - space - ')|| 'end' 제거된_공백 from dual;


select salary,
    salary/30 일급,
    TRUNC(salary/30, 0) 적용결과0,
    TRUNC(salary/30, 1) 적용결과1,
    TRUNC(salary/30, -1) 적용결과2
from employees;



