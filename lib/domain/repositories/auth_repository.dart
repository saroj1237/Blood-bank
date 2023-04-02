import 'package:blood_bank/core/services/app_preferences.dart';
import 'package:blood_bank/data/auth_remote_datasource.dart';
import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:flutter/foundation.dart';

class AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AppPreferences appPreferences;
  AuthRepository({
    required this.authRemoteDataSource,
    required this.appPreferences,
  });

  Future<User> donorLogin(String mobileNumber, String donorCardId) async {
    try {
      final user =
          await authRemoteDataSource.donorLogin(mobileNumber, donorCardId);
      await appPreferences.setLoginState(user);
      return user;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<OrganizationUserModel> organizationLogin(
      String username, String password) async {
    try {
      final user =
          await authRemoteDataSource.organizationLogin(username, password);

      return user;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
