import 'dart:convert';

import 'package:fcm_ios_test/services/notify_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

@pragma('vm:entry-point')
Future<void> onBackgroundMessage(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  debugPrint("background messaging");
  if (message.data != {}) {
    final data = NotificationModel.fromMap(message.data);
    NotificationService().sendNotification(
      id: 1,
      title: 'Picking No: ${data.pickingNumber}',
      body: 'You have new Take Order For Picking.',
      payload: json.encode(message.data),
    );
  }
}

class FCM {
  final NotificationService _notification = NotificationService();
  final _firebaseMessaging = FirebaseMessaging.instance;

  setNotifications() async {
    FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);

    forgroundNotification();

    backgroundNotification();

    terminateNotification();

    await FirebaseMessaging.instance.subscribeToTopic('security_warehouse');
  }

  Future<String?> getToken() async {
    final token = await _firebaseMessaging.getToken();
    debugPrint(token);
    return token;
  }

  forgroundNotification() {
    FirebaseMessaging.onMessage.listen(
      (message) async {
        debugPrint("onMessaging");

        if (message.data != {}) {
          final data = NotificationModel.fromMap(message.data);
          _notification.sendNotification(
            id: 1,
            title: 'Picking No: ${data.pickingNumber}',
            body: 'You have new Take Order For Picking.',
            payload: json.encode(message.data),
          );
        }
      },
    );
  }

  backgroundNotification() {
    FirebaseMessaging.onMessageOpenedApp.listen(
      (message) async {
        debugPrint("App opened messaging");

        if (message.data != {}) {
          final data = NotificationModel.fromMap(message.data);
          _notification.sendNotification(
            id: 1,
            title: 'Picking No: ${data.pickingNumber}',
            body: 'You have new Take Order For Picking.',
            payload: json.encode(message.data),
          );
        }
      },
    );
  }

  terminateNotification() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    debugPrint(
      'terminateNotification() called : message => ${initialMessage?.data}',
    );
    if (initialMessage != null) {}
  }
}
