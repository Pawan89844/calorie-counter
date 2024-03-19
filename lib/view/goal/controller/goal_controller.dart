import 'package:get/get.dart';

import '../logic/goal_info.dart';

enum GoalPage { latestWeight, goalWeight, gender, birthday, currentPage, home }

class GoalController extends GetxController {
  ///Goal Info is a Logic class which contains static data model creation part.
  final GoalInfo _goal = GoalInfo();
  final RxList _selectedGoal = [].obs;

  /// [_selectedGoal] List keeps track of selected Goals category from [GoalsGrid].
  /// private value can't be modified directly.
  RxList get currentGoal => _selectedGoal;
  final Rx<GoalPage> _currenPage = Rx<GoalPage>(GoalPage.currentPage);

  /// current page property is the [GoalPage] index.
  Rx<GoalPage> get currentPage => _currenPage;

  /// Set Goal Method is for adding the Goal into [_selectedGoal] List
  void setGoal(int itemId) {
    if (!_selectedGoal.contains(itemId)) {
      _selectedGoal.add(itemId);
    } else {
      _selectedGoal.remove(itemId);
    }
  }

  /// A Private method which reduces the redundency of assigning the page, heading, and subheading.
  void _setPage(GoalPage page) {
    _currenPage.value = page;
    _goal.heading(_currenPage.value);
    _goal.subHeading(_currenPage.value);
  }

  /// setGoal method is for setting the page based on the [_currentPage.value]. It sets the next page from current page.
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
