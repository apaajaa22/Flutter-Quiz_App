import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(title,
          style: const TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
    );
  }
}
