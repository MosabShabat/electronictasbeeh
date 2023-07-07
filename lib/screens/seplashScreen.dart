import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'HomePage.dart';

class seplashScreen extends StatefulWidget {
  const seplashScreen({super.key});

  @override
  State<seplashScreen> createState() => _seplashScreenState();
}

class _seplashScreenState extends State<seplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(() => HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircleAvatar(
          radius: 120,
          backgroundImage: AssetImage(
            'assets/images/seplash.jpg',
          ),
        ),
      ),
    );
  }
}
