import 'package:aula14/Page_four/screen_four.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final String route;
  final User argumentsUser;
  final Color argumentsColor;
  final Function onTap;

  ButtonWidget({
    Key key,
    this.route,
    this.title, this.argumentsUser, this.argumentsColor, this.onTap
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0XFF8257e6)),
          elevation: MaterialStateProperty.all(2),
          shadowColor: MaterialStateProperty.all(Colors.black)),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

