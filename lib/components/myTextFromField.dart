// ignore_for_file: avoid_print

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget prefixIcon;
  final EdgeInsetsGeometry padding;
  final String validator;
  final String hintText;

  const MyTextFromField({
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
    required this.prefixIcon,
    this.padding = const EdgeInsets.all(10),
    required this.validator,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding: padding,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: Colors.black)),
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validator;
        }
        return null;
      },
    );
  }
}
