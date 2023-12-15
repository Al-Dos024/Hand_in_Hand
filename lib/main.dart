import 'package:flutter/material.dart';
import 'package:isef_project/views/onBoarding.dart';

void main() {
  runApp(const ISEF());
}

class ISEF extends StatelessWidget {
  const ISEF({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBorading(),
    );
  }
}
