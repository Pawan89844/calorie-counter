// ignore_for_file: file_names

import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final String name;
  final double borderRadius;
  final Color color;
  const AppButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.borderRadius = 8.0,
    this.color = const Color(0xFFFEE590),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
            elevation: 0.0),
        child: AppText(name, color: Colors.black),
      ),
    );
  }
}
