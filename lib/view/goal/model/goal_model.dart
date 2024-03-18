abstract class Goal {
  List<GoalModel> goals = <GoalModel>[];
  List<String> gender = <String>[];
}

class GoalModel {
  final int id;
  final String title;
  final String image;

  GoalModel({required this.id, required this.title, required this.image});
}
