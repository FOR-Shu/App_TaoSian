import 'package:flutter/material.dart';

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
            alignment: Alignment.center,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * .1),
            RichText(
              text: TextSpan(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
