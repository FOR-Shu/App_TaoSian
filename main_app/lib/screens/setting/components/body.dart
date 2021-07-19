import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                          color: Color.fromARGB(255, 50, 50, 50),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Noto_Serif_TC',
                          fontSize: 30,
                        ),
                        text: "Setting"),
                    TextSpan(
                      text: "\n各種設定",
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 50, 50),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Noto_Serif_TC',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
