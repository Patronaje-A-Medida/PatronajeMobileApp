import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_update.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_login.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_create.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_token.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_read.dart';
import 'package:patronaje_mobile_app/domain/models/errors/error_detail.dart';
import 'package:patronaje_mobile_app/domain/utils/constants/api_constant.dart';
import 'package:patronaje_mobile_app/persistence/remote/interfaces/base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  static const String _baseUrl = AUTH_API;
  static final _dio = Dio();

  @override
  Future<UserClientToken> signIn(UserLogin userLogin) async {
    try {
      const url = _baseUrl + '/sign-in/users-client';
      final request = userLogin.toJson();
      final response = await _dio.post(url, data: request);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final userClientToken = UserClientToken.fromMap(response.data);
      return userClientToken;
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
  Future<UserClientToken> signUp(UserCreate userCreate) async {
    try {
      const url = _baseUrl + '/sign-up/users-client';
      final request = userCreate.toJson();
      final response = await _dio.post(url, data: request);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final userClientToken = UserClientToken.fromMap(response.data);
      return userClientToken;
    } on DioError catch (err) {
      final errorResponse = ErrorDetail.fromMap(err.response?.data);
      throw GeneralException.fromErrorResponse(errorResponse);
    } on SocketException catch (err) {
      throw GeneralException(message: err.message, errorCode: 500);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserRead> updateProfile(UserClientUpdate userClientUpdate) async {
    try {
      const url = _baseUrl + '/profiles/update-client-profile';
      final request = userClientUpdate.toJson();
      final response = await _dio.post(url, data: request);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final userRead = UserRead.fromMap(response.data);
      return userRead;
    } on DioError catch (err) {
      final errorResponse = ErrorDetail.fromMap(err.response?.data);
      throw GeneralException.fromErrorResponse(errorResponse);
    } on SocketException catch (err) {
      throw GeneralException(message: err.message, errorCode: 500);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> uploadImageProfile(int userId, File imageFile) async {
    try {
      final url = _baseUrl + '/profiles/upload-client-image/$userId';

      final fileName = imageFile.path.split('/').last;
      FormData formData = FormData.fromMap({
        'imageFile':
            await MultipartFile.fromFile(imageFile.path, filename: fileName),
      });

      final response = await _dio.post(url, data: formData);

      if (response.statusCode != 200) {
        final errorResponse = ErrorDetail.fromMap(response.data);
        throw GeneralException.fromErrorResponse(errorResponse);
      }

      final String imageUrl = response.data;
      return imageUrl;
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
