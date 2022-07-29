import 'dart:async';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Register {
  static const String name = 'Name';
  static const String surname = 'SurName';
  static const String account = 'Name';
  static const String password = 'PassWord';
  static const String rePassword = 'PassWord';

  // Future<SharedPreferences> newInstance() async{
  //    return await SharedPreferences.getInstance();
  //  }
  Future<bool> putString(String key, String value) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.setString(key, value);
  }

  Future<String> getString(String key) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getString(key) ?? "";
  }
}
