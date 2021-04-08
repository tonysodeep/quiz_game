import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'what is your fav color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Dark', 'score': 5},
        {'text': 'White', 'score': 5},
      ],
    },
    {
      'questionText': 'what is 2 + 3',
      'answers': [
        {'text': '5', 'score': 10},
        {'text': '3', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '1', 'score': 0},
      ],
    },
    {
      'questionText': 'what is your fav conutry',
      'answers': [
        {'text': 'india', 'score': 40},
        {'text': 'vn', 'score': 20},
        {'text': 'us', 'score': 34},
        {'text': 'eu', 'score': 10},
      ],
    },
  ];
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['hello'];
    // dummy.add('max');
    // print(dummy);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Resutl(_totalScore,_resetQuiz),
      ),
    );
  }
}
