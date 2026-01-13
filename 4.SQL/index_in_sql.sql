/*
index -> index are special database object that make data retrieval faster

syntax (single column & multi column)
CREATE INDEX idx_name ON table(col);  -> creates single column index
CREATE INDEX idx_name ON table(col1,col2);  -> creates multi column index

SHOW INDEX FROM table; -> shows all indexes created from a table
DROP INDEX idx_name ON table; -> drops index

primary key is the default index
*/

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10, 2),
    branch VARCHAR(50)
);

INSERT INTO accounts VALUES
(1, 'Adam', 500.00, 'Mumbai'),
(2, 'Bob', 300.00, 'Delhi'),
(3, 'Charlie', 700.00, 'Bangalore'),
(4, 'David', 1000.00, 'Noida');


SELECT * FROM accounts;

CREATE INDEX idx_branch ON accounts(branch);

SHOW INDEX FROM accounts;

-- ab branch column ka index ban gaya to esi queries jisme branch ka search karna ho fast ho  jayegi for example
SELECT *
FROM accounts
WHERE branch = "Bangalore";

CREATE INDEX idx2 ON accounts(branch,balance);
DROP INDEX idx2 ON accounts;

/* index select queries ko to fast bana deta hai but esi queries jinme ham write karte hai jaise update, delete inhe slow kar deta hai