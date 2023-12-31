import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:poc/screens/chat.dart';
import 'package:poc/utils/global.dart';
import 'package:poc/utils/tokens.dart';
import 'package:poc/widgets/theme.dart';

class StartChat extends StatefulWidget {
  const StartChat({super.key});

  @override
  State<StartChat> createState() => _StartChatState();
}

class _StartChatState extends State<StartChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.black,
      appBar: AppBar(
        backgroundColor: MyColor.indigo,
        title: Text("Proof of Concept"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              color: MyColor.indigo,
              size: 150,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 50),
              child: Text(
                  isShown.FirstLogin
                      ? "Glad To Meet You!"
                      : "Welcome Back! We Missed You!",
                  style: TextStyle(fontSize: 26, color: Colors.white)),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.indigo,
                    fixedSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  print(FCMTokenManager.fcmToken);
                  print("FCM Token :: ${FCMTokenManager.fcmToken}");
                  print("Device Id :: ${DeviceIDManager().getDeviceId()}");
                  GEOLocationManager().getGEOLocation();
                  Navigator.push(
                    context,
                    PageTransition(
                        child: ChatPage(),
                        type: PageTransitionType.fade,
                        duration: 500.ms),
                  );
                },
                child: Text(
                  "Start Chatting",
                  style: TextStyle(fontSize: 24),
                )),
          ],
        )),
      ),
    );
  }
}
