import 'package:patronaje_mobile_app/domain/models/garments/order.dart';

abstract class BaseOrderRepository {
  Future<List<Order>> getOrdersByClientId();
}
