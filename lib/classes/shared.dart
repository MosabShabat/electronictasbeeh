import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

enum PrefKeys { Count }

class sharedPrefController {
  static sharedPrefController? _instance;
  sharedPrefController._();
  factory sharedPrefController() {
    return _instance ??= sharedPrefController._();
  }
  getInit() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setData({key, int? value}) async {
    return await prefs!.setInt(key, value!);
  }

  T? getData<T>({key}) {
    return prefs!.get(key) as T?;
  }

  Future<bool> clear() async {
    return await prefs!.clear();
  }

  Future<bool> remove({Key}) async {
    return await prefs!.remove(Key);
  }
}
