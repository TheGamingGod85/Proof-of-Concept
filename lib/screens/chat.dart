import 'package:flutter/material.dart';
import 'package:poc/widgets/theme.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<String> sentMessages = [
  ];
  List<String> receivedMessages = [
    "Hey There!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.black,
      appBar: AppBar(
        backgroundColor: MyColor.crimson,
        title: Text("Anonymous User"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: sentMessages.length,
                    itemBuilder: (context, index) {
                      return BubbleNormal(
                        text: sentMessages[index],
                        isSender: true,
                        color: Color(0xFF1B97F3),
                        tail: true,
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      );
                    }
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: receivedMessages.length,
                      itemBuilder: (context, index) {
                        return BubbleNormal(
                          text: receivedMessages[index],
                          isSender: false,
                          color: Color(0xFF1B97F3),
                          tail: true,
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        );
                      }
                  ),

                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            MessageBar(
              messageBarColor: MyColor.black,
              sendButtonColor: MyColor.crimson,
              onSend: (message) {
                setState(() {
                  sentMessages.add(message);
                });
              },
            ),
          ]
        ),
      ),
    );
  }
}
