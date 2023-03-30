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

  Future<bool> getLoginState() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getBool(appPrefsLoginKey) ?? false;
  }
}
