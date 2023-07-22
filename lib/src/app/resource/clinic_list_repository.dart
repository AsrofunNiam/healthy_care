import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:healthy_care/src/app/model/clinic_list.dart';
import 'package:healthy_care/src/app/resource/base_api.dart';

class ClinicListRepository extends Repository {
  ClinicListRepository({required super.dio});

  static final pathProduct = '${Api.urlApi}/api/restaurants';

  static ClinicListRepository instance = ClinicListRepository(dio: Api.dio);

  Future<List<ClinicList>> clinicListFetch({
    required String accessToken,
  }) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        pathProduct,
        options: Options(
          headers: {
            RequestHeader.authorization: 'Bearer $accessToken',
          },
        ),
      );

      final product = <ClinicList>[];
      final data = response.data!['data'] as List;

      for (final data in data) {
        product.add(ClinicList.fromJson(data as Map<String, dynamic>));
      }

      return product;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> clinicListCreate({
    required String accessToken,
    required String id,
    required String no,
    required String name,
    required String type,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        pathProduct,
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
        data: jsonEncode({
          'id': id,
          'name': name,
          'product_no': no,
          'type': type,
        }),
      );

      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> clinicListUpdate({
    required String accessToken,
    required String idProduct,
    required String no,
    required String name,
    required String type,
  }) async {
    try {
      final result = await dio.put<Map<String, dynamic>>(
        '$pathProduct/$idProduct',
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
        data: jsonEncode({
          'name': name,
          'product_no': no,
          'type': type,
        }),
      );
      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> clinicListDelete({
    required String accessToken,
    required String id,
  }) async {
    try {
      final result = await dio.delete<Map<String, dynamic>>(
        '$pathProduct/$id',
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
      );
      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }
}
