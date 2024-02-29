// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isef_project/views/above%2018/quiz_screen_phase_two_adult.dart';
import 'package:isef_project/views/login.dart';
import 'package:isef_project/widgets/big_custom_button.dart';
import 'under 18/quiz_screen_phase_one_child.dart';

class NewMainScreen extends StatefulWidget {
  const NewMainScreen({super.key});

  @override
  State<NewMainScreen> createState() => _NewMainScreenState();
}

class _NewMainScreenState extends State<NewMainScreen> {
  @override
  Widget build(BuildContext context) {
    // if (Navigator.of(context).canPop()) {
    //   FirebaseAuth.instance.signOut();
    // }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
          },
          icon: const Icon(Icons.logout),
          color: Colors.white,
        ),
        backgroundColor: Color(0xff6A74D5),
        title: const Text(
          "Phases",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                    width: double.infinity,
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
                        builder: (context) => const QuizScreenPhaseTwoAdult(),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
