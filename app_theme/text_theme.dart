import 'package:flutter/material.dart';

class AppTextTheme{
  static appTextTheme(){
    return const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 18.0),
      caption: TextStyle(fontSize: 18.0),
      subtitle1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}