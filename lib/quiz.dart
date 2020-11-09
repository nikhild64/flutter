import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final index;
  final Function answerQuestion;
  Quiz({this.answerQuestion, this.index, this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['answerText'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
