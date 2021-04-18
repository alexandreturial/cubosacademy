import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  
  _textField(labelText, String Function() errorText){
    return TextField(
    
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            _textField("name", ),
          ],
        ),
      ),
    );
  }
}