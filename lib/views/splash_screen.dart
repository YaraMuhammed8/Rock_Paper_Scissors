import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/services/methods/navigation.dart';
import 'package:rock_paper_scissors/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2),
        () => navigateWithoutBack(context, HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 200,
            width: 200,
          )
        ],
      )),
    );
  }
}
