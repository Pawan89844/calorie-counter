import 'package:caloriescount/view/goal/controller/goal_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

mixin class GoalInformation {
  final DateTime _now = DateTime.now();
  DateFormat _format = DateFormat('MMMM');

  ///List of MONTHS, DATE and YEAR for Birthday Page
  final RxList<String> _month = <String>[].obs;
  RxList<String> _day = <String>[].obs;
  RxList<String> _year = <String>[].obs;

  ///Getters for MONTH, DATE and YEAR
  RxList<String> get month => _month;
  RxList<String> get day => _day;
  RxList<String> get year => _year;

  void getMonth() {
    List.generate(12, (i) {
      final nextMonth = _now.add(Duration(days: i * 30));
      final item = _format.format(nextMonth).substring(0, 3);
      if (!_month.contains(item)) {
        return _month.add(item);
      }
    });
  }

  void getDays() {}
  // void getYear() {
  //   List.generate(length, (i) => null);
  // }
}
