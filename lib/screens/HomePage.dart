import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../General/general.dart';
import '../local/MyLocalController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    MyLocalController MLC = Get.find();
    final counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: text(text: '12'.tr, size: 20.0),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              width: Get.mediaQuery.size.width / 2,
              height: Get.mediaQuery.size.height / 2.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), color: mainColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Get.mediaQuery.size.width / 2.2,
                      height: Get.mediaQuery.size.height / 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "${counterController.counter}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(
                            text: '1'.tr,
                            size: 18.0,
                            color: Colors.white,
                            bold: FontWeight.bold),
                        text(
                            text: '2'.tr,
                            size: 18.0,
                            color: Colors.white,
                            bold: FontWeight.bold),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                                title: '11'.tr,
                                content: Icon(
                                  Icons.verified,
                                  color: mainColor,
                                ));
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              counterController.Clear();
                            });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counterController.Incress();
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                          title: '7'.tr,
                          content: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  children: [
                                    sizedBox(h: 20.0),
                                    MaterialButton(
                                      onPressed: () {
                                        MLC.chageLang('ar');
                                      },
                                      child: text(
                                          text: '5'.tr,
                                          size: 24.0,
                                          color: Colors.white,
                                          bold: FontWeight.bold),
                                      color: mainColor,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                    ),
                                    sizedBox(h: 20.0),
                                    MaterialButton(
                                      onPressed: () {
                                        MLC.chageLang('en');
                                      },
                                      child: text(
                                          text: '6'.tr,
                                          size: 24.0,
                                          color: Colors.white,
                                          bold: FontWeight.bold),
                                      color: mainColor,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: text(
                            text: '3'.tr,
                            size: 16.0,
                            color: Colors.white,
                            bold: FontWeight.bold),
                      ),
                    ),
                  ),
                  //mosab 
                  GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                          title: '8'.tr,
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Get.changeTheme(ThemeData.dark());
                                    SharedPreferences.getInstance()
                                        .then((prefs) {
                                      prefs.setBool('isDarkMode', true);
                                    });
                                    // Get.appUpdate();
                                    Get.back();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: mainColor,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.dark_mode),
                                    sizedBox(w: 10.0),
                                    text(
                                        text: '9'.tr,
                                        size: 18.0,
                                        color: Colors.white,
                                        bold: FontWeight.bold),
                                  ],
                                ),
                              ),
                              sizedBox(h: 16.0),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Get.changeTheme(ThemeData.light());
                                    SharedPreferences.getInstance()
                                        .then((prefs) {
                                      prefs.setBool('isDarkMode', false);
                                      Get.back();
                                    });
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: mainColor,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.nightlight_round),
                                    sizedBox(w: 10.0),
                                    text(
                                        text: '10'.tr,
                                        size: 18.0,
                                        color: Colors.white,
                                        bold: FontWeight.bold),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: text(
                              text: '4'.tr,
                              size: 16.0,
                              color: Colors.white,
                              bold: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
