import 'dart:convert';

import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

const appPrefsOnboardingKey = "APP_PREFS_ONBOARDING_KEY";
const appPrefsLoginKey = "APP_PREFS_LOGIN_KEY";

class AppPreferences {
  AppPreferences();

  Future<bool> setOnboardingState() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return await sp.setBool(appPrefsOnboardingKey, true);
  }

  Future<bool> getOnboardingState() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getBool(appPrefsOnboardingKey) ?? false;
  }

  Future<bool> setLoginState(User user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return await sp.setString(appPrefsLoginKey, jsonEncode(user.toJson()));
  }

  Future<User?> getLoginState() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final userString = sp.getString(appPrefsLoginKey);
    if (userString == null) return null;
    return User.fromJson(jsonDecode(userString));
  }

  Future<bool> removerLoginState() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
   return await sp.remove(appPrefsLoginKey);
  }
}
