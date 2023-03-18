import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> question;
  final int questionindex;
  final VoidCallback answers;

  Quiz({required this.question,required this.questionindex,required this.answers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionindex]['questions'] as String,
        ),
        ...(question[questionindex]['answer'] as List<String>)
            .map((answer) {
          return Answer(answers, answer);
        }).toList()
      ],
    );
  }
}
