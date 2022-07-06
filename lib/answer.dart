

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final VoidCallback selectHandler;
final String answerText;
Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText,style: TextStyle(color: Colors.white),),
        onPressed: selectHandler,
      ),
    );
  }
}
