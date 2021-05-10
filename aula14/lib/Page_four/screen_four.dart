import 'package:aula14/Widget/back_button.dart';
import 'package:aula14/Widget/button_widget.dart';
import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Aula 14"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Page 4",
                style: TextStyle(fontSize: 25),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                    children: [
                      Text("Usuario"),
                      user != null
                          ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(user.name),
                                Text(user.age.toString()),
                              ],
                            )
                          : Text("Sem Usuário"),
                    ],
                  )),
                  ButtonWidget(
                    title: 'Home',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/',
                      );
                    },
                  ),
                  BackButtonWidget(),
                ],
              )
            ],
          ),
        ));
  }
}

class User {
  String name;
  int age;
}
