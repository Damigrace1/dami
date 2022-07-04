


//Creating Notification channel to show heads up notification using flutter_local_notification

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class LocalNotificationService{
  static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
  static void initialize(){
    final InitializationSettings initializationSettings=
    InitializationSettings(
      android: AndroidInitializationSettings(
        "@mipmap/ic_launcher"));
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
  //this shows notification header in foreground and also creates notification channel when it is run the first time
  static void display(RemoteMessage message) async{
   try {
      final  id = (DateTime.now().microsecondsSinceEpoch ~/ 1000) ;
      final NotificationDetails notificationDetails = NotificationDetails(
          android: AndroidNotificationDetails('mine', 'mine channel',
              channelDescription: 'This is mine channel',
              importance: Importance.max,
              priority: Priority.high));

      await _flutterLocalNotificationsPlugin.show(
          id,
          message.notification!.title,
          message.notification!.body,
          notificationDetails);
    }

    catch(e){print(e);}
  }
}