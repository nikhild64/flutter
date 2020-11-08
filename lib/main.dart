import 'package:flutter/material.dart';

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
  var questions = ['Favorite color', 'Favorite animal'];

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
            Text(questions[index]),
            RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
