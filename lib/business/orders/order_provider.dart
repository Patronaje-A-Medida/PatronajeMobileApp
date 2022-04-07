import 'package:flutter/foundation.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/garments/order.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/order_repository.dart';

class OrderProvider extends ChangeNotifier {
  final OrderRepository _orderRepository;

  OrderProvider(this._orderRepository);

  late bool _isLoading = false;
  late List<Order> _orders = [];

  List<Order> get orders => _orders;
  bool get isLoading => _isLoading;

  Future<void> getOrdersByIdCliente() async {
    try {
      _isLoading = true;
      notifyListeners();
      final result = await _orderRepository.getOrdersByClientId();
      _isLoading = false;
      _orders = result;
      notifyListeners();
    } on GeneralException catch (_) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }
}
