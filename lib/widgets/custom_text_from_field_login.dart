import 'package:flutter/material.dart';

class CustomTextFromFieldLogin extends StatelessWidget {
  const CustomTextFromFieldLogin(
      {super.key,
      required this.fieldText,
      required this.icon,
      this.onChange,
      this.obscureText = false});

  final String fieldText;
  final IconData icon;
  final bool obscureText;
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (value) {
        if (value!.isEmpty) {
          return "$fieldText must not be empty";
        }
        return null;
      },
      onChanged: onChange,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        filled: true,
        focusColor: Colors.white,
        labelText: fieldText,
        fillColor: Colors.white,
        prefixIcon: Icon(
          icon,
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
