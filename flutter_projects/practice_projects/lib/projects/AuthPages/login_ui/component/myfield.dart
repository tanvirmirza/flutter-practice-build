import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final controller;
  final hintText;
  final validator;
  final obscureText;
  MyField({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      //(value) {
      //   if (value!.isEmpty) {
      //     return 'please enter email';
      //   }
      //   return null;
      // },
      controller: controller, obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(5)),
          hintText: hintText,
          fillColor: Colors.grey.shade200,
          filled: true),
    );
  }
}
