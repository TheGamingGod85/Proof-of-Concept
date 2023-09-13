import 'package:flutter/material.dart';
import 'package:poc/widgets/theme.dart';
import 'package:chat_bubbles/chat_bubbles.dart';


class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
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
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return BubbleNormal(
                        text: messages[index].text,
                        isSender: messages[index].isSender,
                        color: Color(0xFF1B97F3),
                        tail: true,
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      );
                    },
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
                  messages.add(Message(text: message, isSender: true));
                  // Simulate a reply from the other person
                  messages.add(Message(
                    text: 'This is a reply from the other person.',
                    isSender: false,
                  ));
                });
              },
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

  Message({required this.text, required this.isSender});
}