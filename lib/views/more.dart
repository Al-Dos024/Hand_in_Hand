// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:isef_project/views/above%2018/quiz_screen_phase_one_adult.dart';
import 'package:isef_project/widgets/big_custom_button.dart';
import 'package:isef_project/widgets/videoplayerwidget.dart';
import 'under 18/quiz_screen_phase_one_child.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Phases"),
        centerTitle: true,
      ),
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            width: 620,
            height: 270,
            color: Colors.black,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: SizedBox(
                  width: 600,
                  height: 250,
                  child: VideoPlayerWidget(videoUrl: "assets/img/intro.mp4")),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/img/kid.png")),
                  BigCustomButton(
                    buttonName: 'Under 18?',
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const QuizScreenPhaseOneChild(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/img/man.jpg")),
                  BigCustomButton(
                    buttonName: 'Above 18?',
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const QuizScreenPhaseOneAdult(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
