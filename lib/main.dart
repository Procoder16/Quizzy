import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    print('Answer chosen!');
    setState(() {
      _questionIndex++;
    });
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
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text('Option 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
