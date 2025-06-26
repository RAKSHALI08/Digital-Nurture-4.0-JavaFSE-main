/*

Scenario 1: The bank needs to process monthly interest for all savings accounts.
o	Question: Write a stored procedure ProcessMonthlyInterest that calculates and updates the balance of all savings accounts by applying 
an interest rate of 1% to the current balance.


*/
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest IS
BEGIN
    UPDATE SavingsAccounts
    SET Balance = Balance + (Balance * 0.01);
END;
/


/*
sample table:
| AccountID | AccountHolder | Balance |
| --------- | ------------- | ------- |
| 101       | Alice         | 1000    |
| 102       | Bob           | 2000    |
| 103       | Carol         | 3000    |


output:
| AccountID | AccountHolder | Balance |
| --------- | ------------- | ------- |
| 101       | Alice         | 1010.00 |
| 102       | Bob           | 2020.00 |
| 103       | Carol         | 3030.00 |


*/

