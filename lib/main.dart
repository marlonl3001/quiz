import 'package:flutter/material.dart';
import 'package:quiz/quizItem.dart';
import 'package:quiz/quizResult.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _gradeSum = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'question': 'Qual é sua linguagem de programação favorita?',
      'answers': [
        {'text': 'Java', 'grade': 8},
        {'text': 'Kotlin', 'grade': 10},
        {'text': 'Objective-C', 'grade': 1},
        {'text': 'Dart', 'grade': 6},
      ]
    },
    {
      'question': 'Qual é seu animal preferido?',
      'answers': [
        {'text': 'Cachorro', 'grade': 10},
        {'text': 'Urso', 'grade': 3},
        {'text': 'Leão', 'grade': 7},
        {'text': 'Tigre', 'grade': 9},
      ]
    },
    {
      'question': 'Qual é sua cor favorita?',
      'answers': [
        {'text': 'Verde', 'grade': 10},
        {'text': 'Amarelo', 'grade': 6},
        {'text': 'Azul', 'grade': 8},
        {'text': 'Branco', 'grade': 5},
      ]
    }
  ];

  void _answerQuestion(int grade) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _gradeSum += grade;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _gradeSum = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: hasSelectedQuestion
            ? QuizItem(
                selectedQuestion: _selectedQuestion,
                question: _questions,
                answerQuestion: _answerQuestion)
            : QuizResult(
                gradeResult: _gradeSum,
                restartQuiz: _restartQuiz,
              ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
