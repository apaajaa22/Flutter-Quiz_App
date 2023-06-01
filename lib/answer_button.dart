import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this._onPressedButton, this._title, {super.key});

  final VoidCallback _onPressedButton;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: _onPressedButton,
        style:
            ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
        child: Text(_title),
      ),
    );
  }
}
