CREATE DATABASE Collage_std;
USE Collage_std;

CREATE TABLE Students(
 roll_no int primary key,
 name varchar(50),
 marks int not null,
 grade varchar(1),
 city varchar(20)
);
create table dept(
id int primary key,
name varchar(50)
);
CREATE TABLE Teachers(
 id int primary key,
 name varchar(50),
 dep_id int ,
 foreign key (dep_id) references dept(id)
);
ALTER TABLE Students MODIFY COLUMN grade VARCHAR(10);
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


-- Practice Question ||
-- Write the Query to find avg marks in each city in ascending order.
select city,avg(marks) from Students group by city order by avg(marks) asc;
select city,avg(marks) from Students group by city order by avg(marks) desc;
-- Having Clause
select city,count(roll_no)
from Students
group by city
Having max(marks)>90;


select city 
from Students
where grade ="A"
group by city
having	max(marks) < 70
order by city asc;
select * from Students limit 5; 

-- Table related Queries
-- update to update existing rows
-- Update tb_name
-- set com1=val1,col2=val2
-- where conditon;
SET SQL_SAFE_UPDATES = 0;
update Students
set grade= "A+"
where grade = 1;

UPDATE Students
SET grade = 
    CASE 
        WHEN grade = 1 THEN 'A+'
        WHEN grade = 2 THEN 'A'
        WHEN grade = 3 THEN 'B+'
        WHEN grade = 4 THEN 'B'
        WHEN grade = 5 THEN 'C+'
    END
WHERE grade IN (1, 2, 3, 4,5);

select * from Students;
SELECT * FROM Students WHERE grade = 'A+';
UPDATE Students
Set marks=
case
when marks =150 then 15
when marks=35 then 33
End 
where marks in (150,35);

delete from Students
Where marks < 33;
select * from Students;

-- Table Related Queries
CREATE TABLE Delete_Data (
    name VARCHAR(120),
    age INT,
    roll_id VARCHAR(10) PRIMARY KEY
);

INSERT INTO Delete_Data (name, age, roll_id) VALUES
('Dayaram', 48, 'ro__1'),
('Vanita', 45, 'ro__2');

SELECT * FROM Delete_Data;

Alter table Delete_Data
ADD column city varchar(50) not null;
INSERT INTO Delete_Data (name, age, roll_id,city) VALUES
('Dayaram1', 48, 'ro__01',"Gondia"),
('Vanita1', 45, 'ro__02',"Bhandara");
SELECT * FROM Delete_Data;

-- Drop Column
ALTER TABLE Delete_Data
DROP COLUMN city;

ALTER TABLE DummyData
RENAME TO Dummy_Data;

-- Change Column name
ALTER TABLE Dummy_Data
CHANGE COLUMN name User_Name varchar(50) not null;
SELECT * FROM Dummy_Data;

ALTER TABLE Dummy_Data DROP PRIMARY KEY;
ALTER TABLE Dummy_Data ADD PRIMARY KEY(roll_id);

-- Modify Column(Modyfy Datatype/ Constraint)
ALTER TABLE Dummy_Data MODIFY COLUMN roll_id INT NOT NULL DEFAULT 1;

SELECT * FROM Dummy_Data;



-- Practice Question
CREATE TABLE Practice_Question(
name varchar(50),
marks int,
grades varchar(2)
);

INSERT INTO Practice_Question(name,marks,grades) VALUES
("Raghav",86,"A"),
("Palak",95,"A+"),
("Nandu",50,"C"),
("Sumit",45,"C");

ALTER TABLE Practice_Question
RENAME COLUMN name to Full_Name;

SELECT * FROM Practice_Question WHERE MARKS < 80;
ALTER TABLE Practice_Question
DROP COLUMN grades;
Select * from Practice_Question;