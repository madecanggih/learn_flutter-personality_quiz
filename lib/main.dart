import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionsText': 'What\'s your favorite color?',
      'answersText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 15},
        {'text': 'Blue', 'score': 20}
      ],
    },
    {
      'questionsText': 'What\'s your favorite animal?',
      'answersText': [
        {'text': 'Dog', 'score': 20},
        {'text': 'Cat', 'score': 15},
        {'text': 'Aligattor', 'score': 5}
      ],
    },
    {
      'questionsText': 'Who\'s your favorite teacher?',
      'answersText': [
        {'text': 'Mr', 'score': 5},
        {'text': 'Mrs', 'score': 5},
        {'text': 'Ms', 'score': 5}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionsIndex: _questionsIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
