import 'dart:io';

import 'package:blood_bank/domain/models/blood/blood_stock.dart';
import 'package:dio/dio.dart';

class BloodServiceRemoteDataSource {
  final Dio _dio;
  BloodServiceRemoteDataSource({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> getBloodStock() async {
    try {
      final response = await _dio
          .get("https://halfdigitsdev.com/Mobile/GetAllComponentStock");
      print(response);
      final json = response.data['data'][0] as Map<String, dynamic>;
      return json;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> requestBlood(RequestBloodReq request , File file) async {
    try {
      var data = request.toJson();
      data['img'] = {
        // "image": await MultipartFile.fromFile(File('hel').path),
        "image": "image",
        "type": "image/jpg"
      };
      var formData = FormData.fromMap(data);
      print(data);
      final response = await _dio.post(
        "https://halfdigitsdev.com/Mobile/RequestBlood",
        data: formData,
      );
      print(response);
      final json = response.data['data'][0] as Map<String, dynamic>;
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
