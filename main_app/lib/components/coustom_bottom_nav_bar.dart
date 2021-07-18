import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_app/screens/home/home_screen.dart';
import 'package:main_app/screens/setting/setting_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/list.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/box.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/qrcodescan.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  color: MenuState.food == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/setting.svg",
                  color: MenuState.setting == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, SettingScreen.routeName),
              ),
            ],
          )),
    );
  }
}
