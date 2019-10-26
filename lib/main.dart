import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questionAnswerMap = [
    {
      "question": "What is your favorite color",
      "answers": ["Black", "White", "Green", "Red"]
    },
    {
      "question": "What is your favorite language",
      "answers": ["C#", "Dart", "F#", "Kotlin"]
    }
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(_questionAnswerMap[_questionIndex]["question"]),
            ...(_questionAnswerMap[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
