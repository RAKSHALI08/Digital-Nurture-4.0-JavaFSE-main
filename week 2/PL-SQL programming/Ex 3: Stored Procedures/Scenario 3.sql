/*
Scenario 3: Customers should be able to transfer funds between their accounts.
Question: Write a stored procedure TransferFunds that transfers a specified amount from one account to another, checking
that the source account has sufficient balance before making the transfer.

*/

CREATE OR REPLACE PROCEDURE TransferFunds (
    p_source_acc IN NUMBER,
    p_target_acc IN NUMBER,
    p_amount IN NUMBER
) IS
    v_balance NUMBER;
BEGIN
    SELECT Balance INTO v_balance FROM Accounts WHERE AccountID = p_source_acc FOR UPDATE;

    IF v_balance >= p_amount THEN
        UPDATE Accounts SET Balance = Balance - p_amount WHERE AccountID = p_source_acc;
        UPDATE Accounts SET Balance = Balance + p_amount WHERE AccountID = p_target_acc;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient funds in source account.');
    END IF;
END;
/

/*
Sample Table

| AccountID | AccountHolder | Balance |
| --------- | ------------- | ------- |
| 201       | Rahul         | 5000    |
| 202       | Sneha         | 3000    |

output:
| AccountID | AccountHolder | Balance |
| --------- | ------------- | ------- |
| 201       | Rahul         | 4000    |
| 202       | Sneha         | 4000    |

