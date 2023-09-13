import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: MyColor.crimson),
              child: Center(
                child: Text(
                  "POC",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 42),
                ),
              ),
            ).animate().scale(begin: Offset(0, 0), end: Offset(1, 1), duration: 2000.ms),
          ],
        ),
      )),
    );
  }

  void whereToGo() async {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, PageTransition(child: isShown.Onboarding ? StartChat() : Onboarding(), type: PageTransitionType.fade, duration: Duration(seconds: 1)));
    });
  }
}
