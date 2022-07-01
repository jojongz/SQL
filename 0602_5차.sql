SELECT department_id  -- 합집합 중복 X
FROM employees
UNION
SELECT department_id 
FROM departments;

SELECT department_id  -- 합집합 중복 O
FROM employees
UNION ALL
SELECT department_id 
FROM departments;

SELECT department_id   -- 교집합
FROM employees
INTERSECT
SELECT department_id
FROM departments; 

SELECT department_id   -- 차집합
FROM employees
MINUS
SELECT department_id
FROM departments; 



SELECT *
FROM employees A
WHERE a.salary = (SELECT salary FROM employees
                  WHERE last_name = 'De Haan');



-- 다중행
SELECT *
FROM employees A
WHERE a.salary IN (SELECT salary FROM employees
                  WHERE  last_name = 'Taylor');
                  
        


SELECT
    *
FROM employees A
WHERE a.salary IN (SELECT MIN(salary) 최저급여
                    FROM employees
                    GROUP BY department_id
                    )
ORDER BY a.salary DESC;



SELECT
    *
FROM employees A
WHERE (a.job_id, a.salary) IN (select job_id, MIN(salary) 그룹별급여
                                  FROM employees
                                  GROUP BY job_id
                         )
ORDER BY a.salary DESC;
                    

SELECT *
FROM employees A,
               ( SELECT department_id 
               FROM departments
               WHERE department_name = 'IT') B  --- B는 가상뷰(인라인 뷰라고함)
WHERE a.department_id = B.department_id;



INSERT INTO departments (department_id, department_name, manager_id, location_id)
VALUES (271, 'Sample_Dept', 200, 1700);

SELECT
    *
FROM departments
ORDER BY department_id desc;


INSERT INTO departments
VALUES (272, 'Sample_Dept', 200, 1700);

commit;


UPDATE departments
SET manager_id = 201,
    location_id = 1800
WHERE department_name = 'Sample_Dept';


UPDATE departments
SET (




















