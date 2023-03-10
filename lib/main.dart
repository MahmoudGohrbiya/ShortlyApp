import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly/Constants/constants.dart';
import 'Screens/HomeScreen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shortly',
      theme: ThemeData(
        primaryColor: PrimaryCyanColor!,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: PrimaryCyanColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
