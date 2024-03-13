import 'package:caloriescount/view/widget/AppHeadingText.dart';
import 'package:flutter/material.dart';

class Goal extends StatefulWidget {
  const Goal({super.key});

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 120.0,
              width: double.infinity,
              child: const AppHeadingText('What are your goals?'),
            ),
          ],
        ),
      )),
    );
  }
}
