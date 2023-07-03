import 'package:blood_bank/core/network/api_url.dart';
import 'package:blood_bank/domain/models/auth/register_model.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class AuthRemoteDataSource {
  final Dio _dio;
  AuthRemoteDataSource({required Dio dio}) : _dio = dio;

  Future<bool> donorRegister(DonorRegisterRequest registerRequest) async {
    try {
      await _dio.post(
        'https://www.tulionsbloodbank.org/api/user/register',
        data: {
          "name": registerRequest.name,
          "email": registerRequest.email,
          "age": registerRequest.age,
          "phone": registerRequest.phone,
          "gender": registerRequest.phone,
          "blood_group": registerRequest.bloodGroup,
          "last_donation_date": registerRequest.lastDonatedDate,
          "address": registerRequest.address,
        },
        
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<User> donorLogin(String mobileNumber, String donorCardId) async {
    try {
      final response = await _dio.post(
        ApiUrl.donorLogin,
        data: {
          'mobile': mobileNumber,
          'donorcardid': donorCardId,
        },
      );
      var data = response.data["data"] as Map<String, dynamic>;

      return User.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }

  Future<OrganizationUserModel> organizationLogin(
      String username, String password) async {
    try {
      final response = await _dio.post(ApiUrl.institutionLogin, data: {
        'user_name': username,
        'password': password,
      });
      var data = response.data["data"] as Map<String, dynamic>;

      return OrganizationUserModel.fromJson(data);
    } catch (e) { 
      rethrow;
    }
  }
}
