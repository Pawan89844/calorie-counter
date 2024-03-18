import 'package:caloriescount/components/HeadingComponent.dart';
import 'package:caloriescount/components/NoteComponent.dart';
import 'package:caloriescount/view/goal/logic/goal_info.dart';
import 'package:caloriescount/view/goal/model/goal_model.dart';
import 'package:caloriescount/widget/AppButton.dart';
import 'package:caloriescount/widget/AppInputField.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalGender extends StatefulWidget {
  const GoalGender({super.key});

  @override
  State<GoalGender> createState() => _GoalGenderState();
}

class _GoalGenderState extends State<GoalGender> {
  final _goalInfo = GoalInfo();

  String? _gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
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
                    _gender = 'Female';
                  } else {
                    _gender = 'Male';
                  }
                  setState(() {});
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
                      color: _gender != null && gender.contains(_gender!)
                          ? Colors.amber.shade200
                          : const Color(0xFFEDF4F4),
                      shape: BoxShape.circle),
                ),
              ),
            );
          },
        ),
        // const Spacer(),
        // const NoteComponent(),
      ],
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 14.0),
    //       child: Column(
    //         children: [
    //           const SizedBox(height: 40.0),
    //           const HeadingComponent(
    //             heading: 'What\'s your gender?',
    //             subHeading: 'This helps us create your personalized plan',
    //           ),
    //           const SizedBox(height: 10.0),
    //           Column(
    //             children: [
    //               Container(
    //                 alignment: Alignment.topLeft,
    //                 padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
    //                 child: const AppText('Step 3 of 4'),
    //               ),
    //               const LinearProgressIndicator(
    //                 color: Colors.yellow,
    //                 value: .75,
    //                 minHeight: 7.0,
    //                 borderRadius: BorderRadius.all(Radius.circular(12.0)),
    //               )
    //             ],
    //           ),
    //           const SizedBox(height: 30.0),
    //           ListView.builder(
    //             itemCount: _goalInfo.gender.length,
    //             physics: const NeverScrollableScrollPhysics(),
    //             shrinkWrap: true,
    //             primary: false,
    //             itemBuilder: (context, index) {
    //               final gender = _goalInfo.gender[index];
    //               return Padding(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: ListTile(
    //                   onTap: () {
    //                     if (index == 0) {
    //                       _gender = 'Female';
    //                     } else {
    //                       _gender = 'Male';
    //                     }
    //                     setState(() {});
    //                   },
    //                   title: Padding(
    //                     padding: const EdgeInsets.only(bottom: 5.0),
    //                     child: AppText(gender, color: const Color(0xFF8D93A5)),
    //                   ),
    //                   leading: SvgPicture.asset(index == 0
    //                       ? 'assets/icons/woman.svg'
    //                       : 'assets/icons/male.svg'),
    //                   trailing: Container(
    //                     height: 20.0,
    //                     width: 20.0,
    //                     alignment: Alignment.center,
    //                     decoration: BoxDecoration(
    //                         color: _gender != null && gender.contains(_gender!)
    //                             ? Colors.amber.shade200
    //                             : const Color(0xFFEDF4F4),
    //                         shape: BoxShape.circle),
    //                   ),
    //                 ),
    //               );
    //             },
    //           ),
    //           // const Spacer(),
    //           const NoteComponent(),
    //           const SizedBox(height: 20.0),
    //           AppButton(
    //             name: 'Continue',
    //             onPressed: () {},
    //           ),
    //           const SizedBox(height: 20.0),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
