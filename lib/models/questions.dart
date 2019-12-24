import 'package:flutter/foundation.dart';

class Question {
  final String questionText;
  final List<String> choices;
  final String  answer;
  final int mark;

  Question({
    @required this.questionText,
    @required this.choices,
    @required this.answer,
    this.mark = 1
  });
}