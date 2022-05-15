create database BRP;
show databases;
use BRP;
drop database brp;
CREATE TABLE employee_table(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int NOT NULL,  
    PRIMARY KEY (id)  
);  
show tables;
desc employee_table;
ALTER TABLE employee_table
ADD firstname varchar(20);
desc employee_table;
insert into employee_table value(1, "Aftab", "Player", 20, 20000);
select * from employee_table;
insert into employee_table (name,occupation,age,salary) value("Sadam","TestEngineer",20,30000);
ALTER TABLE employee_table
MODIFY firstname varchar(30) unique;
ALTER TABLE employee_table
drop column firstname;
ALTER TABLE employee_table
rename COLUMN salary to income;
desc employee_table;
ALTER TABLE employee_table
RENAME TO emp_table;
show tables;
show columns from emp_table;
desc emp_table;
select * from emp_table;
select name,income from emp_table;
