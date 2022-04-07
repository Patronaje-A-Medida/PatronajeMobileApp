import 'package:patronaje_mobile_app/domain/models/garments/order.dart';
import 'package:patronaje_mobile_app/domain/models/orders/order_create.dart';

abstract class BaseOrderRepository {
  Future<List<Order>> getOrdersByClientId();
  Future<bool> createOrder(OrderCreate orderCreate);
}
