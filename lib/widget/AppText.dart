// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const AppText(
    this.data,
      {super.key,
      this.fontSize,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: GoogleFonts.poppins(
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }
}
