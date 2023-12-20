import 'package:flutter/material.dart';
import 'package:isef_project/constants.dart';
import 'package:isef_project/views/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnyButtonOnBoard extends StatelessWidget {
  const AnyButtonOnBoard({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => controller.jumpToPage(2),
            child: const Text(
              "SKIP",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                  spacing: 16,
                  dotColor: Colors.black12,
                  activeDotColor: kPrimryColor),
              onDotClicked: (index) => controller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
            ),
          ),
          TextButton(
            onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut),
            child: const Text(
              "NEXT",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class LastButtonOnBoard extends StatelessWidget {
  const LastButtonOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
        backgroundColor: kPrimryColor,
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
