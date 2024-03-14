import 'package:flutter/material.dart';

class GoalModel {
  final int id;
  final String title;
  final String image;

  GoalModel({required this.id, required this.title, required this.image});
  static const String _baseAsset = 'assets/';

  static List<String> gender = ['Female', 'Male'];

  static List<GoalModel> goals = <GoalModel>[
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
