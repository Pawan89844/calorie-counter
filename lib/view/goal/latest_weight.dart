import 'package:caloriescount/components/HeadingComponent.dart';
import 'package:flutter/material.dart';

class LatestWeight extends StatelessWidget {
  const LatestWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            HeadingComponent(
                heading: 'What\'s your latest weight',
                subHeading: 'You can update your weight anytime'),
          ],
        ),
      ),
    );
  }
}
