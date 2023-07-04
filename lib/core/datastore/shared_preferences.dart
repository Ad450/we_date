import 'package:shared_preferences/shared_preferences.dart';

class CustomSharedPreferences {
  Future<void> setBool(String key, bool value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(key, value);
  }

  Future<bool?> getBool(String key) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.getBool(key);
  }
}
