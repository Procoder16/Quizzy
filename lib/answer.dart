import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answer,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
