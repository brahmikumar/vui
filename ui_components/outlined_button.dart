import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  String title;
  VoidCallback onCustomButtonPressed;
  AppOutlinedButton(this.title, this.onCustomButtonPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onCustomButtonPressed,
      child: Text(title, style: TextStyle(color: Colors.black, fontSize: 20),),
    );
  }
}
