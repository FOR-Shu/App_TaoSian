import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main_app/screens/home/home_screen.dart';
import 'package:main_app/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
    //delay 3 seconds to next page
    Future.delayed(d, () {
      // to next page and close this Page()
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
          ),
        ),
        child: Align(
          alignment: FractionalOffset(0.5, 0.45),
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
      ),
    );
  }
}
