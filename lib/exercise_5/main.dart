import 'package:answers_list_poo/exercise_5/order.dart';
import 'package:answers_list_poo/exercise_5/order_item.dart';
import 'package:answers_list_poo/exercise_5/product.dart';

import 'client.dart';

void main() {
  Client client = Client(
    name: 'Noemy Roberta',
    email: 'noemy.roberta@bigtech.com',
    birthDate: DateTime(2000, 09, 07),
  );

  OrderStatus status = OrderStatus.PROCESSING;
  Order order = Order(client: client, status: status);

  String productName = 'Caldinho';
  double productPrice = 5.00;
  int quantity = 2;

  Product product = Product(productName, productPrice);
  OrderItem item = OrderItem(quantity, product);

  order.addItem(item);

  print('ORDER SUMMARY:');
  print(order);
}
