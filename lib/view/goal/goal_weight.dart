import 'package:caloriescount/components/HeadingComponent.dart';
import 'package:caloriescount/components/NoteComponent.dart';
import 'package:caloriescount/widget/AppButton.dart';
import 'package:caloriescount/widget/AppInputField.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';

class GoalWeight extends StatelessWidget {
  GoalWeight({super.key});
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
              child: const AppText('Step 2 of 4'),
            ),
            const LinearProgressIndicator(
              color: Colors.yellow,
              value: .25,
              minHeight: 7.0,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            )
          ],
        ),
        const SizedBox(height: 40.0),
        AppInputField(hintText: 'Enter Weight', controller: _weightController),
        // const Spacer(),
        // const NoteComponent(),
        // const SizedBox(height: 20.0),
        // AppButton(
        //   name: 'Continue',
        //   onPressed: () {},
        // ),
        const SizedBox(height: 20.0),
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
    //             heading: 'What\'s your goal weight',
    //             subHeading: 'You can update your weight anytime',
    //           ),
    //           const SizedBox(height: 10.0),
    //           Column(
    //             children: [
    //               Container(
    //                 alignment: Alignment.topLeft,
    //                 padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
    //                 child: const AppText('Step 2 of 4'),
    //               ),
    //               const LinearProgressIndicator(
    //                 color: Colors.yellow,
    //                 value: .25,
    //                 minHeight: 7.0,
    //                 borderRadius: BorderRadius.all(Radius.circular(12.0)),
    //               )
    //             ],
    //           ),
    //           const SizedBox(height: 40.0),
    //           AppInputField(
    //               hintText: 'Enter Weight', controller: _weightController),
    //           // const Spacer(),
    //           const NoteComponent(),
    //           const SizedBox(height: 20.0),
    //           // AppButton(
    //           //   name: 'Continue',
    //           //   onPressed: () {},
    //           // ),
    //           const SizedBox(height: 20.0),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
