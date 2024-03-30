CREATE DATABASE Collage_std;
USE Collage_std;

CREATE TABLE Students(
 roll_no int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1),
 city varchar(20)
);

Insert into Students(roll_no,name,marks,grade,city) values
(101,"Anil",99,"A+","Delhi"),
(102,"Lara",89,"A","Pune"),
(103,"Appu",79,"B+","Mumbai"),
(104,"Urvaashi",69,"C+","Nagpur"),
(105,"Iiaya",59,"C","Agra"),
(106,"Akash",99,"A+","Nanded"),
(107,"Harsh",89,"A","Deharadun"),
(108,"Harshid",79,"B+","Nagarkot"),
(109,"Damodar",69,"C+","Kanpur"),
(110,"Rahul",59,"C","Raipur");

-- Where Clauses
-- SELECT * FROM Students WHERE marks >=65;
-- SELECT * FROM Students Where city = "Pune";

-- SELECT roll_no,grade FROM Students;
-- SELECT DISTINCT grade FROM Students;

-- Where clauses Arithemetic operator
SELECT * FROM students WHERE age > 18;
SELECT * from Students WHERE marks+10>100;
-- Where clauses Arithmetic operator 
-- it means students whose marks after adding +10 if they are greteer than 100 we are printhing that 

-- WHERE Clause Comparision Operator 
SELECT * from Students WHERE marks < 100;

-- WHERE Clause Logical Operator 
SELECT * from Students WHERE marks > 70 AND city="Pune";
SELECT * from Students WHERE marks > 70 AND marks < 90;
SELECT * from Students WHERE marks > 70 OR city="Pune";
SELECT * FROM Students WHERE marks BETWEEN 55 AND 70; 
-- In (matches any values in the list)
SELECT * FROM Students WHERE city IN ("Delhi" ,"Pune");
-- It will print those row where DELhi and pune is present

-- NOT to negate the given condition 
SELECT * FROM Students WHERE city NOT IN ("Delhi","Pune");
-- It will NOT print those row where DELhi and pune is present

-- Limit Clause
-- Sets an upper limit on number of(tuples) rows to be returened
SELECT  marks,city FROM Students Limit 4;
SELECT  marks,city FROM Students WHERE marks>75 Limit 4;


-- Order by Clause
-- To sort in ascending of desending order
SELECT * FROM Students order BY city ASC;
-- it will sort the city data ASC as per A B C
-- Syntax SELECT col1,col2 FROM table_name ORDER BY ckol_name ASC /DSC; 


-- Aggregate Function
-- Use to perform any specific task's
SELECT marks from Students;
SELECT Min(marks) from Students;
SELECT count(marks) from Students;


-- Group By Clause
select city from Students group by city;
select city,count(roll_no) from Students group by city;
select city,name,count(roll_no) from Students group by city,name;