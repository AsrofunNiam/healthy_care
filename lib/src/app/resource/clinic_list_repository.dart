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
      final dummyClinic = <dynamic, dynamic>{
        'data': [
          {
            "id": 6,
            "attributes": {
              "name": "Clinic Medical Center",
              "description": "Specialist Kanker Dan Penyakit Dalam",
              "latitude": "-6.89382",
              "longitude": "110.985203",
              "address":
                  "Jl. Abdul Muis No.2-4Kel. Petojo SelatanKec. GambirJakarta Pusat",
              "createdAt": "2023-06-15T09:42:23.355Z",
              "updatedAt": "2023-08-02T11:19:07.756Z",
              "publishedAt": "2023-06-15T08:35:25.622Z",
              "photo":
                  "http://103.150.116.14:1337/uploads/scaled_ac56046f027832f62f1baa87550f6b8d_0dd329ec72.jpg",
              "userId": "27",
              "rating": 3,
            }
          },
          {
            "id": 26,
            "attributes": {
              "name": "Clinic purna Indah Kebayoran",
              "description": "Specialist Medicare dan Penyakit Dalam",
              "latitude": "-6.895071",
              "longitude": "110.985266",
              "address":
                  " Jl. Gatot Subroto No. 27 Kel. Karet Semanggi Kec. Setiabudi Jakarta Selatan",
              "createdAt": "2023-06-22T02:31:08.204Z",
              "updatedAt": "2023-08-02T08:15:38.718Z",
              "publishedAt": "2023-06-15T08:35:25.622Z",
              "photo":
                  "https://images.unsplash.com/photo-1533090699061-11bd9fc5a96b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=686&q=80",
              "userId": "1",
              "rating": 5,
            }
          },
          {
            "id": 33,
            "attributes": {
              "name": "Clinic Medical Kebayoran",
              "description": "Specialist Mata",
              "latitude": "10",
              "longitude": "10",
              "address": "jalan angkasa",
              "createdAt": "2023-06-26T09:14:28.604Z",
              "updatedAt": "2023-06-26T09:14:28.604Z",
              "publishedAt": "2023-06-26T09:14:28.600Z",
              "photo":
                  "https://media-cdn.tripadvisor.com/media/photo-s/0d/db/3f/bd/getlstd-property-photo.jpg",
              "userId": "1",
              "rating": 4,
            }
          },
          {
            "id": 35,
            "attributes": {
              "name": "Clinic Kimia Farma Kebayoran",
              "description": "Specialist Penyakit Dalam",
              "latitude": "7",
              "longitude": "10",
              "address":
                  "Jl. A. Sentra Primer Baru Timur, Pulo Gebang, Jakarta Timur",
              "createdAt": "2023-06-26T14:30:47.662Z",
              "updatedAt": "2023-06-26T14:30:47.662Z",
              "publishedAt": "2023-06-26T14:30:47.656Z",
              "photo":
                  "http://103.150.116.14:1337/uploads/scaled_IMG_20230625_WA_0016_097fff9d41.jpg",
              "userId": "1",
              "rating": 5,
            }
          },
          {
            "id": 45,
            "attributes": {
              "name": "Clinic Puri Kembangan",
              "description": "Specialist Kecantikan",
              "latitude": "-6.905955853599874",
              "longitude": "110.65030985505514",
              "address":
                  "Jl. Ampera Raya No. 133, RT.05/RW.10, Ragunan, Kec. Ps. Minggu, Kota Jakarta Selatan,",
              "createdAt": "2023-06-26T15:20:45.553Z",
              "updatedAt": "2023-06-26T15:20:45.553Z",
              "publishedAt": "2023-06-26T15:20:45.547Z",
              "photo":
                  "http://103.150.116.14:1337/uploads/scaled_IMG_20230625_WA_0017_2055fb9024.jpg",
              "userId": "1",
              "rating": 4.7,
            }
          },
          {
            "id": 73,
            "attributes": {
              "name": "Clinic Media Care",
              "description": "Specialist radiologi",
              "latitude": "0",
              "longitude": "0",
              "address":
                  "Jalan Raya PKP No. 24 Kelapa Dua Wetan, Ciracas, jakarta TImur",
              "createdAt": "2023-06-29T13:58:36.388Z",
              "updatedAt": "2023-06-29T13:58:36.388Z",
              "publishedAt": "2023-06-29T13:58:36.383Z",
              "photo": "https://picsum.photos/200/300",
              "userId": "27",
              "rating": 4.7,
            }
          },
        ]
      };

      // final response = await dio.get<Map<String, dynamic>>(
      //   pathProduct,
      //   options: Options(
      //     headers: {
      //       RequestHeader.authorization: 'Bearer $accessToken',
      //     },
      //   ),
      // );

      final product = <ClinicList>[];
      // final data = response.data!['data'] as List;
      final data = dummyClinic['data'] as List;

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
