import 'package:flutter/material.dart';

import './models/questions.dart';
import './widgets/quiz.dart';
import './widgets/result.dart';


void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Quiz',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _score = 0;
  var _index = 0;
  final _questions = [
    Question(
        questionText: 'Which of the following is a CI/CD tool?',
        choices: ['Django', 'Node.js', 'Jenkins'],
        answer: 'Jenkins'),
    Question(
        questionText: 'Which of the following is a containerization tool?',
        choices: ['AWS', 'Docker', 'Angular', 'Ansible'],
        answer: 'Docker'),
    Question(
        questionText: 'Which is one of the following is not a cloud provider?',
        choices: ['AWS', 'GCP', 'Azure', 'Netflix'],
        answer: 'Netflix'),
    Question(
        questionText: 'Which of the following is backend API framework?',
        choices: ['ReactJs', 'Flask', 'Flutter', 'Vue'],
        answer: 'Flask'),
  ];

  void submitAnswer(String userAnswer) {
    var correctAnswer = _questions[_index].answer;
    var mark = _questions[_index].mark;
    if (userAnswer == correctAnswer)
      _score += mark;
    setState(() => _index++);
  }

  void reset() {
    setState(() {
      _index = 0;
      _score = 0;
    });
  }

  bool get isDone => _index >= _questions.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tech Quiz')),
      body: isDone ? Result(_score, reset) : Quiz(_questions[_index], submitAnswer),
    );
  }
}
