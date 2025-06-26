/*
Scenario 2: A customer can be promoted to VIP status based on their balance.
o	Question: Write a PL/SQL block that iterates through all customers and sets a flag IsVIP to TRUE for those with a balance over $10,000.

*/
BEGIN
    FOR cust IN (SELECT CustomerID, Name, Balance FROM Customers WHERE Balance > 10000) LOOP
        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = cust.CustomerID;

        DBMS_OUTPUT.PUT_LINE(cust.Name || ' promoted to VIP.');
    END LOOP;
END;
/



/*
output
Bob promoted to VIP.
Charlie promoted to VIP.
*/

