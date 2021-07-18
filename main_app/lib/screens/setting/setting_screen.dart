import 'package:flutter/material.dart';
import 'package:main_app/enums.dart';
import 'package:main_app/components/coustom_bottom_nav_bar.dart';
import 'components/body.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.setting),
    );
  }
}
