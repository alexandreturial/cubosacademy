import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(2),
          shadowColor: MaterialStateProperty.all(Colors.black)),
      child: Text(
        "Voltar",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}