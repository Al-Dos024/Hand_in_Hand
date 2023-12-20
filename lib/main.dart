import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:isef_project/firebase_options.dart';
import 'package:isef_project/views/onBoarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ISEF());
}

class ISEF extends StatelessWidget {
  const ISEF({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBorading(),
    );
  }
}
