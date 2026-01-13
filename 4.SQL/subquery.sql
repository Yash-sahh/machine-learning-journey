/*
sub query -> as sub query is a inner query or nested query within another sql query.
it envolves 2 select statements
sub query returns data to outer query and outer query performs operations on that data

syntax
SELECT column(s)
FROM table_name
WHERE col_name operator
(subquery);

-> subquery can be written inside select , from , where
*/
SELECT * FROM customers;
SELECT * FROM orders;

-- lets print data data of all orders where order amount is greater then avg order amount
-- subquery inside where
SELECT *
FROM orders
WHERE amount> (
SELECT AVG(amount)
FROM orders
);

-- let print count of order for each customer
-- subquery inside select
SELECT name ,(
SELECT count(*)
FROM orders o
WHERE o.customer_id = c.customer_id
) as order_count
FROM customers c;

-- let we want to find out avg amount spent by customers for each customer
-- subquery inside from
SELECT summary.customer_id,
summary.avg_amount
FROM
(
SELECT customer_id,avg(amount) as avg_amount
FROM orders
GROUP BY customer_id
) AS summary;