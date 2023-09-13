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
      backgroundColor: MyColor.black,
      appBar: AppBar(
        backgroundColor: MyColor.crimson,
        title: Text("Anonymous User"),
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
                      color: MyColor.crimson,
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
              padding: const EdgeInsets.all(8.0),
              child: MessageBar(
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
