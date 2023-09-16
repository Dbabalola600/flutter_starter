import 'package:flutter/material.dart';
import 'package:flutter_starter/pages/home_page.dart';
import 'package:flutter_starter/utils/colours.dart';
import 'package:get/get.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
      ),
    );
  }
}
