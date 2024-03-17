import 'package:caloriescount/view/home/model/chart_mode.dart';
import 'package:intl/intl.dart';

class ChartData implements Chart {
  // final int _id = 1;
  final DateTime _now = DateTime.now();
  static final List<String> _months = [];
  static final List<int> _age = [];

  ChartData() {
    _addMonths();
    _ageGroup();
  }

  void _addMonths() {
    DateFormat formatter = DateFormat('MMMM');
    List.generate(12, (i) {
      final nextMonth = _now.add(Duration(days: i * 30));
      final item = formatter.format(nextMonth).substring(0, 3);
      if (!_months.contains(item)) {
        return _months.add(item);
      }
    });
  }

  void _ageGroup() {
    List.generate(4, (i) {
      int item = i * 50;
      if (!_age.contains(item)) {
        _age.add(item);
      }
    });
    print('Age: $_age');
  }

  @override
  List<ChartModel> chart = List<ChartModel>.filled(
      5, ChartModel(id: 1, ageGroup: _age, month: _months));
}
