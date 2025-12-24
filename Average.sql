-- Question :To calculate average transaction amount per year each client whwre year are range 2018 to 2022


drop table transaction;
CREATE TABLE `transaction`(         -- Creates a new table named 'transaction'

    transaction_ID INT,                 -- Stores the unique ID for each transaction

    user_ID INT,                          -- Stores the ID of the user who made the transaction

    transaction_date DATE,                   -- Stores the date when the transaction occurred

    transaction_amount INT            -- Stores the transaction amount (integer value)
);

DESCRIBE `transaction`;               -- Displays the table structure (column names, data types, etc.)

INSERT INTO `transaction` (transaction_ID, user_id, transaction_date, transaction_amount)

VALUES
(1, 269, '2018-08-15', 500),
(2, 478, '2018-11-26', 300),
(3, 269, '2019-03-23', 300),
(4, 123, '2020-10-12', 700),
(5, 478, '2021-09-18', 400);

SELECT * FROM `transaction`;      -- Retrieves and displays all rows and columns from the table

SELECT 
    YEAR(transaction_date) AS txn_year,  -- Extracts the year from transaction_date and renames it as txn_year

    user_id,

    AVG(transaction_amount) AS avg_transaction_amount   -- Calculates the average transaction amount for each group

FROM `transaction`

WHERE YEAR(transaction_date) BETWEEN 2018 AND 2021     -- Filters records to include only transactions between years 2018 and 2021

GROUP BY  txn_year,user_id;                              -- Groups results by year and user to calculate averages per user per year
