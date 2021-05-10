import 'package:aula14/Page_four/screen_four.dart';
import 'package:aula14/Page_one/screen_one.dart';
import 'package:aula14/Page_three/screen_three.dart';
import 'package:aula14/Page_two/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => PageOne(),
        'second' : (context) => PageTwo(),
        'third' : (context) => PageThree(),
        'fourth' : (context) => PageFour(),
      },
      
    );
  }
}
