import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZZY!!!'),
        ),
        body: Column(
          children: [
            Text('Question 1'),
            RaisedButton(
              child: Text('Option 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
