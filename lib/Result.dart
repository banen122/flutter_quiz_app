import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function Reset;
  Result({this.totalScore, this.Reset});

  String get ScoreFinal {
    String TextScore = '';
    if (totalScore <= 40) {
      TextScore = 'Fail';
    } else if (totalScore <= 60) {
      TextScore = 'Pass';
    } else if (totalScore <= 70) {
      TextScore = 'Midium';
    } else if (totalScore <= 80) {
      TextScore = 'Good';
    } else if (totalScore < 90) {
      TextScore = 'Very Good';
    } else if (totalScore <= 100) {
      TextScore = 'Excellent';
    }
    return (TextScore);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          ScoreFinal + '\nScore:' + totalScore.toString(),
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 2, 89, 100),
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: Reset,
          child: Text("Reset Quiz!"),
        )
      ],
    ));
  }
}
