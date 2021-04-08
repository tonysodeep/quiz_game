import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectFunc;
  final String answerText;
  Answer(this.selectFunc, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        child: Text(this.answerText),
        onPressed: this.selectFunc,
      ),
    );
  }
}
