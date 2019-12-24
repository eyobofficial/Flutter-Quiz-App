import 'package:flutter/material.dart';

import '../models/questions.dart';
import './question.dart';
import './choice.dart';

class Quiz extends StatelessWidget {
  final Question question;
  final Function submitCallback;

  Quiz(this.question, this.submitCallback);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QuestionWidget(question.questionText),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 0,
          ),
          child: Column(
            children: question.choices.map((choice) {
              return Choice(choice, submitCallback);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
