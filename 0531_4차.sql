select count(salary)
from employees;

select sum(salary) �հ�, avg(salary) ���, sum(salary)/count(salary) ����_���
from employees;


select max(salary) �ִ밪, min(salary) �ּҰ�, max(first_name) �ִ빮�ڰ�, min(first_name) �ּҹ��ڰ�
from employees;


select job_id ����, sum(salary) ������_�ѱ޿�, avg(salary) ������_��ձ޿�
from employees
where employee_id >= 10
group by job_id
order by ������_�ѱ޿� desc, ������_��ձ޿�;

select job_id job_id_��׷�,
    manager_id manager_id_�߱׷�,
    sum(salary) �׷���_�ѱ޿�,
    avg(salary) �׷���_��ձ޿�
from employees
where employee_id >= 10
group by job_id, manager_id
order by �׷���_�ѱ޿� desc, �׷���_��ձ޿�;


select job_id ����, sum(salary) ������_�ѱ޿�, avg(salary) ������_��ձ޿�
from employees
where employee_id >= 10
group by job_id
having sum(salary) > 30000
order by ������_�ѱ޿� desc, ������_��ձ޿�;





