import 'package:aula14/Page_four/screen_four.dart';
import 'package:aula14/Widget/back_button.dart';
import 'package:aula14/Widget/button_widget.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color background = ModalRoute.of(context).settings.arguments;

    User user = new User();
    user.name = "Alexandre";
    user.age = 20;

    return Scaffold(
      backgroundColor: background != null ? background : Colors.black,
      appBar: AppBar(
        title: Text("Aula 14"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Page 3",
              style: TextStyle(
                fontSize: 25,
                color: background != null && background != Colors.black ?  Colors.black : Colors.white
              ),
            ),
            Column(
              children: [
                BackButtonWidget(),
                ButtonWidget(
                  title: 'Page 4',
                  onTap: (){
                    Navigator.pushNamed(
                      context, 
                      'fourth', 
                      arguments: user
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
