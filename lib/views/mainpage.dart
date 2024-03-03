// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isef_project/views/above%2018/quiz_screen_phase_one_adult.dart';
import 'package:isef_project/views/login.dart';
import 'package:isef_project/views/VideoDesc.dart';
import 'package:isef_project/widgets/big_custom_button.dart';
import 'under 18/quiz_screen_phase_one_child.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // if (Navigator.of(context).canPop()) {
    //   FirebaseAuth.instance.signOut();
    // }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Log out'),
                content: const Text(
                    'Are you sure you want to log out this account?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'No'),
                    child: const Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Text('Yes'),
                  ),
                ],
              ),
            );
          },
          icon: const Icon(Icons.logout),
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff6A74D5),
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
                    child: Image.asset("assets/img/kidtest.jpg")),
                BigCustomButton(
                  buttonName: 'Under 18',
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
                    child: Image.asset("assets/img/manwithadhdsymptoms.jpg")),
                BigCustomButton(
                  buttonName: 'Above 18',
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
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VideoDesc(),
                  ),
                );
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff6A74D5),
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.play_arrow_outlined,
                          size: 45,
                        ),
                      ),
                      Center(
                        child: Text(
                          'More about ADHD',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6A74D5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
