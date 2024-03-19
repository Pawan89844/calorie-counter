import 'package:get/get.dart';

import '../logic/goal_info.dart';

enum GoalPage { latestWeight, goalWeight, gender, birthday, currentPage, home }

class GoalController extends GetxController {
  final GoalInfo _goal = GoalInfo();

  final RxList _selectedGoal = [].obs;

  RxList get currentGoal => _selectedGoal;
  final Rx<GoalPage> _currenPage = Rx<GoalPage>(GoalPage.currentPage);

  Rx<GoalPage> get currentPage => _currenPage;

  void setGoal(int itemId) {
    if (!_selectedGoal.contains(itemId)) {
      _selectedGoal.add(itemId);
    } else {
      _selectedGoal.remove(itemId);
    }
  }

  void _setPage(GoalPage page) {
    _currenPage.value = page;
    _goal.heading(_currenPage.value);
    _goal.subHeading(_currenPage.value);
  }

  void setGoalPage() {
    switch (_currenPage.value) {
      case GoalPage.goalWeight:
        _setPage(GoalPage.gender);
        break;
      case GoalPage.latestWeight:
        _setPage(GoalPage.goalWeight);
        break;
      case GoalPage.gender:
        _setPage(GoalPage.birthday);
        break;
      case GoalPage.birthday:
        _setPage(GoalPage.home);
        break;
      case GoalPage.currentPage:
        _setPage(GoalPage.latestWeight);
        break;
      default:
        _setPage(GoalPage.currentPage);
        break;
    }
  }
}
