import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

// void main(){
//  runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  final _question = const [
    {
      'questions': 'how many color in rwandan flag?',
      'answer': ['1', '5', '3', '7'],
    },
    {
      'questions': 'the capital city of rwanda is ',
      'answer': ['kampala', 'bujumbura', 'luanda', 'kigali'],
    },
    {
      'questions': 'which continent is rwanda found in? ',
      'answer': ['africa', 'europa', 'asia', 'kigali'],
    },
  ];

  var _questionindex = 0;

  void _answers() {
    if (_questionindex > _question.length) {
      print('the question is over');
    }
    setState(() {
      _questionindex = _questionindex + 1;
    });

    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('mytitle'),
          backgroundColor: Colors.blueGrey,
        ),
        body: _questionindex < _question.length
            ? Quiz(
                answers: _answers,
                question: _question,
                questionindex: _questionindex,
              )
            :Result(),
      ),
    );
  }
}
