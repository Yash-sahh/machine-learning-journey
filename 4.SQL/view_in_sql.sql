/*
view -> it is an virtual table based on the result set of an sql statement

syntax
CREATE VIEW view1 AS
SELECT col1,col2 FROM table_name;


**** a view always shows up to date data.
the database engine recreates the view,
every time a user queries it.....
*/

-- let we want a view of customer id and there name
CREATE VIEW view1 AS
SELECT customer_id,name
FROM customers;

SELECT * FROM view1;

-- now let we want data of customers for which we have order value as a view for this hame inner join kara padega
CREATE VIEW view2 AS
SELECT c.customer_id,c.name,o.order_id,o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT * FROM view2;

-- we can drop view
DROP VIEW view1;