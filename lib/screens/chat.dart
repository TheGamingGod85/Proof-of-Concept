import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:poc/screens/startchat.dart';
import 'package:poc/widgets/widgets.dart';
import 'package:poc/widgets/theme.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [];

  @override
  void initState() {
    super.initState();
    Timer(Duration(hours: 2), () {
      print("Going Back");
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.black,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Leave Chat?"),
                  content: Text(
                      "Do you wish to exit the chat? If you haven't exchanged any information with this user, the chances of encountering them again are quite slim."),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel")),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: StartChat(),
                                  type: PageTransitionType.fade,
                                  duration: 500.milliseconds));
                        },
                        child: Text("Leave"))
                  ],
                ),
              );
            }),
        backgroundColor: MyColor.indigo,
        title: Text(
          "Anonymous User",
        ),
        centerTitle: true,
        actions: [
          ReusableCountdownTimer(
            initialSeconds: 2 * 60 * 60,
            onTimerComplete: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: BubbleNormal(
                      text: messages[index].text,
                      isSender: messages[index].isSender,
                      color: messages[index].color,
                      tail: true,
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: MessageBar(
                messageBarColor: MyColor.black,
                sendButtonColor: MyColor.indigo,
                onSend: (message) {
                  setState(() {
                    messages.add(Message(
                        text: message, isSender: true, color: MyColor.crimson));
                    // Simulate a reply from the other person
                    messages.add(Message(
                        text: 'This is a reply from the other person.',
                        isSender: false,
                        color: MyColor.crimson)
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Message {
  final String text;
  final bool isSender;
  final Color color;
  Message({required this.text, required this.isSender, required this.color});
}
