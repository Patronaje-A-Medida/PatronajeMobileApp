import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';
import 'package:patronaje_mobile_app/domain/models/garments/order.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/api_constant.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/base_order_repository.dart';

class OrderRepository implements BaseOrderRepository {
  static const String _baseUrl = GESTION_API + '/orders';
  static final _dio = Dio();

  @override
  Future<List<Order>> getOrdersByClientId(int idClient) async {
    try {
      const url = _baseUrl + '/mobile'; //TODO
      final response =
          await _dio.get(url, queryParameters: {'clientId': idClient}); //TODO

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
