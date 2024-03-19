import 'package:caloriescount/components/HeadingComponent.dart';
import 'package:caloriescount/components/NoteComponent.dart';
import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:caloriescount/view/goal/goal_birthday.dart';
import 'package:caloriescount/view/goal/goal_gender.dart';
import 'package:caloriescount/view/goal/goal_weight.dart';
import 'package:caloriescount/view/goal/latest_weight.dart';
import 'package:caloriescount/view/goal/logic/goal_info.dart';
import 'package:caloriescount/view/goal/model/goal_model.dart';
import 'package:caloriescount/widget/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../widget/AppText.dart';

class GoalView extends GetView<GoalController> {
  GoalView({super.key});
  final _goalInfo = GoalInfo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Obx(() => Column(
            children: [
              const SizedBox(height: 40.0),
              HeadingComponent(
                  heading:
                      'What${controller.currentPage.value == GoalPage.currentPage ? ' are' : '\'s'} your ${_goalInfo.heading(controller.currentPage.value)}',
                  subHeading: 'Select all that apply'),
              const SizedBox(height: 30.0),
              if (controller.currentPage.value == GoalPage.birthday) ...[
                GoalBirthday()
              ],
              if (controller.currentPage.value == GoalPage.gender) ...[
                const GoalGender(),
              ],
              if (controller.currentPage.value == GoalPage.goalWeight) ...[
                GoalWeight(),
              ],
              if (controller.currentPage.value == GoalPage.latestWeight) ...[
                LatestWeight(),
              ],
              if (controller.currentPage.value == GoalPage.currentPage) ...[
                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemCount: _goalInfo.goals.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 5,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    final GoalModel items = _goalInfo.goals[index];

                    return InkWell(
                      onTap: () => controller.setGoal(items.id),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: controller.currentGoal.contains(items.id)
                                    ? const Color(0xFFF7D45E)
                                    : Colors.black12),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0))),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(items.image),
                            AppText(items.title,
                                color: controller.currentGoal.contains(items.id)
                                    ? const Color(0xFFF7D45E)
                                    : null),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
              const Spacer(),
              Visibility(
                  visible: controller.currentPage.value != GoalPage.currentPage,
                  child: const NoteComponent()),
              Visibility(
                  visible: controller.currentPage.value != GoalPage.currentPage,
                  child: const SizedBox(height: 20.0)),
              AppButton(
                name: 'Continue',
                color: controller.currentGoal.isEmpty
                    ? Colors.grey
                    : const Color(0xFFFEE590),
                onPressed: () => controller.currentGoal.isEmpty
                    ? null
                    : controller.setGoalPage(),
              ),
              const SizedBox(height: 20.0),
            ],
          )),
    )));
  }
}
