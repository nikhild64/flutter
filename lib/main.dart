// create a flutter app and create an appbar and some text below it
// add button to change the text
// split the app to app, textcontrol and text

import 'package:flutter/material.dart';
import './text.dart';
import './textControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _text = 'Text to be changed';
  void _changeText() {
    setState(() {
      _text = 'Text is changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment-1'),
        ),
        body: Column(
          children: [
            TextData(_text),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}
