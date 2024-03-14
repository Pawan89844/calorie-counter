// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  const AppInputField({
    super.key,
    this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: hintText,
          contentPadding: const EdgeInsets.only(left: 12.0, top: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          isDense: true,
        ),
      ),
    );
  }
}
