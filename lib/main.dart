import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List questions = [
      {
        'question': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'Blue'],
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'question': 'What\'s your favorite food?',
        'answers': ['Kebab', 'Pizza', 'Hamburger', 'Hot Dog'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question']),
            ...questions[_questionIndex]['answers'].map((answer) {
              return Answer(
                answerText: answer,
                selectHandler: _answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}
