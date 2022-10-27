import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //we use container to control in position of text like margin padding align and so on.
    //double infinity mean give the all container spaces avaliable in screen.
    return Container(width:double.infinity,
      margin:EdgeInsets.all(20),
      child:Text(questionText,
        style: TextStyle(fontSize: 25)
        ,textAlign: TextAlign.center,)
      ,);
  }
}
