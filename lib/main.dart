import 'package:flutter/material.dart';
import 'package:poc/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:poc/utils/tokens.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FCMTokenManager.initializeFCMToken();
  GEOLocationManager().getGEOLocation();
  await DeviceIDManager.getUniqueDeviceId();
  runApp(const MyApp());
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