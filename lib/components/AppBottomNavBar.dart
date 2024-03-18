// ignore_for_file: file_names
import 'package:caloriescount/view/pages/model/page_model.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  late Pages page;

  @override
  void initState() {
    super.initState();
    page = Pages();
  }

  @override
  Widget build(BuildContext context) {
    // BottomNavigationBar(items: items)
    return Scaffold(
      body: page.appPages[page.currentIndex].page,
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        shape: const AutomaticNotchedShape(RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0)))),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...page.appPages
              .mapIndexed(
                (index, e) => Expanded(
                    child: InkWell(
                        onTap: () {
                          page.setPage(index);
                          setState(() {});
                        },
                        child: e.icon)),
              )
              .toList()
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: FloatingActionButton(
            elevation: 0.0,
            onPressed: () {},
            backgroundColor: Colors.amber.shade200,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)),
            child: const Icon(Icons.add)),
      ),
    );
  }
}
