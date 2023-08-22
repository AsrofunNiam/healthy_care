import 'dart:convert';

import 'package:healthy_care/src/app/model/authentication.dart';
import 'package:healthy_care/src/app/resource/base_api.dart';
import 'package:healthy_care/src/app/util/exception.dart';

class UserAccountRepository extends Repository {
  UserAccountRepository({required super.dio});
  static final pathRegister = '${Api.urlApi}/api/auth/local';

  static UserAccountRepository instance = UserAccountRepository(dio: Api.dio);
  Future<Authentication?> createUser({
    required String name,
    required String password,
    required String email,
    required String username,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
          '$pathRegister/register',
          data: jsonEncode({
            "name": email,
            "password": password,
            "email": email,
            "username": username
          }));
      return Authentication.fromJson(
        result.data!,
      );
    } catch (error) {
      throw ApiException('Error calling API: $error');
    }
  }

  Future<Authentication?> updateUser({
    required String name,
    required String password,
    required String email,
    required String username,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
          '$pathRegister/register',
          data: jsonEncode({
            "name": email,
            "password": password,
            "email": email,
            "username": username
          }));
      return Authentication.fromJson(
        result.data!,
      );
    } catch (error) {
      throw ApiException('Error calling API: $error');
    }
  }
}
