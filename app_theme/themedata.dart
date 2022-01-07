import 'package:flutter/material.dart';
import 'package:vinvestor/vui/app_theme/appbar_theme.dart';
import 'package:vinvestor/vui/app_theme/button_theme.dart';
import 'package:vinvestor/vui/app_theme/card_theme.dart';
import 'package:vinvestor/vui/colors/colors.dart';

class AppThemeData{
  static appThemeData(){
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Color(0xFF343A40),
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 18.0),
        caption: TextStyle(fontSize: 18.0),
        subtitle1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarThemeData.appBarThemeData(),
      fontFamily: 'TestFoundersGrotesk',
      elevatedButtonTheme: AppButtonTheme.elevatedButtonTheme(),
      textButtonTheme: AppButtonTheme.textButtonTheme(),
      outlinedButtonTheme: AppButtonTheme.outlinedButtonTheme(),
      cardTheme: AppCardTheme.appCardTheme(),
    );
  }
}