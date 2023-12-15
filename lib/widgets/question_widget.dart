import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key,
      required this.indexAction,
      required this.totalQuestions,
      required this.question});

  final int indexAction;
  final int totalQuestions;
  final String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Question ${indexAction + 1}/$totalQuestions  : $question',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
