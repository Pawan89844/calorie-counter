import 'package:caloriescount/view/home/view%20model/chart_data.dart';
import 'package:caloriescount/widget/AppButton.dart';
import 'package:caloriescount/widget/AppHeadingText.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ChartData _data = ChartData();
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
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppHeadingText('Weight Chart - kg', fontSize: 15.0),
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            color: Colors.amber.shade200,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: const Row(children: [
                          AppText('Annually'),
                          SizedBox(width: 5.0),
                          AppText('Monthly'),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            children: List.generate(
                                _data.chart.length - 1,
                                (i) => Container(
                                      margin: const EdgeInsets.only(
                                          left: 14.0,
                                          right: 14.0,
                                          bottom: 45.0),
                                      padding:
                                          const EdgeInsets.only(bottom: 12.0),
                                      child: AppText(_data.chart[i].ageGroup[i]
                                          .toString()),
                                    )).reversed.toList(),
                          ),
                          for (int i = 0; i < _data.chart.length; i++)
                            Column(
                              children: [
                                Container(
                                  height: i == 2 ? 200.0 : 100.0,
                                  width: 20.0,
                                  margin: const EdgeInsets.all(14.0),
                                  decoration: BoxDecoration(
                                      color: i == 2
                                          ? Colors.amber.shade200
                                          : const Color(0xFF7388A9)
                                              .withOpacity(0.2),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(5.0),
                                          topRight: Radius.circular(5.0),
                                          bottomLeft: Radius.circular(4.0),
                                          bottomRight: Radius.circular(4.0))),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(12.0),
                                      child: AppText(_data.chart[i].month[i]),
                                    )
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: AppButton(
                      onPressed: () {},
                      name: 'Add New Measurement',
                      borderRadius: 18.0,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
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
            ),
            const SizedBox(height: 20.0),
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
