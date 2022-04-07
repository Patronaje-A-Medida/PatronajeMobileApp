import 'package:flutter/foundation.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_read.dart';
import 'package:patronaje_mobile_app/domain/models/orders/order_create.dart';
import 'package:patronaje_mobile_app/domain/models/orders/order_detail_create.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/implements/order_repository.dart';

class BasketProvider extends ChangeNotifier {
  final UserLocalDataRepository _userLocalDataRepository;
  final OrderRepository _orderRepository;

  BasketProvider(this._userLocalDataRepository, this._orderRepository);

  OrderCreate? _newOrder;
  List<GarmentRead> _garmentsTemp = [];
  bool canMakeOrder = false;

  OrderCreate? get newOrder => _newOrder;
  List<GarmentRead> get garmentsSelected => _garmentsTemp;

  void addItemToOrder(GarmentRead garment, String color) {
    final item = OrderDetailCreate(garmentId: garment.id, color: color);

    final userData = _userLocalDataRepository.getUserLocalData();

    _newOrder ??= OrderCreate(
      orderDate: DateTime.now(),
      userClientId: userData.id,
      details: [],
    );

    _newOrder?.details.add(item);
    final copyGarment = garment.copyWith();
    _garmentsTemp.add(copyGarment);
    notifyListeners();
  }

  Future<bool> createOrder() async {
    try {
      final result = _orderRepository.createOrder(_newOrder!);
      //notifyListeners();
      return result;
    } on GeneralException catch (_) {
      rethrow;
    }
  }

  resetBasket() {
    _newOrder = null;
    _garmentsTemp.clear();
  }
}
