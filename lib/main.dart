import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Red', 'score': 7},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 7},
        {'text': 'Fish', 'score': 10}
      ]
    },
    {
      'questionText': 'who\'s your favorite team?',
      'answers': [
        {'text': 'Manchester United', 'score': 1},
        {'text': 'PSG', 'score': 7},
        {'text': 'Real Madrid', 'score': 10},
        {'text': 'Bayern', 'score': 5}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore)),
    );
  }
}
