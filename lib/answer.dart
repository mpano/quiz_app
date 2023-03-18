import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback myfunction;
  final String answertext;
  Answer(this.myfunction, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: myfunction,
        child: Text(
          answertext,
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
