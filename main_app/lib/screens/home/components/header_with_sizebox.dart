import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          style: TextStyle(
                            color: Color.fromARGB(255, 30, 30, 30),
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Noto_Serif_TC',
                            fontSize: 30,
                          ),
                          text: "Hi, User."),
                    ],
                  ),
                ),
                Expanded(
                  //塞間隔
                  child: Container(),
                ),
                SizedBox(
                  child: Align(
                    alignment: Alignment(0.60, 0.80),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/notifications.svg",
                        height: 100,
                        width: 100,
                      ),
                      onPressed: () {
                        print("print...");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 42, bottom: 40),
            height: 200,
            width: 330,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            color: kShadowColor),
                      ],
                    ),
                  ),
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
            margin: EdgeInsets.only(left: 42),
            height: 320,
            width: 330,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 320,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            color: kShadowColor),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
