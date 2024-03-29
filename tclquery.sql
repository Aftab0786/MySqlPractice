
CREATE TABLE t_school(ID INT, School_Name VARCHAR(40), Number_Of_Students INT, Number_Of_Teachers INT, Number_Of_Classrooms INT, EmailID VARCHAR(40)); 
desc t_school;
START TRANSACTION;  
INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers, Number_Of_Classrooms, EmailID)
 VALUES(1, "SSA Urdu High School", 1000, 80, 12, "btps15@gmail.com"),
 (2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com"),
 (3, "Delhi Public School", 1200, 30, 10, "dps101@gmail.com"),
 (4, "Ashoka Universal School", 1110, 40, 40, "aus17@gmail.com"),
 (5, "Calibers English Medium School", 9000, 31, 50, "cems@gmail.com");
 
 SELECT *FROM t_school; 
 
 #Commit
 COMMIT;  
 SET autocommit = 0;  
 
 #savepoint
 SAVEPOINT savepoint_name;  
  SELECT *FROM t_school;  
  START TRANSACTION;  
  SAVEPOINT Insertion;  
  UPDATE t_school SET Number_Of_Students = 9050 WHERE ID = 5;  
  
   #Rollback
   SELECT *FROM t_school;  
   SAVEPOINT Updation;
   ROLLBACK TO Insertion;  
 SELECT *FROM t_school;
