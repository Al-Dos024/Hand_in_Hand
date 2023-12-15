import 'package:flutter/material.dart';
import 'package:isef_project/views/login.dart';

class LastButtonOnboard extends StatelessWidget {
  const LastButtonOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
        backgroundColor: Colors.teal.shade700,
        minimumSize: const Size.fromHeight(80),
      ),
      child: const Text(
        "Get Started",
        style: TextStyle(fontSize: 24),
      ),
      onPressed: () async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
      },
    );
  }
}
