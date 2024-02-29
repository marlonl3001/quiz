import 'package:flutter/material.dart';
import 'package:quiz/answerButton.dart';
import 'package:quiz/question.dart';

class QuizItem extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> question;
  final void Function(int) answerQuestion;

  const QuizItem(
      {required this.selectedQuestion,
      required this.question,
      required this.answerQuestion,
      super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? answers =
        question[selectedQuestion].cast()['answers'];

    List<Widget>? answerButtons = answers
        ?.map((answer) => AnswerButton(answer['text'].toString(),
            () => answerQuestion(int.parse(answer['grade'].toString()))))
        .cast<Widget>()
        .toList();

    return Column(
      children: [
        QuestionText(question[selectedQuestion]['question'].toString()),
        ...?answerButtons
      ],
    );
  }
}
