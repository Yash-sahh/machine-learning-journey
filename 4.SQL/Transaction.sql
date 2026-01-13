CREATE DATABASE IF NOT EXISTS prime;

USE prime;
CREATE TABLE accounts (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
balance DECIMAL(10,2)
);

INSERT INTO accounts
(name,balance)
VALUES
('Adam',500.00),
('Bob',300.00),
('Charlie',1000.00);

SELECT * FROM accounts;

/* 
TRANSACTION 1 -> transfer 50 rupees from account 1 to account 2
*/
SELECT @@autocommit;
SET autocommit = 0;
START TRANSACTION;
UPDATE accounts SET balance = balance-50 WHERE id = 1;
UPDATE accounts SET balance = balance+50 WHERE id = 2;
COMMIT;
