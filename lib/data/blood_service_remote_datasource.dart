import 'dart:io';

import 'package:blood_bank/domain/models/blood/blood_stock.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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

  Future<bool> requestBlood(BloodRequest request) async {
    try {
      var data = request.toJson();
      data['image'] = await MultipartFile.fromFile(request.imagePath!);

      var formData = FormData.fromMap(data);
      debugPrint(data.toString());
      final response =
          await _dio.post("https://cms.onvirotech.com/api/v1/submit-enquiry",
              data: formData,
              options: Options(
                contentType: 'multipart/form-data',
              ));
      debugPrint(response.toString());

      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> donateBlood(
      String name, String phone, String dob, String hospitalName) async {
    try {
      final response = await Dio().post(
        "https://www.tulionsbloodbank.org/api/donateNow/save",
        data: {
          'fullname': name,
          "dob": dob,
          'phone': phone,
          'hospital_name': hospitalName,
        },
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
