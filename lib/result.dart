import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result(this.resetQuiz, this.resultScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome and some stuff';
    } else if (resultScore <= 12) {
      resultText = 'Meh. Getting better.';
    } else if (resultScore <= 16) {
      resultText = 'Badass!';
    } else {
      resultText = 'Best thing you can get!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Center(
            child: ElevatedButton(
                onPressed: resetQuiz, child: Text('Restart Quiz')),
          )
        ],
      ),
    );
  }
}
