import 'package:flutter/material.dart';
import 'package:vinvestor/vui/colors/colors.dart';

class AppButtonTheme{
  static elevatedButtonTheme(){
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.colorSeqBlueFour,
        onPrimary: Colors.white,
        minimumSize: Size(88, 56),
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
    );
  }

  static textButtonTheme(){
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        minimumSize: const Size(18, 10),
        textStyle: const TextStyle(
          fontSize: 18,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}