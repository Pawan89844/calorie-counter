import 'package:caloriescount/view/goal/goal_birthday.dart';
import 'package:caloriescount/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/goal/goal_gender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Calories Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
