select count(salary)
from employees;

select sum(salary) 합계, avg(salary) 평균, sum(salary)/count(salary) 계산된_평균
from employees;


select max(salary) 최대값, min(salary) 최소값, max(first_name) 최대문자값, min(first_name) 최소문자값
from employees;


select job_id 직무, sum(salary) 직무별_총급여, avg(salary) 직무별_평균급여
from employees
where employee_id >= 10
group by job_id
order by 직무별_총급여 desc, 직무별_평균급여;

select job_id job_id_대그룹,
    manager_id manager_id_중그룹,
    sum(salary) 그룹핑_총급여,
    avg(salary) 그룹핑_평균급여
from employees
where employee_id >= 10
group by job_id, manager_id
order by 그룹핑_총급여 desc, 그룹핑_평균급여;


select job_id 직무, sum(salary) 직무별_총급여, avg(salary) 직무별_평균급여
from employees
where employee_id >= 10
group by job_id
having sum(salary) > 30000
order by 직무별_총급여 desc, 직무별_평균급여;





