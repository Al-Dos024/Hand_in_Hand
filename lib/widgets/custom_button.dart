// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:isef_project/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          width: double.infinity,
          height: 60,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
