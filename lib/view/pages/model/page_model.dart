// ignore_for_file: unused_field

import 'package:caloriescount/view/home/home.dart';
import 'package:caloriescount/view/pages/profile.dart';
import 'package:caloriescount/view/pages/task.dart';
import 'package:caloriescount/view/pages/todo.dart';
import 'package:caloriescount/widget/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

abstract class AppPages {
  final List<PageModel> _appPages = <PageModel>[];
}

class PageModel implements AppPages {
  final int? id;
  final Widget? page;
  final Widget? icon;

  PageModel({this.id, this.page, this.icon});

  List<PageModel> get appPages => _appPages;

  @override
  List<PageModel> get _appPages => [
        PageModel(
            id: 0,
            page: const Home(),
            icon: SvgPicture.asset('assets/icons/home.svg')),
        PageModel(
            id: 1,
            page: const Task(),
            icon: SvgPicture.asset('assets/icons/crosshair.svg',
                color: Colors.black)),
        PageModel(id: 2, page: const Todo(), icon: const AppText('')),
        PageModel(
            id: 3,
            page: const Todo(),
            icon: SvgPicture.asset('assets/icons/clipboard.svg')),
        PageModel(
            id: 3,
            page: const UserProfile(),
            icon: SvgPicture.asset('assets/icons/avatar.svg')),
      ];
}
