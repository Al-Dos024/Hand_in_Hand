import 'package:flutter/material.dart';
import 'package:isef_project/widgets/phase2list.dart';

class PassedColorList extends StatelessWidget {
  const PassedColorList({
    super.key,
    required this.isPassed,
  });

  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "A is $numA ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "A score is $scoreA ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "B is $numB ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "B score is $scoreB ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "C is $numC ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "C score is $scoreC ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "D is $numD ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "D score is $scoreD ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "E is $numE ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "E score is $scoreE ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "F is $numF ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "F score is $scoreF ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "G is $numG ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "G score is $scoreG ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "H is $numH ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "H score is $scoreH ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "I is $numI ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "I score is $scoreI ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "J is $numJ ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "J score is $scoreJ ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "K is $numK ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "K score is $scoreK ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "L is $numL ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "L score is $scoreL ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "M is $numM ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "M score is $scoreM ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "N is $numN ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "N score is $scoreN ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
      ],
    );
  }
}
