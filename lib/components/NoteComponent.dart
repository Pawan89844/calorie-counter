// ignore_for_file: file_names

import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoteComponent extends StatelessWidget {
  const NoteComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/shield.svg'),
        const SizedBox(width: 10.0),
        const AppText('All of your information is confidential')
      ],
    );
  }
}
