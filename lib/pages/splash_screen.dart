import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      color: Color(0xffd6001b),
      child: Center(
        child: Image.asset("assets/images/logo_trp.png"),
      ),
    );
  }
}
