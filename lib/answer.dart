import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectFunc;
  final String answerText;
  Answer(this.selectFunc,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(this.answerText),
        onPressed: this.selectFunc,
      ),
    );
  }
}
