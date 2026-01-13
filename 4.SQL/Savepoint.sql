/* let suppose we are performing any transaction and after a particular operation we want to add
a checkpoint so that if something get wrong we can roll back to that check point so that can be done by using savepoint
*/
SET autocommit = 0;
USE prime;
SELECT * FROM accounts;

START TRANSACTION;
UPDATE accounts SET balance = balance + 1000 WHERE id = 1; -- if we want to add savepoint after this operation it can be done
SAVEPOINT after_wallet_topup;  -- SAVEPOINT name_we_want_to_give

UPDATE accounts SET balance = balance + 10 WHERE id = 1;

ROLLBACK TO after_wallet_topup; -- we can rollback to savepoint
COMMIT;

/*
in above situation let someone is transfering 1000 rupees to id 1 and upi app is giving him an cashback of 10 rupees 
the main work is transfer of 1000 rupees and cashback is secondary so if due to some reason transfer is succesful and cashback get some error then we want that operation doesnt rollback completely to initial position
it roll back to the position after transaction is complete and befor start of cashback process so to do this we apply savepoint after transaction and befor cashback
*/