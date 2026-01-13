/* sql treats all statement as a single transaction and auto commit after he statement is executed correctly
but sometimes we have multiple statement and we want to commit after executing all statement correctly and not in the middle or after each
statement so to do this we set autocommit to 0(desable) by default it is 1 (enable)
and after executing every statement we commit it by ourself

TRANSACTION - it is a set of operations treated as a whole
which follows acid properties
*/
SELECT @@autocommit; -- this is how we select global variable

SET autocommit = 0; -- this is how we set autocommit 0 and after setting it 0 we will have to commit by ourself
-- to work with transaction always disable autocommit first 
