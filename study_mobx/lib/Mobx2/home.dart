import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:study_mobx/Mobx2/controller.dart';

class Home extends StatelessWidget {
  
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Mobx'),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              TextField(
                decoration: 
                InputDecoration(labelText: 'Nome',),
                onChanged: controller.changeName,
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(labelText: 'Sobrenome',),
                onChanged: controller.changeLastName,
              ),
              SizedBox(height: 20,),
              Observer(
                builder: (context){
                  return Text('${controller.nameComplete}');
                }
                
                )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}