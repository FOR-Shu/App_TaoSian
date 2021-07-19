import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyle(
                          color: Color.fromARGB(255, 30, 30, 30),
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Noto_Serif_TC',
                          fontSize: 30,
                        ),
                        text: "Setting"),
                    TextSpan(
                      text: "\n各種設定",
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 50, 50),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Noto_Serif_TC',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30, bottom: 40),
              height: 245,
              width: 354,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 221,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(2, 4),
                              blurRadius: 33,
                              color: kShadowColor),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/account.png",
                    height: 90,
                    width: 95,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
