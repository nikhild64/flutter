import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function handler;
  Answer(this.handler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: handler,
      ),
    );
  }
}
