import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';

class FCMTokenManager {
  static String? fcmToken;

  static Future<void> initializeFCMToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    fcmToken = await messaging.getToken();
    print("FCM Token: $fcmToken");
  }
}

class DeviceIDManager {

  static String? uniqueDeviceId;

  static Future<void> getUniqueDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();

    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      uniqueDeviceId =
          '${iosDeviceInfo.name}:${iosDeviceInfo.identifierForVendor}';
      //unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      uniqueDeviceId = '${androidDeviceInfo.model}:${androidDeviceInfo.id}';
      // unique ID on Android
    }

    // return uniqueDeviceId;
  }
}

class GEOLocationManager {
  late Position position;

  void getGEOLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("Permissions Not Given");
      await Geolocator.requestPermission();
    } else {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      print("Lattitude: " + position.latitude.toString());
      print("Longitude: " + position.longitude.toString());
    }
  }
}
