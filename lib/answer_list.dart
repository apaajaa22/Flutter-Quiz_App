import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/question_title.dart';

class AnswerList extends StatelessWidget {
  const AnswerList(this._handleAnswerButton, this._soalIndex, this.question,
      {super.key});

  final List<Map<String, Object>> question;
  final Function _handleAnswerButton;
  final int _soalIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QuestionTitle(question[_soalIndex]['question'] as String),
        ...(question[_soalIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(() => _handleAnswerButton(answer['score']),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
