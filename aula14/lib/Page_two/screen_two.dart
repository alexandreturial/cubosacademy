import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'package:aula14/Widget/button_widget.dart';

// ignore: must_be_immutable
class PageTwo extends StatefulWidget {
  Color currentColor;

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {

    void changeColor(Color color) => setState(() {
     widget.currentColor = color;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 14"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Page 2",
              style: TextStyle(fontSize: 25),
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            titlePadding: const EdgeInsets.all(0.0),
                            contentPadding: const EdgeInsets.all(0.0),
                            content: SingleChildScrollView(
                              child: ColorPicker(
                                pickerColor: widget.currentColor != null ? widget.currentColor : Colors.white,
                                onColorChanged: changeColor,
                                colorPickerWidth: 300.0,
                                pickerAreaHeightPercent: 0.7,
                                enableAlpha: true,
                                displayThumbColor: true,
                                showLabel: true,
                                paletteType: PaletteType.hsv,
                                pickerAreaBorderRadius: const BorderRadius.only(
                                  topLeft: const Radius.circular(2.0),
                                  topRight: const Radius.circular(2.0),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('Select a color'),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(2),
                      backgroundColor: MaterialStateProperty.all(widget.currentColor),
                      
                    ),
                  ),
                ButtonWidget(
                  title: 'Page 3',
                  onTap: (){
                    Navigator.pushNamed(
                      context, 
                      'third', 
                      arguments: widget.currentColor
                    );
                  },
                ),
                ButtonWidget(
                  title: 'Page 4',
                  onTap: (){
                    Navigator.pushNamed(
                      context, 
                      'fourth', 
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