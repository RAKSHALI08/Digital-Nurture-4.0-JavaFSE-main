package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class StringUtilsTest {

    StringUtils utils = new StringUtils();

    @Test
    public void testIsPalindrome() {
        assertTrue(utils.isPalindrome("madam"));
        assertFalse(utils.isPalindrome("hello"));
        assertTrue(utils.isPalindrome("RaceCar"));
        assertFalse(utils.isPalindrome(null));
    }

    @Test
    public void testReverse() {
        assertEquals("olleh", utils.reverse("hello"));
        assertEquals("avaJ", utils.reverse("Java"));
        assertNull(utils.reverse(null));
    }

    @Test
    public void testCountVowels() {
        assertEquals(2, utils.countVowels("hello"));
        assertEquals(5, utils.countVowels("education"));
        assertEquals(0, utils.countVowels("rhythm"));
        assertEquals(0, utils.countVowels(null));
    }
}
