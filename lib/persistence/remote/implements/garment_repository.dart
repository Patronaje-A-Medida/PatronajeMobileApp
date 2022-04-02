import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_query.dart';
import 'package:patronaje_mobile_app/domain/models/garments/garment_read.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/api_constant.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/base_garment_repository.dart';

class GarmentRepository implements BaseGarmentRepository {
  static const String _baseUrl = GESTION_API + '/garments';
  static final _dio = Dio();

  @override
  Future<List<GarmentRead>> getAllByQuery(GarmentQuery garmentQuery) async {
    try {
      const url = _baseUrl + '/by-query/mobile';
      final request = garmentQuery.toJson();
      final response = await _dio.post(url, data: request);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final garments =
          (response.data as List).map((e) => GarmentRead.fromMap(e)).toList();

      return garments;
    } on SocketException catch (err) {
      throw GeneralException(message: err.message, errorCode: 500);
    } on DioError catch (err) {
      final errorResponse = ErrorDetail.fromMap(err.response?.data);
      throw GeneralException.fromErrorResponse(errorResponse);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<GarmentRead> getById(int id) async {
    try {
      const url = _baseUrl + '/details/mobile';
      final response = await _dio.get(url, queryParameters: {'garmentId': id});

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final garment = GarmentRead.fromMap(response.data);
      return garment;
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
