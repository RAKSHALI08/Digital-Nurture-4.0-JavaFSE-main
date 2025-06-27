package com.example;

import org.junit.Before;
import org.junit.After;
import org.junit.Test;
import static org.junit.Assert.*;

public class BankAccountTest {

    private BankAccount account;

    @Before
    public void setUp() {
        account = new BankAccount(100);
        System.out.println("Setup complete.");
    }

    @After
    public void tearDown() {
        System.out.println("Teardown complete.\n");
    }

    @Test
    public void testDeposit() {

        account.deposit(50);


        assertEquals(150, account.getBalance());
    }

    @Test
    public void testWithdraw() {
        account.withdraw(30);

        assertEquals(70, account.getBalance());
    }

    @Test
    public void testMultipleOperations() {

        account.deposit(20);
        account.withdraw(10);


        assertEquals(110, account.getBalance());
    }
}
