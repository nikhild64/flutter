import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;
  TextControl(this.changeText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: changeText,
        child: Text(
          'ChangeText',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.blue,
      ),
    );
  }
}
