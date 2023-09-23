import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:poc/screens/onboarding.dart';
import 'package:poc/screens/startchat.dart';
import 'package:poc/utils/global.dart';
import 'package:poc/widgets/theme.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(color: MyColor.crimson),
                child: Center(
                  child: Text(
                    "Proof Of Concept",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 34),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void whereToGo() async {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              child: isShown.Onboarding ? StartChat() : Onboarding(),
              type: PageTransitionType.fade,
              duration: Duration(seconds: 1)));
    });
  }
}
