import 'package:caloriescount/widget/AppHeadingText.dart';
import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: const AppHeadingText('TODO')),
      body: Container(),
    );
  }
}
