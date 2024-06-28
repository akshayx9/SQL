-- OVER()

SELECT AVG(salary) OVER() FROM employees;

SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;

SELECT emp_no, department, salary, MIN(salary) OVER(), MAX(salary) OVER() FROM employees;

-- PARTITION BY


SELECT emp_no, department, salary, AVG(salary) OVER(PARTITION BY department) AS dept_avg, AVG(salary) OVER() AS company_avg FROM employees;

SELECT emp_no, department, salary, COUNT(*) OVER(PARTITION BY department) AS dept_count FROM employees;

SELECT emp_no, department, salary, SUM(salary) OVER(PARTITION BY department) AS dept_payroll, SUM(salary) OVER() AS total_payroll FROM employees;

-- ORDER BY 

SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees;
