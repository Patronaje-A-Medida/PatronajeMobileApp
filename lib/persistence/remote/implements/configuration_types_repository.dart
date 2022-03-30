import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/configuration_types/configuration_types.dart';
import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/api_constant.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/base_configuration_types_repository.dart';

class ConfigurationTypesRepository implements BaseConfigurationTypesRepository {
  static const String _baseUrl = GESTION_API + '/configuration-types';
  static final _dio = Dio();

  @override
  Future<ConfigurationTypes> getAll() async {
    try {
      const url = _baseUrl + '/0';
      final response = await _dio.get(url);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final configurationTypes = ConfigurationTypes.fromMap(response.data);
      return configurationTypes;
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
