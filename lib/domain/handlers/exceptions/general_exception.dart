import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';

class GeneralException implements Exception {
  String message;
  int errorCode;

  GeneralException({this.errorCode = 10000, this.message = ''});

  factory GeneralException.fromErrorResponse(ErrorDetail errorDetail) {
    return GeneralException(
      errorCode: errorDetail.errorCode,
      message: errorDetail.message,
    );
  }
}
