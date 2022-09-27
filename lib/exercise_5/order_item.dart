import 'product.dart';

class OrderItem {
  final int quantity;
  final Product product;

  OrderItem(this.quantity, this.product);

  get subTotal => quantity * product.price;

  @override
  String toString() {
    return '\nProduct: $product, \nQuantity: $quantity';
  }
}
