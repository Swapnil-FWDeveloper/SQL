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
(101,"Anil",99,1,"Delhi"),
(102,"Lara",89,2,"Pune"),
(103,"Appu",79,3,"Mumbai"),
(104,"Urvaashi",69,4,"Nagpur"),
(105,"Iiaya",59,5,"Agra"),
(106,"Akash",99,1,"Nanded"),
(107,"Harsh",89,2,"Deharadun"),
(108,"Harshid",79,3,"Nagarkot"),
(109,"Damodar",69,4,"Kanpur"),
(110,"Rahul",59,5,"Raipur");

SELECT roll_no,grade FROM Students;
SELECT DISTINCT grade FROM Students;

