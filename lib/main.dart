import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Myapp> {
  void _resetQuiz() {
    setState(() {
      index = 0;
    });
  }

  var questions = [
    {
      'questionText': 'Favorite color',
      'answerText': ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionText': 'Favorite animal',
      'answerText': ['Cow', 'Lion', 'Girrafe', 'chetah']
    },
    {
      'questionText': 'Favorite Framework',
      'answerText': ['Angular', 'React', 'Vue', 'None']
    },
  ];

  var index = 0;
  void answerQuestion() {
    print(index);

    setState(() {
      index = index + 1;
    });
    print(index);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('firstApp'),
          ),
          body: (index < questions.length)
              ? Quiz(
                  answerQuestion: answerQuestion,
                  index: index,
                  questions: questions,
                )
              : Result(
                  resetQuiz: _resetQuiz,
                )),
    );
  }
}
