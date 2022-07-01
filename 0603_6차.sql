UPDATE departments
SET (manager_id, location_id) = (SELECT manager_id, location_id
    FROM departments
    WHERE department_id = 40)
WHERE department_name = 'Sample_Dept';

SELECT
    *
FROM employees;


SELECT manager_id, location_id
    FROM departments
WHERE department_id = 40;


SELECT
    *
FROM departments
WHERE department_name = 'Sample_Dept';

-- department_id���� null�� �Էµ� �� ���� ������ ���� �߻�.
UPDATE employees
SET department_id = null
WHERE department_name = 'Sample_Dept';


-- �Ϲ����� ���
DELETE FROM employees
WHERE email = 'SkING';


-- ���������� ����� ���
DELETE FROM departments
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE department_name = 'Sample_Dept');
               
commit;


-- �⺻Ű ���� ���� - ������ �ߺ� ����
INSERT INTO departments
VALUES(1000, 'Sample_Dept', 200, 1700); 


-- �ܷ�Ű ���� ���� : �� ���� �θ����̺� ���� ���� ���� �ݵ�� ����
INSERT INTO departments(department_id, department_name, manager_id, location_id) 
VALUES(273, 'Sample_Dept', 200, 111); 


-- ����Ű : �ߺ��� ������� ������ (null�� ��� ����)
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date,
                        job_id, salary)
VALUES(207, 'first_name', 'last_name', 'SKING', '111.11.11', to_date('030617', 'YYMMDD'),'IT_PROG', 6000); 

SELECT *
FROM employees
WHERE email = 'SKING';


-- NOT NULL : NULL���� ������� �ʴ´�
INSERT INTO departments(department_id, department_name, manager_id, location_id) 
VALUES(273, null, 200, 700);


-- CHECK : ������ ���� �� ������ ���� ���
-- �ǳ��� ���� 0�� �ʰ��ϴ� ���� ���
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date,
                        job_id, salary)
VALUES(209, 'first_name', 'last_name', 'TEST', '111.11.11', to_date('030617', 'YYMMDD'),'IT_PROG', 0);


-- ���̺� ����
CREATE TABLE sample_product
            (product_id number,
             product_name VARCHAR2(30),
             manu_date date
             );
             


INSERT INTO sample_product
VALUES(1, 'television', to_date('140101', 'YYMMDD'));

INSERT INTO sample_product
VALUES(2, 'washer', to_date('150101', 'YYMMDD'));

INSERT INTO sample_product
VALUES(3, 'cleaner', to_date('160101', 'YYMMDD'));


SELECT
    *
FROM sample_product;


ALTER TABLE sample_product ADD(factory varchar(10));


ALTER TABLE sample_product MODIFY(factory char(8));

-- ������ ���� ���� ũ�⸦ �۰� �����ϸ� ������ �߻���.
ALTER TABLE sample_product MODIFY(product_name varchar(5));


ALTER TABLE sample_product RENAME COLUMN factory TO factory_name;


-- �� ����
ALTER TABLE sample_product DROP COLUMN factory_name;


-- ���� ����
TRUNCATE TABLE sample_product;


-- ���̺� ����
DROP TABLE sample_product;







