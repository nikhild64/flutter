import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  final String textdata;
  TextData(this.textdata);
  @override
  Widget build(BuildContext context) {
    return Text(textdata);
  }
}
