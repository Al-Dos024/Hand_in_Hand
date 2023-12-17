// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key, this.hintText, this.onChange, this.obscureText = false});
  String? hintText;
  Function(String)? onChange;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'requierd';
        }
        return null;
      },
      onChanged: onChange,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
