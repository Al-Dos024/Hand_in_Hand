import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField(
      {super.key,
      required this.controller,
      required this.fieldText,
      required this.icon});

  final TextEditingController controller;
  final String fieldText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "$fieldText must not be empty";
        }
        return null;
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: fieldText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
