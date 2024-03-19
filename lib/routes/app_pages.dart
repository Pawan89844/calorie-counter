// import 'package:caloriescount/routes/app_routes.dart';
import 'package:caloriescount/components/AppBottomNavBar.dart';
import 'package:caloriescount/view/goal/bindings/goal_bindings.dart';
import 'package:caloriescount/view/goal/goal_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPath {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Path.goalScreen,
      binding: GoalBindings(),
      page: () => GoalView(),
    ),
    GetPage(
      name: _Path.home,
      page: () => const AppBottomNavBar(),
    ),
  ];
}
