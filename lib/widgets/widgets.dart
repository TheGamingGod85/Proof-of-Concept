import 'dart:async';
import 'package:flutter/material.dart';

class ReusableCountdownTimer extends StatefulWidget {
  final int initialSeconds;
  final VoidCallback? onTimerComplete;

  ReusableCountdownTimer({
    required this.initialSeconds,
    this.onTimerComplete,
  });

  @override
  _ReusableCountdownTimerState createState() => _ReusableCountdownTimerState();
}

class _ReusableCountdownTimerState extends State<ReusableCountdownTimer> {
  late Timer _timer;
  int _remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.initialSeconds;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _timer.cancel(); // Stop the timer when it reaches 0
          if (widget.onTimerComplete != null) {
            widget.onTimerComplete!(); // Call the callback function when the timer completes
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int hours = _remainingSeconds ~/ 3600;
    int minutes = (_remainingSeconds % 3600) ~/ 60;
    int seconds = _remainingSeconds % 60;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Text(
          '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant ReusableCountdownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialSeconds != widget.initialSeconds) {
      // Reset the timer if the initial seconds change
      _timer.cancel();
      _remainingSeconds = widget.initialSeconds;
      _startTimer();
    }
  }
}
