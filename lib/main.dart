import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/pages/auth_page.dart';
import 'package:ui_demo/pages/splash_screen.dart';

import 'package:ui_demo/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Map<int, Widget> op = {1: SplashPage(), 2: SplashPage()};
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication',
      theme: ThemeData(
          primaryColor: Constants.primaryColor,
          cursorColor: Constants.primaryColor
          // is not restarted.
          ),
      home: CustomSplash(
        imagePath: 'assets/images/logo_trp.png',
        backGroundColor: Constants.primaryColor,
        // backGroundColor: Color(0xfffc6042),
        animationEffect: 'top-down',
        home: AuthPage(),
        // customFunction: duringSplash,
        duration: 2500,
        type: CustomSplashType.StaticDuration,
        outputAndHome: op,
      ),
    );
  }
}
