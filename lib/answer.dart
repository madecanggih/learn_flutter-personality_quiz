import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answersText;

  Answer(this.selectHandler, this.answersText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 5, 
        horizontal: 150,
        ),
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.grey[200],
        child: Text(answersText),
        onPressed: selectHandler,
      ),      
    );
  }
}