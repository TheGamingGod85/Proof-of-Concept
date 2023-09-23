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
        child: Column(
          children: [
            Container(
              width: 32,
              height: 58,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0,
                            child: Text(
                              'P',
                              style: TextStyle(
                                color: Color(0xFF3F51B5),
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 368,
              height: 58,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 369,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'r',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'oof of Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 369,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.30),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'r',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'o',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'of of Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'ro',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'o',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'f of Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roo',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'f',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' of Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'of Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'o',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'f Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof o',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'f',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Concept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'C',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'oncept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of C',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'o',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ncept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of Co',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'n',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'cept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of Con',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'c',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'ept',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of Conc',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'e',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'pt',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of Conce',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'p',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 't',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 368,
                    height: 58,
                    padding: const EdgeInsets.only(right: 12.27),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'roof of Concep',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 't',
                                  style: TextStyle(
                                    color: Color(0xFF3F51B5),
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
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
