// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:isef_project/views/quiz_screen_phase_one.dart';
import 'package:isef_project/widgets/big_custom_button.dart';

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
        title: const Text("Phases"),
        centerTitle: true,
      ),
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          BigCustomButton(
            buttonName: 'Under 18?',
            color: Colors.red,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const QuizScreenPhaseOne(),
                ),
              );
            },
          ),
          BigCustomButton(
            buttonName: 'Above 18?',
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const QuizScreenPhaseOne(),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
