import 'package:flutter/material.dart';

class ResultPoint extends StatelessWidget {
  const ResultPoint(this.result, this._onResetQuiz, {super.key});
  final int result;
  final VoidCallback _onResetQuiz;

  String get finalResult {
    String textFinalResult = 'Anda Hebat!';
    if (result <= 10) {
      textFinalResult = 'Anda Kurang Hebat';
    } else if (result <= 20) {
      textFinalResult = 'Anda Cukup Hebat';
    } else if (result <= 30) {
      textFinalResult = 'Anda Hebat Sekali';
    }
    return textFinalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          finalResult,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
            onPressed: _onResetQuiz, child: const Text('Mulai ulang quiz'))
      ],
    ));
  }
}
