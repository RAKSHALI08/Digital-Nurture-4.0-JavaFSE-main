/*
Scenario 3: The bank wants to send reminders to customers whose loans are due within the next 30 days.
o	Question: Write a PL/SQL block that fetches all loans due in the next 30 days and prints a reminder message for each customer.
*/



BEGIN
    FOR loan_rec IN (
        SELECT l.LoanID, c.Name, l.DueDate
        FROM Loans l
        JOIN Customers c ON c.CustomerID = l.CustomerID
        WHERE l.DueDate BETWEEN SYSDATE AND SYSDATE + 30
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Reminder: ' || loan_rec.Name || ', your loan #' || loan_rec.LoanID ||
                             ' is due on ' || TO_CHAR(loan_rec.DueDate, 'DD-MON-YYYY'));
    END LOOP;
END;






/*
output
Reminder: Alice, your loan #101 is due on 04-JUL-2025
Reminder: Charlie, your loan #103 is due on 29-JUN-2025
Reminder: David, your loan #104 is due on 13-JUL-2025
*/
