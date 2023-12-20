import 'package:flutter/material.dart';

class BigCustomButton extends StatelessWidget {
  const BigCustomButton({
    super.key,
    required this.buttonName,
    required this.color,
    required this.onPressed,
  });
  final String buttonName;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 180,
        width: 360,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
          child: Text(
            buttonName,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
