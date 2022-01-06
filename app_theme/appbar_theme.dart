import 'package:flutter/material.dart';
import 'package:vinvestor/vui/colors/colors.dart';

class AppBarThemeData{
  static appBarThemeData(){
    return const AppBarTheme(
      centerTitle: false,
      elevation:0,
      //iconTheme: new IconThemeData(color: Color(0xff171734)),
      color: AppColors.colorRedPrimary,
      titleTextStyle: TextStyle(
          color:Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold
      ),
    );
  }
}