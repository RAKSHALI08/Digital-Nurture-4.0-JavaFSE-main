package ecommerce;

public class Product {
    int productId;
    String productName;
    String category;

    public Product(int id, String name, String category) {
        this.productId = id;
        this.productName = name;
        this.category = category;
    }

    public String toString() {
        return productId + " - " + productName + " (" + category + ")";
    }
}
