import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    return resultScore <= 8
        ? 'You are awsome and innocent!'
        : resultScore <= 12
            ? 'Pretty likeable!'
            : resultScore <= 16
                ? 'You are ... strange ?!'
                : 'You are so bad!';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
