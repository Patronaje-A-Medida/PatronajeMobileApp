import 'package:flutter/foundation.dart';
import 'package:patronaje_mobile_app/domain/models/garments/order.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/order_repository.dart';

class OrderProvider extends ChangeNotifier {
  final OrderRepository _orderRepository;

  OrderProvider(this._orderRepository);

  late List<Order> _orders = [];
}
