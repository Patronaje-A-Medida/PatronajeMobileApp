import 'dart:io';

import 'package:dio/dio.dart';
import 'package:patronaje_mobile_app/domain/handlers/exceptions/general_exception.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_login.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_create.dart';
import 'package:patronaje_mobile_app/domain/models/auth/user_client_token.dart';
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
        throw Exception('bad request');
      }

      final userClientToken = UserClientToken.fromJson(response.data);
      return userClientToken;
    } on DioError catch (err) {
      print('dio error signin ${err.message}');
      throw Exception('dio error');
    } on SocketException catch (err) {
      print('socket error signin ${err.message}');
      throw Exception('socket error');
    } on Exception catch (_) {
      print('error api ? ');
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
}
