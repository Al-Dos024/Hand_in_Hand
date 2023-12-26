import 'package:flutter/material.dart';

class CustomTextFromFieldRegister extends StatelessWidget {
  const CustomTextFromFieldRegister(
      {super.key,
      required this.fieldText,
      required this.icon,
      this.onChange,
      this.obscureText = false,
      this.controller});

  final String fieldText;
  final TextEditingController? controller;
  final IconData icon;
  final bool obscureText;
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return "$fieldText must not be empty";
          }
          return null;
        },
        onChanged: onChange,
        controller: controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0xff6A74D5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0xff6A74D5),
              width: 2.0,
            ),
          ),
          focusColor: const Color(0xff6A74D5),
          labelText: fieldText,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
