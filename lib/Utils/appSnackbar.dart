import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shortly/Constants/constants.dart';

class AppSnackBar {
  static final AppSnackBar _instance = AppSnackBar._internal();
  factory AppSnackBar() {
    return _instance;
  }

  AppSnackBar._internal();
  void showSnackBar(String message, Function onOk,BuildContext context){
    final snackBar = SnackBar(
      duration: Duration(seconds: 4),
      backgroundColor: PrimaryCyanColor,
      content: Text(message,style: TextStyle(fontSize: 15),),
      action: SnackBarAction(
        label: 'בסדר',
        textColor: Colors.white,
        onPressed: () {
          onOk.call();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);


  }
}