 --TASK1
 CREATE VIEW vw_employee_details AS

SELECT e.fname, e.lname,  e.lname, FROM  employees e JOIN departments d  ON  e.department_id = d.department_id;

 FROM 
    employees e
JOIN 
    departments d
ON 
    e.department_id = d.department_id;
	-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 --TASK2
CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT e.fname,e.lname,p.pname, w.hours   FROM employees e
     
 
JOIN 
    work_hours w ON e.employee_id = w.employee_id  -- ربط الموظف مع ساعات العمل
JOIN 
    projects p ON w.project_id = p.project_id     -- ربط ساعات العمل مع المشروع
WHERE 
    e.department_id = 5;   
  
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--TASK3
 CREATE VIEW vw_high_status_suppliers AS
SELECT *
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;
