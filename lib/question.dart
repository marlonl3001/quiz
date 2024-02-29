import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String _text;

  QuestionText(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        _text,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
