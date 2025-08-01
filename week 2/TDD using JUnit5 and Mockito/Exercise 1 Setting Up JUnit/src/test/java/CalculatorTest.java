import org.junit.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorTest {

    Calculator calc = new Calculator();

    @org.junit.jupiter.api.Test
    public void testAdd() {
        assertEquals(5, calc.add(2, 3));
    }

    @Test
    public void testSubtract() {
        assertEquals(1, calc.subtract(4, 3));
    }

    @Test
    public void testMultiply() {
        assertEquals(12, calc.multiply(4, 3));
    }

    @Test
    public void testDivide() {
        assertEquals(2, calc.divide(6, 3));
    }

    @Test(expected = ArithmeticException.class)
    public void testDivideByZero() {
        calc.divide(5, 0);
    }
}