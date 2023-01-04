import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  static final AppPref _instance = AppPref._internal();
  static String ShortList = "ShortLikList";

  factory AppPref() {
    return _instance;
  }

  AppPref._internal();

  Future<void> saveShortList({@required String? Data}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(ShortList, Data!);
  }

  Future<String?> getShortList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(ShortList);
  }
}
