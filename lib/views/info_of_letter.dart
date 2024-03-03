import 'package:flutter/material.dart';

class InfoOfLetter extends StatelessWidget {
  const InfoOfLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "what the letter mean?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff6A74D5),
      ),
    );
  }
}
