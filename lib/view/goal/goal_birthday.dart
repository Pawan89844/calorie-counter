import 'package:caloriescount/components/NoteComponent.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalBirthday extends StatelessWidget {
  GoalBirthday({super.key});
  final TextEditingController _monthController = TextEditingController();
  final TextEditingController _dayController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
              child: const AppText('Step 4 of 4'),
            ),
            const LinearProgressIndicator(
              color: Colors.yellow,
              value: 1.0,
              minHeight: 7.0,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            )
          ],
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownMenu(
                  initialSelection: null,
                  controller: _monthController,
                  width: 110.0,
                  label: const AppText('Month', color: Color(0xFF8D93A5)),
                  onSelected: (value) {},
                  inputDecorationTheme: const InputDecorationTheme(
                      border: InputBorder.none, isCollapsed: true),
                  trailingIcon: SvgPicture.asset('assets/icons/back.svg'),
                  dropdownMenuEntries: ['Jan', 'Feb', 'March', 'April']
                      .map((e) => DropdownMenuEntry(
                            value: e,
                            label: e,
                          ))
                      .toList()),
              DropdownMenu(
                  initialSelection: null,
                  controller: _dayController,
                  width: 90.0,
                  label: const AppText('Day', color: Color(0xFF8D93A5)),
                  onSelected: (value) {},
                  inputDecorationTheme: const InputDecorationTheme(
                      border: InputBorder.none, isCollapsed: true),
                  trailingIcon: SvgPicture.asset('assets/icons/back.svg'),
                  dropdownMenuEntries: ['01', '02', '03', '04']
                      .map((e) => DropdownMenuEntry(
                            value: e,
                            label: e,
                          ))
                      .toList()),
              DropdownMenu(
                  initialSelection: null,
                  controller: _yearController,
                  width: 100.0,
                  label: const AppText('Year', color: Color(0xFF8D93A5)),
                  onSelected: (value) {},
                  inputDecorationTheme: const InputDecorationTheme(
                      border: InputBorder.none, isCollapsed: true),
                  trailingIcon: SvgPicture.asset('assets/icons/back.svg'),
                  dropdownMenuEntries: ['2024', '2023', '2022', '2021']
                      .map((e) => DropdownMenuEntry(
                            value: e,
                            label: e,
                          ))
                      .toList()),
            ],
          ),
        ),
        // const Spacer(),
        // const NoteComponent(),
      ],
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 14.0),
    //       child: Column(
    //         children: [
    //           const SizedBox(height: 40.0),
    //           const HeadingComponent(
    //             heading: 'What\'s your Birthday',
    //             subHeading: 'This helps us create your personalized plan',
    //           ),
    //           const SizedBox(height: 10.0),
    //           Column(
    //             children: [
    //               Container(
    //                 alignment: Alignment.topLeft,
    //                 padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
    //                 child: const AppText('Step 4 of 4'),
    //               ),
    //               const LinearProgressIndicator(
    //                 color: Colors.yellow,
    //                 value: 1.0,
    //                 minHeight: 7.0,
    //                 borderRadius: BorderRadius.all(Radius.circular(12.0)),
    //               )
    //             ],
    //           ),
    //           const SizedBox(height: 30.0),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 15.0, left: 8.0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 DropdownMenu(
    //                     initialSelection: null,
    //                     controller: _monthController,
    //                     width: 110.0,
    //                     label: const AppText('Month', color: Color(0xFF8D93A5)),
    //                     onSelected: (value) {},
    //                     inputDecorationTheme: const InputDecorationTheme(
    //                         border: InputBorder.none, isCollapsed: true),
    //                     trailingIcon: SvgPicture.asset('assets/icons/back.svg'),
    //                     dropdownMenuEntries: ['Jan', 'Feb', 'March', 'April']
    //                         .map((e) => DropdownMenuEntry(
    //                               value: e,
    //                               label: e,
    //                             ))
    //                         .toList()),
    //                 DropdownMenu(
    //                     initialSelection: null,
    //                     controller: _dayController,
    //                     width: 90.0,
    //                     label: const AppText('Day', color: Color(0xFF8D93A5)),
    //                     onSelected: (value) {},
    //                     inputDecorationTheme: const InputDecorationTheme(
    //                         border: InputBorder.none, isCollapsed: true),
    //                     trailingIcon: SvgPicture.asset('assets/icons/back.svg'),
    //                     dropdownMenuEntries: ['01', '02', '03', '04']
    //                         .map((e) => DropdownMenuEntry(
    //                               value: e,
    //                               label: e,
    //                             ))
    //                         .toList()),
    //                 DropdownMenu(
    //                     initialSelection: null,
    //                     controller: _yearController,
    //                     width: 100.0,
    //                     label: const AppText('Year', color: Color(0xFF8D93A5)),
    //                     onSelected: (value) {},
    //                     inputDecorationTheme: const InputDecorationTheme(
    //                         border: InputBorder.none, isCollapsed: true),
    //                     trailingIcon: SvgPicture.asset('assets/icons/back.svg'),
    //                     dropdownMenuEntries: ['2024', '2023', '2022', '2021']
    //                         .map((e) => DropdownMenuEntry(
    //                               value: e,
    //                               label: e,
    //                             ))
    //                         .toList()),
    //               ],
    //             ),
    //           ),
    //           const Spacer(),
    //           const NoteComponent(),
    //           const SizedBox(height: 20.0),
    //           AppButton(
    //             name: 'Continue',
    //             onPressed: () {},
    //           ),
    //           const SizedBox(height: 20.0),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
