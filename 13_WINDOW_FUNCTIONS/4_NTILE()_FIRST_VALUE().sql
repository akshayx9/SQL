-- NTILE()

SELECT 
    emp_no, 
    department, 
    salary, 
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile 
FROM employees;

-- FIRST_VALUE()

SELECT 
    emp_no, 
    department, 
    salary, 
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highest_paid_overall
FROM employees;

