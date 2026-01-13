/*
ROLLBACK -> it can undo the uncommited changes 
thats why we commit after all operation is done in a transaction
so if there is any situation due to which all operation couldnt done then we will rollback to initial 
so this is because we commit at last and not at middle or after each statement because rollback can undo only uncommit changes
*/
SET autocommit = 0;
USE prime;

START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE id = 1;
UPDATE accounts SET balance = blance + 50 WHERE id = 2;   -- let assume yeha pe koi error aa gya due to which sirf first statement chali or ab hame rollback karna hai
ROLLBACK;

SELECT * FROM accounts;