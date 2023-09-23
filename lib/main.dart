import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:poc/screens/splash_screen.dart';
import 'package:poc/utils/tokens.dart';

import 'firebase_options.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FCMTokenManager.initializeFCMToken();
    GEOLocationManager().getGEOLocation();
    DeviceIDManager().getDeviceId();
    runApp(const MyApp());
  } catch (e) {
    print(e);
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
