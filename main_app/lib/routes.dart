import 'package:flutter/widgets.dart';
import 'package:main_app/screens/home/home_screen.dart';
import 'package:main_app/screens/qrscan/qrscan_screen.dart';
import 'package:main_app/screens/setting/setting_screen.dart';
import 'package:main_app/screens/store/store_screen.dart';
import 'package:main_app/screens/menu/menu_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  QrScanScreen.routeName: (context) => QrScanScreen(),
  StoreScreen.routeName: (context) => StoreScreen(),
  MenuScreen.routeName: (context) => MenuScreen(),
};
