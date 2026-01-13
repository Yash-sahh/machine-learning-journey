CREATE DATABASE college;        -- command to create database
create database xyz_company;    -- it is case insensitive but we will write sql command in capital letter and names (database name,table name etc) in small letters
DROP DATABASE xyz_company;      -- this is how we delete a database

USE college;     -- we have to use a database to start working on that database start working means such as creating tables etc

CREATE TABLE student(    -- this is how we create a table and define its schema(columns)
roll_number INT , -- here we can write constraints if we want it is optional so its not written here in this case 
name VARCHAR(30),
age INT
);

INSERT INTO student   -- it inserts actual data in rows 
VALUES
(101,"adam",12),
(102,"bob",14);
SELECT * FROM student;   -- it select everything from table student

CREATE DATABASE IF NOT EXISTS instagram;  -- it creates database name instagram if it does not exist and give warning if it already exists but doesnt give any error 

DROP DATABASE instagram; -- it will delete database and if database does not exist it will give error
DROP DATABASE IF  EXISTS instagram; -- it will delete database and if database does not exist it will not give error will just give a warning
SELECT * FROM student;

SHOW DATABASES ; -- it shows info about all database present at that point

USE instagram;

SHOW TABLES; -- it shows info about all tables present in database at that point but befor it we have to use that databse

USE instagram; -- we are using instagram to perform operation in it

CREATE TABLE user(
id INT PRIMARY KEY,  -- first way to make id a primary key
age INT,
name VARCHAR(30) NOT NULL, -- column_name datatype constraint
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT DEFAULT 0,
CONSTRAINT age_check CHECK(age>=13) -- CONSTRAINT constraint_name CHECK(constraint logic)
-- PRIMARY KEY(id) -- this is second way to make primary key 
);



INSERT INTO user   -- to insert values in table we use INSERT INTO table_name
(id, age, name, email, followers, following)   -- here we provide order of column name jis order me ham rows me values provide karenge 
VALUES  -- actual values jise ham row wise insert karenge nimnlikhit
(1,14,"adam","adam@yahoo.in",123,145),
(2,15,"bob","bob123@gmail.com",200,200),
(3,16,"casey","casey@email.com",300,306),
(4,17,"donald","donald@gmail.com",200,105);



SELECT * FROM user; -- it select and show data from table -- it select all data ( * = all)

SELECT name, email FROM user; -- it will select only columns name and email

SELECT DISTINCT age FROM user; -- if in age column there is same age for multiple user it will select and show unique(distinct) ages only means if we will have two user with age 14 then only ek bar 14 aayega na ki do bar

CREATE TABLE post(
post_id INT PRIMARY KEY,
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(id) -- this is how we create foreign key  FOREIGN KEY (column_name jise hame foreign key banana hai) REFERENCES table_name jiski ye primary key hai (uss table me primary key ka column name kya hai)
);

INSERT INTO post
(post_id, content, user_id)
VALUE 
(101,"hello world",3),
(102,"bye bye",1),
(103,"hello delta",3);

SELECT * FROM post;

SELECT DISTINCT user_id FROM post; -- here it is 3,1,3 but we will only get 1,3 because we are using DISTINCT

-- now with this select from commmand we can also use clauses like WHERE in which we define constraint and it will select and show only data which will according to that constraint define in where
-- let if we want data of users whose followers are greater then or equal to 200
SELECT *
FROM user
WHERE followers >= 200;

-- now let we want only name of them 
SELECT name 
FROM user
WHERE followers >= 200;

-- now let we want name and followers of them 
SELECT name, followers
FROM user
WHERE followers >= 200;

-- now let suppose we want to find out name age followers and following of users whose age is strictly less then 16
SELECT name, age, followers, following
FROM user
WHERE age < 16;

-- now we want name age followers of users whose age is 15+ and followers count is 200+
SELECT name, age, followers
FROM user
WHERE age>15 AND followers>200;

-- but if we want all details of user whose age > 15 ho ya fir followers>200 ho koi ek bhi condition true ho jaye
SELECT *
FROM user 
WHERE age>15 OR followers>200;

-- if we want name age followers following of users whose age is between 15 to 17 - means it can be 15,16, 17 
SELECT name, age, followers, following
FROM user
WHERE age BETWEEN 15 AND 17;  

# if we want ki we want users who are using particular emails then we use in operator and pass emailas list
SELECT *
FROM user
WHERE email IN ("donald@gmail.com","bob123@gmail.com","abc@gmail.com");

-- let we want users whose age is 14 and 16 only
SELECT name, age 
FROM user
WHERE age IN (14,16);

-- next clause is LIMIT clause - it sets an upper limit on number of tuple(rows) to be return mean if we apply limit 3 then if there is more then 3 tuples data then only 3 tuple will select and show
 -- let we want info any two users whose age is greater then 14
SELECT *
FROM user
WHERE age>14  -- we have three users whose age is greater then 14 
LIMIT 2;   -- but if we want details of only 2 users then we will apply LIMIT clause

-- now let we want info about 3 users only without any condition
SELECT * 
FROM user
LIMIT 3;  -- no need to use where to use LIMIT

-- next lets talk about ORDER BY clause - it sort the data in ascending or desecnding order matlab jo bhi data ayega wo kisi bhi random order me aayega butt if we wantt ki wo scending order me aaaye ya fir descending order me aaye to we will order by clause
-- let we want ki on the basis of followers ascending order me sort hoke aaye 

SELECT * 
FROM user
ORDER BY followers ASC; -- syntax -> ORDER BY column_name jiske ooper sorting lagani hai ASC/DESC  => if we doesnt write ASC or DESC then  by default sorting will be in ASC order

-- aggregate function => they are some predefined functions in sql which performs calculation on set of values and return single value
-- COUNT()
-- MAX()
-- MIN()
-- SUM()
-- AVG()

-- let we want maximum follower kitne hai kisi user ke
SELECT MAX(followers)
FROM user;

-- now let we want avg of following
SELECT AVG(following)
FROM user;

-- let we want count of email ids in user table
SELECT COUNT(email)
FROM user;

-- we want to count users whose age is more then 15
SELECT COUNT(age)
FROM user
WHERE age>15;

-- we want sum of followers of users whose age is equals to 14 and 16
SELECT SUM(followers)
FROM user
WHERE age IN (14,16);

-- next we have GROUP BY clause => it is generally used with a aggregate function
-- let i want the count of user age wise means we want count of users whose age is 14, count of user whose aege is 15 .. whose age is 16 and so on
-- so i want to group the users on the basis of there age
 -- and then count them
 SELECT age,COUNT(id)   -- and it will count users in that groups
 FROM user
 GROUP BY age;     -- it will group the user according to there age 
 
 -- now let we want max followers among this group 
 SELECT age,MAX(followers)  -- one more imp -> if we write any column name outside the agggregation function if we are useing aggregation function then we will have to group by that column otherwise it will give error
 FROM user
 GROUP BY age;
 
 -- HAVING clause it is similar to WHERE clause which applies condition on rows, but it is used when we want to apply condintion after grouping 
 -- now let we want max follower in each age group but there is a condtion here we want only those followers count is greater then 200
SELECT age,MAX(followers)
FROM user
GROUP BY age
HAVING MAX(followers)>200; -- applying condition on group 

-- so where clause is for the table which apply condition on rows and where clause is for the group which apply condition on group and also grouping is necessary for having

-- general order to write clauses
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition

-- table queries
-- UPDATE used to update existing value
-- let we want to update followers count to 600 of ids whose age is 16
UPDATE user   -- UPDATE table_name
SET followers = 600  -- SET column_name = value,column_name = value
WHERE age = 16; -- WHERE condition;

SET SQL_SAFE_UPDATES = 0; -- by default sql has safe update value 1 which doesnt allow to update table and whenever we try to update it will give an error so befor update we have to set it to 0 
-- DELETE it delete existing rows from table

-- let we want to delete users whose age is equal to 14 in table user
DELETE FROM user  -- DELETE FROM table_name
WHERE age = 14;   -- WHERE condition  -- if we doesnt write where clause it will delete all rows

-- ALTER -> to change the schema

-- to add new column
-- ALTER TABLE table_name
-- ADD COLUMN column_name datatype constraint;

ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "DELHI";

-- to delete existing column
-- ALTER TABLE table_name
-- DROP COLUMN column_name;

ALTER TABLE user
DROP COLUMN city;

-- to rename table
-- ALTER TABLE table_name
-- RENAME TO new_table_name;

ALTER TABLE user
RENAME TO user_table;

-- to rename column name
-- ALTER TABLE table_name
-- CHANGE COLUMN old_name new_name new_datatype new_constraint;  -> if we want that datatype purana wala hi rahe to bhi purana wala datatype dobara dena padega in new_datatype same for constraint

ALTER TABLE user_table
CHANGE COLUMN id user_id INT;

-- to modify column
-- ALTER TABLE table_name
-- MODIFY col_name new_datatype new_constraint;

ALTER TABLE user_table
MODIFY age FLOAT  NOT NULL;

-- DROP TABLE table_name -> it will delete table
USE instagram;
DROP TABLE post;
-- TRUNCATE TABLE table_name -> it will delete all data of table and will not delete the table itself
TRUNCATE TABLE user_table;
SELECT *
FROM user_table;

DROP  TABLE user_table;
SELECT *
FROM user_table;   -- now it will give an error because drop table deletes the table and now there is not any table named user_table
DROP DATABASE college; -- this is how we delete database