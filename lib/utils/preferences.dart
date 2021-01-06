import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:prime_clone/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  static SharedPreferences _prefsInstance;

  static const String KEY_LANGUAGE_CODE = 'LANGUAGE_CODE';
  static const String KEY_COUNTRY_CODE = 'COUNTRY_CODE';

  static bool _initCalled = false;

  static Future<void> init() async {
    _initCalled = true;
    _prefsInstance = await _prefs;
    print("init called");
  }

  static void dispose() {
    _prefs = null;
    _prefsInstance = null;
    print("Dispose called");
  }

  static Future<int> getInt(String key, int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? value;
  }

  static setInt(String key, int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  static setString(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String> getString(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? value;
  }

  static setBool(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  static Future<bool> getBool(String key, bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? value;
  }

  static setDouble(String key, double value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  static Future<double> getDouble(String key, double value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? value;
  }

  static clear() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  static clearAccount() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setLanguageCode(String value) async {
    var instance = await _prefs;
    return instance?.setString(KEY_LANGUAGE_CODE, value) ?? Future.value(false);
  }

  static String getLanguageCode([String defValue]) {
    assert(_initCalled,
    "Prefs.init() must be called first in an initState() preferably!");
    assert(_prefsInstance != null,
    "Maybe call Prefs.getKeysF() instead. SharedPreferneces not ready yet!");

    return _prefsInstance.getString(KEY_LANGUAGE_CODE) ?? defValue ?? "";
  }

  // Save Country Code value to persistent storage
  static Future<bool> setCountryCode(String value) async {
    var instance = await _prefs;
    return instance?.setString(KEY_COUNTRY_CODE, value) ?? Future.value(false);
  }

  static String getCountryCode([String defValue]) {
    assert(_initCalled,
    "Prefs.init() must be called first in an initState() preferably!");
    assert(_prefsInstance != null,
    "Maybe call Prefs.getKeysF() instead. SharedPreferneces not ready yet!");

    return _prefsInstance.getString(KEY_COUNTRY_CODE) ?? defValue ?? "";
  }

  static Future<bool> setLocale(Locale locale) async {
    return await setLanguageCode(locale.languageCode) &&
        await setCountryCode(locale.countryCode) ??
        Future.value(false);
  }


  void clearUserSession() {}
}
