import 'client.dart';
import 'order_item.dart';

enum OrderStatus { PENDING_PAYMENT, PROCESSING, SHIPPED, DELIVERED }

class Order {
  final DateTime? moment;
  final OrderStatus? status;
  final Client? client;
  final List<OrderItem> _items = <OrderItem>[];

  double _total = 0.0;

  Order({this.status, this.client}) : moment = DateTime.now();

  get total => _total;

  void addItem(OrderItem item) {
    _items.add(item);
    _total += item.subTotal;
  }

  void removeItem(OrderItem item) {
    _items.remove(item);
    _total -= item.subTotal;
  }

  @override
  String toString() {
    String textItemsList = '';
    for (OrderItem item in _items) {
      textItemsList += item.toString();
    }

    return """Status: $status, 
    \nClient: $client, 
    \nMoment: $moment,
    \nItems: $textItemsList,
    \nTotal Price: $total
    """;
  }
}
