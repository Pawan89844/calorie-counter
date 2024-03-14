import 'package:caloriescount/components/HeadingComponent.dart';
import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:caloriescount/view/goal/model/goal_model.dart';
import 'package:caloriescount/widget/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/AppText.dart';

class Goal extends StatelessWidget {
  const Goal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: [
          const HeadingComponent(
              heading: 'What are your goals?',
              subHeading: 'Select all that apply'),
          GridView.builder(
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.vertical,
            itemCount: GoalModel.goals.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 6 / 5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0),
            itemBuilder: (context, index) {
              final GoalModel items = GoalModel.goals[index];
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(12.0))),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(items.image),
                    AppText(items.title),
                  ],
                ),
              );
            },
          ),
          const Spacer(),
          AppButton(
            name: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    )));
  }
}
