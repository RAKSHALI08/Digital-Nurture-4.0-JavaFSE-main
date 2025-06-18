package ecommerce;

public class TestSearch {
    public static void main(String[] args) {
        Product[] products = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Shoes", "Footwear"),
            new Product(103, "Watch", "Accessories"),
            new Product(104, "Phone", "Electronics"),
            new Product(105, "T-Shirt", "Clothing")
        };

        String target = "Watch";

        Product linearResult = SearchEngine.linearSearch(products, target);
        System.out.println("Linear Search Result: " + (linearResult != null ? linearResult : "Product not found"));

        Product binaryResult = SearchEngine.binarySearch(products, target);
        System.out.println("Binary Search Result: " + (binaryResult != null ? binaryResult : "Product not found"));
    }
}
