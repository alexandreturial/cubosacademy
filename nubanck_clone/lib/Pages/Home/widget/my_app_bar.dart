import 'package:flutter/material.dart';

class MayAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MayAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(height: MediaQuery.of(context).padding.top),
      GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.purple[800],
          height: MediaQuery.of(context).size.height * 0.20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
                    height: 35,
                    color: Colors.white,
                    ),
                  SizedBox(width: 10),
                  Text(
                    'Alexandre',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                  )
                ],
              ),
              Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
            ],
          ),
        ),
      ),
    ]);
  }
}
