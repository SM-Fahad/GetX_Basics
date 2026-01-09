import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxworks/api_screen.dart';
import 'package:getxworks/home.dart';
// import 'package:getxworks/image_screen.dart';
import 'package:getxworks/lang.dart';
// import 'package:getxworks/list_screen.dart';
import 'package:getxworks/screen_one.dart';
import 'package:getxworks/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: lang(),
      locale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ApiScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenOne', page: () => const ScreenOne()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),

      ],
    );
  }
}
