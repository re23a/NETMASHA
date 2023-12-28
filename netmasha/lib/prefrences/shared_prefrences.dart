//Save user token and theme

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  late final SharedPreferences _preferences;
  initializePref() async {
    _preferences = await SharedPreferences.getInstance();
  }

  void setToken(String token) async {
    await _preferences.setString("token", token);
  }

  String getToken() {
    return _preferences.getString("token") ?? "";
  }

  void cleanToken() async {
    await _preferences.setString("token", "");
  }

  void cleanSharedPref() {
    _preferences.clear();
  }
}
