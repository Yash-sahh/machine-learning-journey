/* practice question 1) create a database for your college
create a table named teacher to store (id,name,subject,salary)
insert following data in table
23,"ajay","maths",50000
47,"bharat","english",60000
18,"chetan","chemistry",45000
9,"divya","physics",75000
*/

CREATE DATABASE IF NOT EXISTS college;

USE college;
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(25),
subject VARCHAR(50),
salary INT
);

INSERT INTO  teacher
(id,name,subject,salary)
VALUES
(23,"ajay","maths",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

SELECT * FROM teacher;

-- Q1 select teachers whose salary is more than 55k;
SELECT * 
FROM teacher
WHERE salary>55000;

-- Q2 rename the salary column of teacher table to ctc
ALTER TABLE teacher
CHANGE COLUMN salary ctc INT;

-- Q3 update salary of all teachers by giving them an increment by 25%
SET SQL_SAFE_UPDATES = 0;
UPDATE teacher
SET ctc = ctc + 0.25*ctc;

-- Q4 add new column for teacher called city. the default city should be "Gurgaon"
ALTER TABLE teacher
ADD COLUMN city VARCHAR(50) DEFAULT "Gurgaon";

-- Q5 delete the salary column of teacher
ALTER TABLE teacher
DROP ctc;

/*
create a table to store student information (roll_no,name,city,marks).
insert following data in table
(110,"adam","delhi",76),
(108,"bob","mumbai",65),
(124,"casey","pune",94),
(112,"duke","pune",80);
*/
CREATE TABLE student(
roll_no INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
marks INT
);

INSERT INTO student
(roll_no,name,city,marks)
VALUES
(110,"adam","delhi",76),
(108,"bob","mumbai",65),
(124,"casey","pune",94),
(112,"duke","pune",80);

SELECT * FROM student;

-- Q1 select all student who scored 75+
SELECT *
FROM student
WHERE marks>75;

-- Q2 find name of all cities where student are from
SELECT DISTINCT city
FROM student;

-- OR 
SELECT city
FROM student
GROUP BY city;

-- Q3 find the maximum marks of student from each city
SELECT city,MAX(marks)
FROM student
GROUP BY city;

-- Q4 find avg of the class
SELECT AVG(marks)
FROM student;

/* Q5 add new column grade, assign grade such that:
marks>=80,grade=O
marks 70-80,grade=A 
marks 60-70,grade = B
*/
ALTER TABLE student
ADD COLUMN grade VARCHAR(2);

UPDATE student
SET grade = "O"
WHERE marks>=80;

UPDATE student
SET grade = "A"
WHERE marks >=70 AND marks < 80;

UPDATE student
SET grade = "B"
WHERE marks >= 60 AND marks < 70;
