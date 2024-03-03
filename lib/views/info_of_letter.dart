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
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
              width: double.infinity,
              child: Image.asset("assets/img/lettermean.png")),
          const SizedBox(
            height: 80,
          ),
          const Text("You can find more about it by search of the \n"),
          const Text(
            "the conners' parent rating scale (cprs) \n",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
