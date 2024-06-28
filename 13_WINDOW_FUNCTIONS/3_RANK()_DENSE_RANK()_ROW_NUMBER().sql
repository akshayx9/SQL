-- RANK()

SELECT 
    emp_no, 
    department, 
    salary, 
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees ORDER BY emp_no;

-- ROW_NUMBER()

SELECT 
    emp_no, 
    department, 
    salary, 
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_num,
FROM employees ORDER BY department;

