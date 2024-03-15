import 'package:caloriescount/widget/AppHeadingText.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const AppHeadingText('Task'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
