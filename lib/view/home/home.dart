import 'package:caloriescount/widget/AppHeadingText.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        title: const AppHeadingText('Goals'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          SvgPicture.asset('assets/icons/settings.svg'),
          const SizedBox(width: 20.0)
        ],
      ),
      body: const SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
