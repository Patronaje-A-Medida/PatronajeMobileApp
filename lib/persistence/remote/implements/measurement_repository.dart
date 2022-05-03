import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';
import 'package:patronaje_mobile_app/domain/models/measures/body_measurements.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/api_constant.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/base_measurement_repository.dart';

class MeasurementRepository implements BaseMeasurementRepository {
  static const String _baseUrl = PATRONES_MEDIDAS_API + '/body-measurements';
  static final _dio = Dio();

  @override
  Future<BodyMeasurements> computeMeasurements(
    File imageFrontal,
    File imageLateral,
    double height,
    int userId,
  ) async {
    try {
      final url = _baseUrl + '/compute-measurements/$userId';

      final fileNameFrontal = imageFrontal.path.split('/').last;
      final fileNameLateral = imageLateral.path.split('/').last;

      FormData formData = FormData.fromMap({
        'file_frontal': await MultipartFile.fromFile(imageFrontal.path,
            filename: fileNameFrontal),
        'file_lateral': await MultipartFile.fromFile(imageLateral.path,
            filename: fileNameLateral),
        'height': height,
      });

      final response = await _dio.post(url, data: formData);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final bodyMeasurements = BodyMeasurements.fromMap(response.data);
      return bodyMeasurements;
    } on DioError catch (err) {
      final errorResponse = ErrorDetail.fromMap(err.response?.data);
      throw GeneralException.fromErrorResponse(errorResponse);
    } on SocketException catch (err) {
      throw GeneralException(message: err.message, errorCode: 500);
    } on Exception catch (_) {
      rethrow;
    }
  }
}