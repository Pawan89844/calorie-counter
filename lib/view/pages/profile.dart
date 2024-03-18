import 'package:caloriescount/widget/AppHeadingText.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const AppHeadingText('Profile'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
