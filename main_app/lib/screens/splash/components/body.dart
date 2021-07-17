import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';
import 'package:main_app/size_config.dart';

// This is the best practice

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text(
                    "做鮮",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Welcome to Tao Sian."),
                  Spacer(flex: 2),
                  Image.asset(
                    "assets/images/splash_1.png",
                    height: getProportionateScreenHeight(265),
                    width: getProportionateScreenWidth(235),
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
