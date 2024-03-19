// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final void Function(String value)? onSubmitted, onChanged;

  const AppInputField(
      {super.key,
      this.controller,
      required this.hintText,
      this.onSubmitted,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
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
