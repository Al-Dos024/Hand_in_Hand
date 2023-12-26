import 'package:flutter/material.dart';
import 'package:isef_project/widgets/phase2list.dart';

class PassedColorList extends StatelessWidget {
  const PassedColorList({
    super.key,
    required this.isPassed,
  });
  final int lim = 60;
  final bool isPassed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          scoreA >= lim ? "A score is $scoreA " : "",
        ),
        Text(
          scoreB >= lim ? "B score is $scoreB " : "",
        ),
        Text(
          scoreC >= lim ? "C score is $scoreC " : "",
        ),
        Text(
          scoreD >= lim ? "D score is $scoreD " : "",
        ),
        Text(
          scoreE >= lim ? "E score is $scoreE " : "",
        ),
        Text(
          scoreF >= lim ? "F score is $scoreF " : "",
        ),
        Text(
          scoreG >= lim ? "G score is $scoreG " : "",
        ),
        Text(
          scoreH >= lim ? "H score is $scoreH " : "",
        ),
        Text(
          scoreI >= lim ? "I score is $scoreI " : "",
        ),
        Text(
          scoreJ >= lim ? "J score is $scoreJ " : "",
        ),
        Text(
          scoreK >= lim ? "K score is $scoreK " : "",
        ),
        Text(
          scoreL >= lim ? "L score is $scoreL " : "",
        ),
        Text(
          scoreM >= lim ? "M score is $scoreM " : "",
        ),
        Text(
          scoreN >= lim ? "N score is $scoreN " : "",
        ),
      ],
    );
  }
}
