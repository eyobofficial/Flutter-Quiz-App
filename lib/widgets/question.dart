import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String questionText;

  QuestionWidget(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}