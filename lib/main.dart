import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answer': [
        'Black',
        'white',
        'red',
        'yellow',
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        'Tiger',
        'Snake',
        'Lion',
        'Rabbit',
      ],
    },
    {
      'questionText': 'What\'s your favourite city name?',
      'answer': [
        'London',
        'Kashmir',
        'Switzerland',
        'Thailand',
      ],
    }
  ];

  int _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {}
    setState(() {
      _questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZZY!!!'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'].toString(),
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>).map(
                    (answer) {
                      return Answer(_answerQuestion, answer);
                    },
                  ).toList()
                ],
              )
            : Center(
                child: Text('You did it!!!'),
              ),
      ),
    );
  }
}
