import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'You\'re OK';
    } else if (resultScore <= 16) {
      resultText = 'You\'re a little strange';
    } else {
      resultText = 'Go away';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: reset,
            textColor: Colors.deepOrangeAccent,
          ),
        ],
      ),
    );
  }
}
