import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quize extends StatelessWidget {
  final Function AnswerQustion;
  final List<Map<String, Object>> question;
  final int questionIndex;
  Quize(
      {@required this.AnswerQustion,
      @required this.question,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'] as String),
        //dots to seperate the list which inside list and we use map cause we have a list
        ...(question[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => AnswerQustion(answer['score']), answer['text']);
        })
      ],
    );
  }
}
