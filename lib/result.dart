import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it';

    if (resultScore <= 30) {
      resultText = 'You are done';
    } else if (resultScore <= 50) {
      resultText = 'You are great';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Retake Quiz'),
            textColor: Colors.grey,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
