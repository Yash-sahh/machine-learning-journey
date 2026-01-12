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