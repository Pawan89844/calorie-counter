import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:caloriescount/view/goal/model/goal_model.dart';
import 'package:flutter/material.dart';

class GoalInfo implements Goal {
  static const String _baseAsset = 'assets/';

  String heading(GoalPage page) {
    switch (page) {
      case GoalPage.currentPage:
        return 'goals?';
      case GoalPage.latestWeight:
        return 'latest weight';
      case GoalPage.goalWeight:
        return 'goal weight';
      case GoalPage.gender:
        return 'gender?';
      case GoalPage.birthday:
        return 'Birthday';
      default:
        return 'goals?';
    }
  }

  String subHeading(GoalPage page) {
    if (page == GoalPage.currentPage) {
      return 'Select all that apply';
    } else if (page == GoalPage.latestWeight || page == GoalPage.goalWeight) {
      return 'You can update your weight anytime';
    } else {
      return 'This helps us create your personalized plan';
    }
  }

  void colorLogicInGoalWeightField(String value, GoalController controller) {
    if (value.isEmpty) {
      controller.tempGoalWeightController.value = value;
    } else if (value.isNotEmpty) {
      controller.tempGoalWeightController.value = value;
    }
  }

  void colorLogicInLatestWeightField(String value, GoalController controller) {
    if (value.isEmpty) {
      controller.tempLatWeightController.value = value;
    } else if (value.isNotEmpty) {
      controller.tempLatWeightController.value = value;
    }
  }

  Color colorLogic(GoalController controller) {
    Color activeColor = Colors.amber.shade300;
    Color inActiveColor = Colors.grey;
    bool isCurrentGoal = controller.currentGoal.isNotEmpty;
    GoalPage currentPage = controller.currentPage.value;
    bool selectedGender = controller.selectedGender.value.isNotEmpty;
    bool temWeight = controller.tempLatWeightController.value.isNotEmpty;
    bool tempGoalWeight = controller.tempGoalWeightController.value.isNotEmpty;
    if (isCurrentGoal && currentPage == GoalPage.currentPage) {
      return activeColor;
    } else if (temWeight && currentPage == GoalPage.latestWeight) {
      return activeColor;
    } else if (tempGoalWeight && currentPage == GoalPage.goalWeight) {
      return activeColor;
    } else if (selectedGender && currentPage == GoalPage.gender) {
      return activeColor;
    }
    return inActiveColor;
  }

  void continueLogic(GoalController controller) {
    bool isCurrentGoal = controller.currentGoal.isNotEmpty;
    GoalPage currentPage = controller.currentPage.value;
    bool selectedGender = controller.selectedGender.value.isNotEmpty;
    bool temWeight = controller.tempLatWeightController.value.isNotEmpty;
    bool tempGoalWeight = controller.tempGoalWeightController.value.isNotEmpty;
    if (isCurrentGoal && currentPage == GoalPage.currentPage) {
      return controller.setGoalPage();
    } else if (temWeight && currentPage == GoalPage.latestWeight) {
      return controller.setGoalPage();
    } else if (tempGoalWeight && currentPage == GoalPage.goalWeight) {
      return controller.setGoalPage();
    } else if (selectedGender && currentPage == GoalPage.gender) {
      return controller.setGoalPage();
    } else {
      return;
    }
  }

  @override
  List<String> gender = ['Female', 'Male'];

  @override
  List<GoalModel> goals = <GoalModel>[
    GoalModel(id: 1, title: 'Lose Weight', image: '${_baseAsset}surface1.svg'),
    GoalModel(id: 2, title: 'Build Muscle', image: '${_baseAsset}bicep.svg'),
    GoalModel(
        id: 3,
        title: 'Increase Energy',
        image: '${_baseAsset}lightning-bolt.svg'),
    GoalModel(id: 4, title: 'Improve Sleep', image: '${_baseAsset}sleep.svg'),
    GoalModel(id: 5, title: 'Manage Glucose', image: '${_baseAsset}blood.svg'),
    GoalModel(id: 6, title: 'Be Healthier', image: '${_baseAsset}flat.svg'),
  ];
}
