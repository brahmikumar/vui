import 'package:flutter/material.dart';

class ToastMessage{

  static snackBarMessage(context, message){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(message),
          duration: const Duration(seconds: 5),
        )
    );
  }

  static errorSnackBar(context, message){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(message),
          duration: const Duration(seconds: 5),
          backgroundColor: Colors.red,
        )
    );
  }

  static actionSnackBar(context, message, actionLabel, snackBarAction){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:  Text(message),
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
            label: actionLabel,
            onPressed: snackBarAction,
          ),
        )
    );
  }

}
