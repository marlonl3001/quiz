import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String _text;
  final void Function() onPressed;

  const AnswerButton(this._text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.white),
            onPressed: onPressed,
            child: Text(_text)));
  }
}
