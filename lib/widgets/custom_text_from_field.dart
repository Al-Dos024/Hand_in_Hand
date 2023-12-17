import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  CustomTextFromField(
      {super.key,
      required this.fieldText,
      required this.icon,
      this.onChange,
      this.obscureText = false});

  final String fieldText;
  final IconData icon;
  bool? obscureText;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return "$fieldText must not be empty";
        }
        return null;
      },
      onChanged: onChange,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: fieldText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
