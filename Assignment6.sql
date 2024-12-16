-- Task 1 
-- Write a SQL query to retrieve the emp_id, last_name, and salary of employees whose salary is between 2,000 and 5,000 and do not have a manager ID of 101 or 200. 

SELECT employee_id, last_name, salary, manager_id FROM employees
WHERE manager_id not in (101, 200) and salary between 2000 and 5000;
/*-------------------------------------------------------------------------------------------------------*/
-- Task 2: Using JOINs and Aliases
-- Write a SQL query to display the employee names along with their respective department names. 
-- Use aliases for table names for better readability.
/*-------------------------------------------------------------------------------------------------------*/
SELECT e.first_name, d.department_name FROM employees e
inner join departments d on e.department_id = d.department_id
ORDER BY d.department_name ;
/*-------------------------------------------------------------------------------------------------------*/
-- Task 3: Aggregate Functions and GROUP BY
-- Write a SQL query to find the number of employees and the average salary for each department. 
-- Ensure that the results are grouped by department ID.

SELECT department_id, count(employee_id) as "number of employees", avg(salary) as "Avarage Salary"
FROM employees GROUP BY department_id ;  
 