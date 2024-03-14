// ignore_for_file: file_names

import 'package:caloriescount/widget/AppHeadingText.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';

class HeadingComponent extends StatelessWidget {
  final String heading, subHeading;
  const HeadingComponent(
      {super.key, required this.heading, required this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 120.0,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppHeadingText(heading),
          AppText(subHeading),
        ],
      ),
    );
  }
}
