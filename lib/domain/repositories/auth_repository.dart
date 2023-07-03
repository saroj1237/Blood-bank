import 'package:blood_bank/core/exceptions/network_exception.dart';
import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/data/auth_remote_datasource.dart';
import 'package:blood_bank/domain/models/auth/register_model.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AppPreferences appPreferences;
  AuthRepository({
    required this.authRemoteDataSource,
    required this.appPreferences,
  });

  Future<Either<String, bool>> donorRegister(
      DonorRegisterRequest registerRequest) async {
    try {
      final success = await authRemoteDataSource.donorRegister(registerRequest);
      return Right(success);
    } catch (e) {
      if (e is DioError) {
        // final error = e;
        if (e.type == DioErrorType.badResponse) {
          if (e.response?.statusCode == 401) {
            return const Left("The phone number is already taken.");
          }
        } else {
          return const Left("Something went wrong");
        }
      }
      return Left(e.toString());
    }
  }

  Future<User> donorLogin(String mobileNumber, String donorCardId) async {
    try {
      final user =
          await authRemoteDataSource.donorLogin(mobileNumber, donorCardId);

      await Future.wait([
        appPreferences.setLoginType(donorLoginType),
        appPreferences.setLoginStateDonor(user),
      ]);
      return user;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<OrganizationUserModel> organizationLogin(
      String username, String password) async {
    try {
      final orgUser =
          await authRemoteDataSource.organizationLogin(username, password);
      await Future.wait([
        appPreferences.setLoginType(orgLoginType),
        appPreferences.setLoginStateOrg(orgUser),
      ]);
      return orgUser;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
