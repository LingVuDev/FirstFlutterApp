import 'dart:developer';

import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['question']),
          ...questions[questionIndex]['answers'].map((answer) {
            return Answer(
              answerText: answer['text'],
              selectHandler: () => answerQuestion(answer['score']),
            );
          }),
        ],
      ),
    );
  }
}
