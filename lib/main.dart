import 'package:flutter/material.dart';
import 'package:quiz_app/answer_list.dart';
import 'package:quiz_app/result_point.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _soalIndex = 0;
  int _totalScore = 0;
  List<Map<String, Object>> questions = [
    {
      'question': 'What place will you visit?',
      'answer': [
        {'text': 'Jakarta', 'score': 20},
        {'text': 'Bandung', 'score': 5},
        {'text': 'Semarang', 'score': 25},
      ]
    },
    {
      'question': 'What is your favorite color?',
      'answer': [
        {'text': 'Red', 'score': 25},
        {'text': 'Green', 'score': 1},
        {'text': 'Blue', 'score': 20},
      ]
    },
    {
      'question': 'What is your favorite food?',
      'answer': [
        {'text': 'Fried rice', 'score': 15},
        {'text': 'Pizza', 'score': 10},
        {'text': 'Sushi', 'score': 20},
      ]
    },
    {
      'question': 'What is your hobby?',
      'answer': [
        {'text': 'Reading', 'score': 20},
        {'text': 'Playing sports', 'score': 15},
        {'text': 'Writing', 'score': 10},
      ]
    },
    {
      'question': 'Choose your favorite subject',
      'answer': [
        {'text': 'Mathematics', 'score': 25},
        {'text': 'English', 'score': 20},
        {'text': 'History', 'score': 15},
      ]
    },
  ];

  void _handleAnswerButton(int currentScore) {
    _totalScore = _totalScore + currentScore;
    setState(() {
      _soalIndex += 1;
    });
  }

  void _handleResetQuiz() {
    setState(() {
      _soalIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quiz App'),
            ),
            body: _soalIndex < questions.length
                ? AnswerList(_handleAnswerButton, _soalIndex, questions)
                : ResultPoint(_totalScore, _handleResetQuiz)));
  }
}
