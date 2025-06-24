/*
Scenario 1: The bank wants to apply a discount to loan interest rates for customers above 60 years old.
o	Question: Write a PL/SQL block that loops through all customers, checks their age, and if they are above 60, apply a 1% discount to their current loan interest rates.
*/



BEGIN
    FOR cust IN (SELECT c.CustomerID, c.Name, l.LoanID, l.InterestRate
                 FROM Customers c
                 JOIN Loans l ON c.CustomerID = l.CustomerID
                 WHERE c.Age > 60) LOOP
        UPDATE Loans
        SET InterestRate = InterestRate - 1
        WHERE LoanID = cust.LoanID;

        DBMS_OUTPUT.PUT_LINE('Discount applied to ' || cust.Name ||
                             '. New Rate: ' || (cust.InterestRate - 1));
    END LOOP;
END;






/*
output
Discount applied to Alice. New Rate: 7.5
Discount applied to Charlie. New Rate: 6.5
*/
