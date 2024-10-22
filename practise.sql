SELECT 
    department,
    COUNT(employee_id) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
FROM 
    employees
GROUP BY 
    department
HAVING 
    SUM(salary) > 100000;
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;