import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';

class MyLocalController extends GetxController {
  Locale initailLang = prefs!.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(prefs!.getString("lang")!);
  void chageLang(String codeLang) {
    Locale locale = Locale(codeLang);
    prefs!.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}

class CounterController extends GetxController {
  int counter = 0;
  @override
  void onInit() {
    super.onInit();
    LoadData();
  }

  void Clear() {
    counter = 0;
    prefs!.clear();
  }

  void Incress() {
    counter++;
    SaveData();
  }

  void SaveData() {
    prefs!.setInt('Count', counter);
  }

  void LoadData() {
    counter = prefs!.getInt('Count') ?? 0;
  }
}
