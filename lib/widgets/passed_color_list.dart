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
          "A is ${listNumP2[0]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "A score is $scoreA ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "B is ${listNumP2[1]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "B score is $scoreB ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "C is ${listNumP2[2]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "C score is $scoreC ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "D is ${listNumP2[3]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "D score is $scoreD ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "E is ${listNumP2[4]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "E score is $scoreE ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "F is ${listNumP2[5]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "F score is $scoreF ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "G is ${listNumP2[6]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "G score is $scoreG ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "H is ${listNumP2[7]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "H score is $scoreH ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "I is ${listNumP2[8]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "I score is $scoreI ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "J is ${listNumP2[9]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "J score is $scoreJ ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "K is ${listNumP2[10]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "K score is $scoreK ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "L is ${listNumP2[11]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "L score is $scoreL ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "M is ${listNumP2[12]} ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "M score is $scoreM ",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        Text(
          "N is ${listNumP2[13]} ",
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
