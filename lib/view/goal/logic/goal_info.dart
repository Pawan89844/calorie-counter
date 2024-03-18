import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:caloriescount/view/goal/model/goal_model.dart';
import 'package:get/get.dart';

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
