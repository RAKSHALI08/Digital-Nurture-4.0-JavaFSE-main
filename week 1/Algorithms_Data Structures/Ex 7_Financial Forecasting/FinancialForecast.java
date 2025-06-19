import java.util.Scanner;

public class FinancialForecast {

    // Recursive method to calculate future value
    public static double predictFutureValue(int years, double currentValue, double rate) {
        if (years == 0) {
            return currentValue;
        }
        return predictFutureValue(years - 1, currentValue, rate) * (1 + rate);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the initial amount: ");
        double initialValue = sc.nextDouble();

        System.out.print("Enter the annual growth rate (in %): ");
        double ratePercent = sc.nextDouble();

        System.out.print("Enter the number of years: ");
        int years = sc.nextInt();

        double rate = ratePercent / 100;

        
        double futureValue = predictFutureValue(years, initialValue, rate);

      
        System.out.printf("Future value after %d years: %.2f\n", years, futureValue);
    }
}
