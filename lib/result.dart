import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  Result({this.resetQuiz});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'You did it!!',
            style: TextStyle(
              fontSize: 36,
              color: Colors.green,
            ),
          ),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text(
            'Restart Quiz',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
