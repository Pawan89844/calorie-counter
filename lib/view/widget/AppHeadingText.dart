// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeadingText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const AppHeadingText(this.data,
      {super.key,
      this.fontSize = 21.0,
      this.fontWeight = FontWeight.bold,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: GoogleFonts.poppins(
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }
}
