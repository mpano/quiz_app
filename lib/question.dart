import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child:  Text(
      questiontext,
      style: TextStyle(
        fontSize: 28,
        color: Colors.redAccent,
      ),
      textAlign: TextAlign.center,
    ),
    );
  }
}
