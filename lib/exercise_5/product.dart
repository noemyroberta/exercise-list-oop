class Product {
  final String productName;
  final double price;

  Product(this.productName, this.price);

  @override
  String toString() {
    return '$productName, \nPrice: $price';
  }
}