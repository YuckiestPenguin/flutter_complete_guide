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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Red', 'Black', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Elephant', 'Lion', 'Fish']
    },
    {
      'questionText': 'who\'s your favorite team?',
      'answers': ['Manchester United', 'PSG', 'Real Madrid', 'Bayern']
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
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
              : Result()),
    );
  }
}
