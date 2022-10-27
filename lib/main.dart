import 'package:flutter/material.dart';
//import widget inside wdget
import 'Quiz.dart';
import 'Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'Dart is an?',
      'answerText': [
        {'text': 'open-source', 'score': 0},
        {'text': 'general-purpose', 'score': 0},
        {'text': 'programming language', 'score': 0},
        {'text': 'All of the above', 'score': 10}
      ] //questionText and answerText is key.
    },
    {
      'questionText': 'Dart is originally developed by?',
      'answerText': [
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Google', 'score': 10},
        {'text': 'IBM', 'score': 0},
        {'text': 'Facebook', 'score': 0}
      ]
    },
    {
      'questionText': 'Dart has multiple interfaces.',
      'answerText': [
        {'text': 'TRUE', 'score': 10},
        {'text': 'FALSE', 'score': 0},
        {'text': 'Can be true or false', 'score': 0},
        {'text': 'Can not say', 'score': 0}
      ]
    },
    {
      'questionText': 'The _______ function is a predefined method in Dart.',
      'answerText': [
        {'text': 'declare()', 'score': 0},
        {'text': 'list()', 'score': 0},
        {'text': 'main()', 'score': 10},
        {'text': 'return()', 'score': 0}
      ]
    },
    {
      'questionText': '--version command is used to ?',
      'answerText': [
        {'text': 'Enables assertions', 'score': 0},
        {'text': 'Displays VM version information', 'score': 10},
        {'text': 'Specifies the path', 'score': 0},
        {'text': 'Specifies where to find imported libraries', 'score': 0}
      ]
    },
    {
      'questionText':
          'Which of the following command specifies where to find imported libraries.',
      'answerText': [
        {'text': 'c', 'score': 0},
        {'text': 'p', 'score': 10},
        {'text': 'h', 'score': 0},
        {'text': 'All of the above', 'score': 0}
      ]
    },
    {
      'questionText': 'Dart programs run in _______ modes.',
      'answerText': [
        {'text': '2', 'score': 10},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '5', 'score': 0}
      ]
    },
    {
      'questionText': 'Dart is an Object-Oriented language.',
      'answerText': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Can be yes or no', 'score': 0},
        {'text': 'Can not say', 'score': 0}
      ]
    },
    {
      'questionText':
          'An ________ is a real-time representation of any entity.',
      'answerText': [
        {'text': 'class', 'score': 0},
        {'text': 'method', 'score': 0},
        {'text': 'object', 'score': 10},
        {'text': 'None of the above', 'score': 0}
      ]
    },
    {
      'questionText':
          ' As per Grady Brooch, every object must have ________ features.',
      'answerText': [
        {'text': '0', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 10}
      ]
    }
  ];
  var _questionIndex = 0;
  var _TotalScore = 0;
  void _ResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _TotalScore = 0;
    });
  }

  void _AnswerQustion(int score) {
    _TotalScore += score;
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _question.length) {
      print(_questionIndex);
    } else {
      print("out of bound");
    }
  }

  @override
  Widget build(BuildContext context) {
    //we want seperate these question with different answer in each button and change to another question we use map inside list whic is a class provided by flutter.

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('banin App')),
      body: _questionIndex < _question.length
          ? Quize(
              AnswerQustion: _AnswerQustion,
              question: _question,
              questionIndex: _questionIndex)
          : Result(totalScore: _TotalScore, Reset: _ResetQuiz),
    ));
  }
}
