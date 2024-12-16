/*	Q1*/
SELECT * FROM employees;
SELECT employee_id  ,first_name,last_name ,department_id FROM employees /* WHERE location='Cairo'*/;
/*----------------------------------------------------------------------------------------------------*/
/*Q2*/
SELECT  DISTINCT department_id FROM employees;
/*----------------------------------------------------------------------------------------------------*/
/*Q3*/
CREATE TABLE  students(
student_id INT PRIMARY KEY,
first_name VARCHAR (60)  not NULL,
last_name  VARCHAR (60) DEFAULT  'Unknown',
 student_address varchar(100) default 'N/A',
	City varchar(60) default 'N/A',
	Birth_Date Date
)


 DROP  TABLE students;
 /*----------------------------------------------------------------------------------------------------*/
 /*	Q4*/
 INSERT INTO students(first_name,last_name,student_Address,City,Birth_Date ) VALUES ('Ahmed','Ali','Downtown','Cairo', '1995-01-01'  ) ;
 UPDATE student 
 SET student_Address ='Garden City'
 WHERE last_name='Ahmed';
 /*----------------------------------------------------------------------------------------------------*/
 /*	Q5*/
 DELETE  FROM students 
 WHERE City='Cairo';
 ROLLBACK transaction;
 SELECT * FROM  students;

  

 