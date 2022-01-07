import 'package:flutter/material.dart';
import 'package:vinvestor/vui/colors/colors.dart';

class CustomButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  Color backgroundColor;
  Color btnTextColor;
  CustomButton(this.title, this.onCustomButtonPressed, this.backgroundColor, this.btnTextColor,  {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title, style: const TextStyle(color: AppColors.colorSeqBlueOne, fontSize: 20),),
    );
  }
}
