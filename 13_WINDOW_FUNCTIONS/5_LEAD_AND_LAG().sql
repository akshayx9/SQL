-- LEAD and LAG

SELECT 
    emp_no, 
    department, 
    salary, 
    salary - LAG(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_diff
FROM employees;