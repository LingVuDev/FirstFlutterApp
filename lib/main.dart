import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion(int index) {
    setState(() {
      _questionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite food?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => _answerQuestion(0),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => _answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => _answerQuestion(2),
            ),
          ],
        ),
      ),
    );
  }
}
