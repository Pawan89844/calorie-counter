import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:get/get.dart';

class GoalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(GoalController());
  }
}
