import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wellmarts_app/Allonboarding.dart.dart';

class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context as BuildContext,
          MaterialPageRoute(
            builder: (context) => Allonboarding
            (),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Center(child: Image.asset('assets/images/1.png')),
    ));
  }
}
