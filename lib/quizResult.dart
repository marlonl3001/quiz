import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  final int gradeResult;
  final void Function() restartQuiz;

  const QuizResult({
    required this.gradeResult,
    required this.restartQuiz,
    super.key,
  });

  String get resultMessage {
    switch (gradeResult) {
      case <= 15:
        return 'Você precisa melhorar suas escolhas.';
      case > 15 && < 25:
        return 'Continue assim Padawan!';
      default:
        return 'Parabéns, você é um JEDI!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            textAlign: TextAlign.center,
            resultMessage,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.blue),
          onPressed: restartQuiz,
          child: const Text(
            'Reiniciar questionário?',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
