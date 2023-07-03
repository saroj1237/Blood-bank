import 'dart:convert';

import 'package:blood_bank/domain/models/auth/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

const appPrefsOnboardingKey = "APP_PREFS_ONBOARDING_KEY";
const appPrefsLoginUserKey = "APP_PREFS_LOGIN_KEY";
const appPrefsLoginTypeKey = "APP_PREFS_LOGIN_TYPE_KEY";

const donorLoginType = "DONOR_LOGIN_TYPE";
const orgLoginType = "ORG_LOGIN_TYPE";

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

  Future<bool> setLoginType(String loginUserType) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return await sp.setString(appPrefsLoginTypeKey, loginUserType);
  }

  Future<String?> getLoginType() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(appPrefsLoginTypeKey);
  }

  // donor login state
  Future<bool> setLoginStateDonor(User user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return await sp.setString(appPrefsLoginUserKey, jsonEncode(user.toJson()));
  }

  Future<User?> getLoginStateDonor() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final userString = sp.getString(appPrefsLoginUserKey);
    if (userString == null) return null;
    return User.fromJson(jsonDecode(userString));
  }

  // org login state

  Future<bool> setLoginStateOrg(OrganizationUserModel user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return await sp.setString(appPrefsLoginUserKey, jsonEncode(user.toJson()));
  }

  Future<OrganizationUserModel?> getLoginStateOrg() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final userString = sp.getString(appPrefsLoginUserKey);
    if (userString == null) return null;
    return OrganizationUserModel.fromJson(jsonDecode(userString));
  }

  Future<bool> removerLoginState() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.remove(appPrefsLoginTypeKey);
    await sp.remove(appPrefsLoginUserKey);
    return true;
  }
}
