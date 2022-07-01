select * from employees; 

select employee_id, email from employees;

select employee_id, first_name, last_name from employees order by employee_id desc;

select salary from employees;

SELECT DISTINCT job_id from employees;

select employee_id as 아이디, first_name as 이름, last_name as 성 from employees;

select employee_id, first_name || last_name from employees;

select employee_id, first_name ||' ' || last_name, email || '@company.com' from employees;

select employee_id, first_name||' '|| last_name,
email||'@company.com'
from employees;

select employee_id as 사원번호,
    salary as 급여,
    salary+500 as 추가급여,
    salary-100 as 인하급여,
    (salary*1.1)/2 as 조정급여 
from employees;

select * from employees where employee_id = 100;

select * from employees where first_name = 'David';

select * from employees where employee_id >= 105;

select * 
from employees 
where salary between 10000 and 20000;

select * from employees where salary in(10000, 17000, 24000);

select * from employees where job_id like 'AD%';







