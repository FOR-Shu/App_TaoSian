import 'package:flutter/material.dart';
//import 'package:main_app/constants.dart';
import 'package:main_app/routes.dart';
import 'package:main_app/screens/store/store_screen.dart';

//import 'package:main_app/screens/home/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaoSian',
      theme: ThemeData(fontFamily: 'Noto_Serif_TC'),
      //home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      //* 想要看到什麼畫面就改什麼
      initialRoute: StoreScreen.routeName,
      routes: routes,
    );
  }
}
