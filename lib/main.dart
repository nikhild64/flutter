import 'package:flutter/material.dart';
import 'package:flutter_course/answer.dart';
import './question.dart';
import './question.dart';

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
      if (index == questions.length - 1) {
        index = 0;
      } else {
        index = index + 1;
      }
    });
    print(index);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('firstApp'),
        ),
        body: Column(
          children: [
            Question(questions[index]['questionText']),
            ...(questions[index]['answerText'] as List<String>).map((answer) {
              return Answer(answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
