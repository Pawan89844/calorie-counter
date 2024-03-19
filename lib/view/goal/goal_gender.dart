import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:caloriescount/view/goal/logic/goal_info.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalGender extends StatefulWidget {
  final GoalController controller;
  const GoalGender({super.key, required this.controller});

  @override
  State<GoalGender> createState() => _GoalGenderState();
}

class _GoalGenderState extends State<GoalGender> {
  final _goalInfo = GoalInfo();

  // String? _gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(bottom: 10.0),
              child: const AppText('Step 3 of 4'),
            ),
            const LinearProgressIndicator(
              color: Colors.yellow,
              value: .75,
              minHeight: 7.0,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            )
          ],
        ),
        const SizedBox(height: 30.0),
        ListView.builder(
          itemCount: _goalInfo.gender.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            final gender = _goalInfo.gender[index];
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                onTap: () {
                  if (index == 0) {
                    widget.controller.selectedGender.value = 'Female';
                  } else {
                    widget.controller.selectedGender.value = 'Male';
                  }
                },
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: AppText(gender, color: const Color(0xFF8D93A5)),
                ),
                leading: SvgPicture.asset(index == 0
                    ? 'assets/icons/woman.svg'
                    : 'assets/icons/male.svg'),
                trailing: Container(
                  height: 20.0,
                  width: 20.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color:
                          widget.controller.selectedGender.value.isNotEmpty &&
                                  gender.contains(
                                      widget.controller.selectedGender.value)
                              ? Colors.amber.shade200
                              : const Color(0xFFEDF4F4),
                      shape: BoxShape.circle),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
