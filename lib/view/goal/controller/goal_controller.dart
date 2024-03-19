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

  void setGoalPage() {
    switch (_currenPage.value) {
      case GoalPage.goalWeight:
        _currenPage.value = GoalPage.gender;
        _goal.heading(_currenPage.value);
        _goal.subHeading(_currenPage.value);
        break;
      case GoalPage.latestWeight:
        _currenPage.value = GoalPage.goalWeight;
        _goal.heading(_currenPage.value);
        _goal.subHeading(_currenPage.value);
        break;
      case GoalPage.gender:
        _currenPage.value = GoalPage.birthday;
        _goal.heading(_currenPage.value);
        _goal.subHeading(_currenPage.value);
        break;
      case GoalPage.birthday:
        _currenPage.value = GoalPage.home;
        _goal.heading(_currenPage.value);
        _goal.subHeading(_currenPage.value);
        break;
      case GoalPage.currentPage:
        _currenPage.value = GoalPage.latestWeight;
        _goal.heading(_currenPage.value);
        _goal.subHeading(_currenPage.value);
        break;
      default:
        _currenPage.value = GoalPage.currentPage;
        _goal.heading(_currenPage.value);
        _goal.subHeading(_currenPage.value);
        break;
    }
  }
}
