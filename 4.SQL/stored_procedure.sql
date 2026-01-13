/*
stored procedure -> predefined set of sql statements that you can save in database and execute whenever needed
just like functions in c++ we define them and call them whenever we need them same we predefine procedure and save and execute whenever we need


syntax(create)
CREATE PROCEDURE procedure_name(parameter)
BEGIN
 --sql_statement
 END;
 */
 
 /* let create a procedure which returns balance on the basis of account id
DELIMITER $$  -- ye kar diya change 
 CREATE PROCEDURE check_balance (IN acc_id INT)  -- IN mtlab input and acc_id (name can be anything jaroori nhi column name jo hai wahi) INT (datatype)
 BEGIN
 SELECT balance
 FROM accounts
 WHERE account_id = acc_id;
 END $$  -- it gives error now and error se bachne ke liye hame dlimiter change karna hoga abhi ; hai but temporirily kuch or kardo
DELIMITER ; -- and ye wapis ; kar diya delimiter
*/
USE amazon;

DROP PROCEDURE IF EXISTS check_balance;

DELIMITER $$

CREATE PROCEDURE check_balance (IN acc_id INT,OUT bal dec (10,2))  -- OUT returns and INT input
BEGIN
  SELECT balance INTO bal
  FROM accounts
  WHERE account_id = acc_id;
END $$

DELIMITER ;

-- syntax(call)
-- CALL procedure_name (argumaccountsents);
Call check_balance (1,@balance); -- by @ we can create user defined variable procedure returns in @balance

SELECT @balance;
-- syntax(drop)
-- DROP PROCEDURE IF EXISTS procedure_name;
DROP PROCEDURE IF EXISTS check_balance;
