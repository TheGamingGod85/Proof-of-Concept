import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:poc/widgets/widgets.dart';
import 'package:poc/widgets/theme.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [];
  Message? _longPressedMessage; // Store the long-pressed message

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press here
        leaveChatDialog(context);
        return false; // Return false to prevent popping the screen
      },
      child: Scaffold(
        backgroundColor: MyColor.black,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              onPressed: () {
                leaveChatDialog(context);
              }),
          backgroundColor: MyColor.indigo,
          title: Text(
            "Anonymous User",
          ),
          centerTitle: false,
          actions: [
            if (_longPressedMessage !=
                null) // Show the copy button when a message is long-pressed
              IconButton(
                icon: Icon(Icons.copy_rounded),
                onPressed: () {
                  _copyMessageToClipboard(_longPressedMessage!.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Message copied to clipboard'),
                      duration: 300.milliseconds,
                      backgroundColor: MyColor.black,
                    ),
                  );
                  setState(() {
                    _longPressedMessage =
                        null; // Reset the long-pressed message
                  });
                },
              ),
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
          child: GestureDetector(
            onTap: () {
              // Reset the long-pressed message when tapping outside
              setState(() {
                _longPressedMessage = null;
              });
            },
            child: Column(
              children: <Widget>[
                // Add a widget to display the current date message
                if (messages
                    .isEmpty) // Show it only if there are no messages yet
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${DateFormat('dd MMM yyyy, hh:mm').format(DateTime.now())}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onLongPress: () {
                          setState(() {
                            _longPressedMessage = messages[index];
                          });
                        },
                        child: Padding(
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
                        final currentTime = DateTime.now();
                        messages.add(Message(
                            text: message,
                            isSender: true,
                            color: MyColor.crimson,
                            timestamp: currentTime));
                        // Simulate a reply from the other person
                        messages.add(Message(
                            text: 'This is a reply from the other person.',
                            isSender: false,
                            color: MyColor.crimson,
                            timestamp: currentTime.add(Duration(minutes: 1))));
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _copyMessageToClipboard(String message) {
    Clipboard.setData(ClipboardData(text: message));
  }
}

class Message {
  final String text;
  final bool isSender;
  final Color color;
  final DateTime timestamp;
  Message(
      {required this.text,
      required this.isSender,
      required this.color,
      required this.timestamp});
}
