abstract class Chart {
  List<ChartModel> chart = <ChartModel>[];
}

class ChartModel {
  final int id;
  final List<int> ageGroup;
  final List<String> month;

  ChartModel({required this.id, required this.ageGroup, required this.month});
}
