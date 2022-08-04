/ -------------  sub query --------
create database cfp;
use cfp;

CREATE TABLE employee_info (  
  emp_id int NOT NULL AUTO_INCREMENT,  
  emp_name varchar(45) DEFAULT NULL,  
  emp_age varchar(45) DEFAULT NULL,  
  city varchar(25) DEFAULT NULL,  
  income   varchar(25) DEFAULT NULL, 
  PRIMARY KEY (ID)
  );

  
INSERT INTO employee_info(ID,emp_name, emp_age, City,income)     
VALUES (001, 'Faheem',22, 'Pune',45000),     
(002, 'Jay', 26, 'Mumbai',48000),     
(003,'Joy', 27, 'Auranganbad',49000),    
(004, 'Sonal', 29, 'Amravati',48000),    
(005, 'Monali', 31, 'Gurgao',25000),    
(006, 'pooja', 38, 'Nahik',26000);


show tables;
desc employee_info;

#employee detail whose id matches in a subquery
SELECT emp_name, City, income FROM employee_info 
 WHERE ID IN (SELECT ID FROM employee_info);  
 
 
 #MAX income
 SELECT * FROM employee_info
   WHERE ID IN (SELECT ID FROM employee_info   
         WHERE income > 350000);  


#employee details with maximum income using a subquery
SELECT emp_name, city, income FROM employee_info 
   WHERE income = (SELECT MAX(income) FROM employee_info);  
   
   #the student detail who does not belong to Los Angeles City
   SELECT Name, City FROM employee_info  

    