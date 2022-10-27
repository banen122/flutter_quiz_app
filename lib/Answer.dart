import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  //to get the function from other dart file we create voidcallback select handler which accept pointer.
  final VoidCallback selectHandler;
  String answerText;
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(width:double.infinity
      ,child: RaisedButton(onPressed:selectHandler, //event once is pressed
        child: Text(answerText,style: TextStyle(fontSize: 15)), //name of button
        color: Colors.blueAccent,
        textColor: Colors.white,


    ),
    );
  }
}
