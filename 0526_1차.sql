select * from employees; 

select employee_id, email from employees;

select employee_id, first_name, last_name from employees order by employee_id desc;

select salary from employees;

SELECT DISTINCT job_id from employees;

select employee_id as ���̵�, first_name as �̸�, last_name as �� from employees;

select employee_id, first_name || last_name from employees;

select employee_id, first_name ||' ' || last_name, email || '@company.com' from employees;

select employee_id, first_name||' '|| last_name,
email||'@company.com'
from employees;

select employee_id as �����ȣ,
    salary as �޿�,
    salary+500 as �߰��޿�,
    salary-100 as ���ϱ޿�,
    (salary*1.1)/2 as �����޿� 
from employees;

select * from employees where employee_id = 100;

select * from employees where first_name = 'David';

select * from employees where employee_id >= 105;

select * 
from employees 
where salary between 10000 and 20000;

select * from employees where salary in(10000, 17000, 24000);

select * from employees where job_id like 'AD%';







