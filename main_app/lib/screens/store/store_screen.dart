import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main_app/constants.dart';
import 'package:main_app/enums.dart';
import 'package:main_app/components/coustom_bottom_nav_bar.dart';
import 'components/body.dart';

class StoreScreen extends StatelessWidget {
  static String routeName = '/store';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.store),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/bar_menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
