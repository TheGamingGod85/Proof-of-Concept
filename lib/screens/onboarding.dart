import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:page_transition/page_transition.dart';
import 'package:poc/screens/startchat.dart';
import 'package:poc/widgets/theme.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List<Introduction> list = [
    Introduction(
      title: 'Try1',
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      subTitle: 'dum dum dum',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
      imageUrl: "assets/images/onboarding/placeholder.png",
    ),
    Introduction(
      title: 'Try2',
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      subTitle: 'dum dum dum',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
      imageUrl: 'assets/images/onboarding/placeholder.png',
    ),
    Introduction(
      title: 'Try3',
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      subTitle: 'dum dum dum',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
      imageUrl: 'assets/images/onboarding/placeholder.png',
    ),
    Introduction(
      title: 'Try4',
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      subTitle: 'dum dum dum',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
      imageUrl: 'assets/images/onboarding/placeholder.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      foregroundColor: MyColor.indigo,
      backgroudColor: MyColor.black,
      onTapSkipButton: () {
        Navigator.pushReplacement(
            context,
            PageTransition(
                child: StartChat(),
                type: PageTransitionType.fade,
                duration: 1.seconds));
      },
    );
  }
}
