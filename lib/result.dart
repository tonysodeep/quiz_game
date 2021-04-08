import 'package:flutter/material.dart';

class Resutl extends StatelessWidget {
  final int resultScore;
  Function resetQuiz;
  Resutl(this.resultScore, this.resetQuiz);

  String get resultString {
    var resultText = 'You did it';

    return '$resultText + $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultString,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: this.resetQuiz,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
