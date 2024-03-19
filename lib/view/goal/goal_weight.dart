import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:caloriescount/widget/AppInputField.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';

class GoalWeight extends StatelessWidget {
  final GoalController controller;
  const GoalWeight({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(bottom: 10.0),
              child: const AppText('Step 2 of 4'),
            ),
            const LinearProgressIndicator(
              color: Colors.yellow,
              value: .50,
              minHeight: 7.0,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            )
          ],
        ),
        const SizedBox(height: 40.0),
        AppInputField(
          hintText: 'Enter Weight',
          controller: controller.goalWeightController.value,
          onChanged: (value) =>
              controller.goal.colorLogicInGoalWeightField(value, controller),
        ),
      ],
    );
  }
}
