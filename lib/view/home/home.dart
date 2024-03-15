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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 28.0, top: 8.0),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade200, shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 10.0),
                    const AppHeadingText('Weight', fontSize: 12.0),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppTextTile(
                      title: '100 kg',
                      subtitle: 'Starting',
                    ),
                    AppTextTile(
                      title: '100 kg',
                      subtitle: 'Latest',
                    ),
                    AppTextTile(
                      title: '90 kg',
                      subtitle: 'Goal',
                    ),
                    SizedBox(width: 10.0)
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

class AppTextTile extends StatelessWidget {
  final String title, subtitle;
  const AppTextTile({
    super.key,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeadingText(title, fontSize: 16.0),
        AppText(subtitle, fontSize: 12.0)
      ],
    );
  }
}
