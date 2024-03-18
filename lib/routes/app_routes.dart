part of 'app_pages.dart';

abstract class Routes {
  static const home = _Path.home;
  static const goal = _Path.goalScreen;
}

abstract class _Path {
  static const String home = '/home';
  static const String goalScreen = '/';
}
