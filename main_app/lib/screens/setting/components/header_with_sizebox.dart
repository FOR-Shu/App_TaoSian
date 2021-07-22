import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWithSizeBox extends StatelessWidget {
  const HeaderWithSizeBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background.png"),
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
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 4),
                            blurRadius: 20,
                            color: kShadowColor),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/account.png",
                  height: 100,
                  width: 120,
                ),
                Positioned(
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 30),
            height: 255,
            width: 354,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 255,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 4),
                            blurRadius: 20,
                            color: kShadowColor),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/store.png",
                  height: 55,
                  width: 85,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
