import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';
import 'package:patronaje_mobile_app/domain/models/garments/order.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/api_constant.dart';
import 'package:patronaje_mobile_app/persistence/local/implements/user_local_data_repository.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/base_order_repository.dart';

class OrderRepository implements BaseOrderRepository {
  static const String _baseUrl = GESTION_API + '/orders';
  static final _dio = Dio();
  final UserLocalDataRepository _userLocalRepository;

  OrderRepository(this._userLocalRepository);

  @override
  Future<List<Order>> getOrdersByClientId() async {
    try {
      final userLocalData = _userLocalRepository.getUserLocalData();
      const url = _baseUrl + '/by-client';

      final response =
          await _dio.get(url, queryParameters: {'clientId': userLocalData.id});

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }
      final orders =
          (response.data as List).map((e) => Order.fromMap(e)).toList();
      return orders;
    } on SocketException catch (err) {
      throw GeneralException(message: err.message, errorCode: 500);
    } on DioError catch (err) {
      final errorResponse = ErrorDetail.fromMap(err.response?.data);
      throw GeneralException.fromErrorResponse(errorResponse);
    } on Exception catch (_) {
      rethrow;
    }
  }
}
