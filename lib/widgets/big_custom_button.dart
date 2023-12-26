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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 180,
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
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
