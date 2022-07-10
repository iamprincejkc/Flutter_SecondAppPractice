import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore=0;

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('answer chosen $_questionIndex');
  }

  void _resetQuiz() {
    setState(() {
     _questionIndex = 0;
     _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 5},
          {'text': 'White', 'score': 4},
          {'text': 'Green', 'score': 2},
          {'text': 'Blue', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Cat', 'score': 5},
          {'text': 'Dog', 'score': 4},
          {'text': 'Bird', 'score': 2},
          {'text': 'Fish', 'score':1}
        ]
      },
      {
        'questionText': 'What\'s your favorite country?',
        'answers': [
          {'text': 'PH', 'score': 5},
          {'text': 'USA', 'score':4},
          {'text': 'CND', 'score': 2},
          {'text': 'JP', 'score': 1}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
