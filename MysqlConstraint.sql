use brp;
# not null constraint.....
 CREATE TABLE Student(Id INTEGER, FirstName TEXT NOT NULL, LastName TEXT NOT NULL, City VARCHAR(35));
 show tables;
 INSERT INTO Student VALUES(1, 'Hanks', 'Peter', 'New York');
 desc student;
 # unique constraint....
 CREATE TABLE ShirtBrands(Id INTEGER, BrandName VARCHAR(40) UNIQUE, Size VARCHAR(30));
  INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Pantaloons', 38), (2, 'Cantabil', 40);
desc ShirtBrands;
select * from student;
# check constraint.....
CREATE TABLE Persons (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);  
INSERT INTO Persons(Id, Name, Age) VALUES (1,'Robert', 28), (2, 'Joseph', 35), (3, 'Peter', 40);  
desc Persons;
select * from Persons;
# line no 22 got rejected due to voilated the constraint....
INSERT INTO Persons(Id, Name, Age) VALUES (1,'Robert', 15);
# Default constraint.....
 CREATE TABLE Person (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
); 
INSERT INTO Person(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida'),   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  
INSERT INTO Person(Id, Name, Age) VALUES (1,'Brayan', 15);
select * from Person;
# primary key constraint...
CREATE TABLE People (  
    ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25)); 
    INSERT INTO People (Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida') ,   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');
#insert statement fails and gives an error that says Duplicate entry for the primary key column. 
INSERT INTO People (Id, Name, Age, City)   
VALUES (1,'Stephen', 15, 'Florida');  
select * from People;
# AUTO_INCREMENT Constraint....
CREATE TABLE Animals(  
id int NOT NULL AUTO_INCREMENT,   
name CHAR(30) NOT NULL,   
PRIMARY KEY (id));
INSERT INTO Animals (name) VALUES   
('Tiger'),('Dog'),('Penguin'),   
('Camel'),('Cat'),('Ostrich'); 
select * from Animals;
# ENUM Constraint....
CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
INSERT INTO Shirts(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large');  
select * from Shirts; 
# INDEX Constraint
CREATE TABLE Clothes (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
INSERT INTO Clothes(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large'); 
CREATE INDEX idx_name ON Clothes(name);
SELECT * FROM Clothes USE INDEX(idx_name);
# Foreign Key Constraint
CREATE TABLE Public (  
    Person_ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25)  
);  
select * from Public;
CREATE TABLE Orders (  
    Order_ID int NOT NULL PRIMARY KEY,  
    Order_Num int NOT NULL,  
    Person_ID int,  
    FOREIGN KEY (Person_ID) REFERENCES Public(Person_ID)  
); 
select * from orders; 



