-- LEFT EXCLUSIVE JOIN => if a to b then a ka sirf wo data jo b ke sath common nhi hai 
-- it can be done by left join and usme wo hata do jo common hai
SELECT *
FROM customers as c
LEFT JOIN orders as o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- RIGHT EXCLUSIVE JOIN => if a to be then b ka sirf wo data jo a ke sath common nhi hai
-- it can be done by right join and usme wo hata do jo common hai
SELECT *
FROM customers as c
RIGHT JOIN orders as o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;