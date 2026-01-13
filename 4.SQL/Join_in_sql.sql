CREATE DATABASE IF NOT EXISTS amazon;

USE amazon;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers
(customer_id,name,city)
VALUES
(1,'Alice','Mumbai'),
(2,'Bob','Delhi'),
(3,'Charlie','Bangalore'),
(4,'David','Mumbai');

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
amount INT
);

INSERT INTO orders
(order_id,customer_id,amount)
VALUES
(101,1,5),
(102,1,900),
(103,2,300),
(104,5,700);

SELECT * FROM customers;
SELECT * FROM orders;
/*
INNER JOIN - in this case we have customers and orders customers has customer id 1,2,3,4 and orders has 1,2 and 5 so common in both are 1 and 2 so data of 1 and 2 can be obtained by inner join ( inner join mtlb COMMON)
*/

/*
inner join - A and B ki wahi values aayegi jo intersection ho
let perform inner join on table A with table B based on a common parameter
SELECT column(s)   -- columns that we want to select or print
FROM tableA        -- in which table we are performing inner join we can give sort name to table here
INNER JOIN tableB  -- with which table performing inner join we can give sort name to table here
ON tableA.col_name = tableB.col_name; -- on the basis of which column we are performing inner join it should be column which should be in both table
*/
SELECT *
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_id,o.order_id,c.name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

/*
left join -> if it is from A to B then A ki to sari value aayegi but A ke corresponding B ki only wahi values aayegi jo A and B ka intersection ho and rest values will be replaced by null
*/
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


/*
right join -> if it is from A to B then B ki to sari value aayegi but B ke corresponding A ki only wahi values aayegi jo A and B ka intersection ho and rest values will be replaced by null
*/
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

/*
outer join -> means both a and b ki sari values rhe and a ke correspoding b me kuch nhi hai to null ho jayega and vice versa
it is union of left and right join
*/
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id

UNION

SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

/*
cross join -> in cross join if it is from table a to table b then each(individual) row of table a is combined with every(all) rows of table b
*/
SELECT *
FROM customers c
CROSS JOIN orders o;

/*
SELF JOIN  -> it is a regular join but table is joined to itself

when we need self join
let assume we have a employee table and some of employees are manager and some not and in employee table each employee has a employee id and only 
employees who are working as manager has manager id so now if we want details of managers only we can self join on employee id = manager id and we will get managers details
*/
SELECT *
FROM customers A  -- ham esa bhi likh sakte hai => customers as A
JOIN customers B
ON A.customer_id = B.customer_id;
