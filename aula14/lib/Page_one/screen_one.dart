import 'package:aula14/Widget/button_widget.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 14"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Home",
              style: TextStyle(fontSize: 25),
            ),
            Column(
              children: [
                ButtonWidget(
                  title: 'Page 2',
                  onTap: (){
                    Navigator.pushNamed(
                      context, 
                      'second', 
                    );
                  },
                ),
                ButtonWidget(
                  title: 'Page 3',
                  onTap: (){
                    Navigator.pushNamed(
                      context, 
                      'third', 
                      arguments: Colors.black
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
