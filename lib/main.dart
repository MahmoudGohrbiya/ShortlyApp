import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly/Constants/constants.dart';

import 'Screens/HomeScreen/HomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shortly',
      theme: ThemeData(
        primaryColor: PrimaryCyanColor!,
        // scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: PrimaryCyanColor),
        ),
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(color: kBodyTextColor),
        //   bodyText2: TextStyle(color: kBodyTextColor),
        //   headline5: TextStyle(color: kDarkBlackColor),
        // ),
      ),
      home: HomeScreen(),
    );
  }
}