import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'local/MyLocalController.dart';
import 'local/local.dart';
import 'screens/HomePage.dart';
import 'screens/seplashScreen.dart';

SharedPreferences? prefs;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  await GetStorage.init();
  bool isDarkMode = prefs!.getBool('isDarkMode') ?? false;
  runApp(MyApp(isDarkMode));
}

class MyApp extends StatelessWidget {
  final bool isDarkMode;
  MyApp(this.isDarkMode);

  @override
  Widget build(BuildContext context) {
    MyLocalController controller = Get.put(MyLocalController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      // theme: ThemeData(primarySwatch: Colors.blue),
      // darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),
      // theme: ThemeData(
      //   brightness: Get.isDarkMode ? Brightness.dark : Brightness.light,
      // ),
      translations: MyLocal(),
      locale: controller.initailLang,
      initialRoute: '/seplashScreen',
      getPages: [
        GetPage(name: '/HomePage', page: () => HomePage()),
        GetPage(name: '/seplashScreen', page: () => seplashScreen()),
      ],
    );
  }
}
