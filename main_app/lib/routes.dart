import 'package:flutter/widgets.dart';
import 'package:main_app/screens/home/home_screen.dart';
import 'package:main_app/screens/setting/setting_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
};
