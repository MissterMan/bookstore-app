// import 'package:firebase_messaging/firebase_messaging.dart';

// Future<void> backgroundHandler(RemoteMessage message) async {
//   print(message.data.toString());
//   print(message.notification!.title);
// }

// initNotification() async {
//   final fcm = FirebaseMessaging.instance;
//   FirebaseMessaging.onBackgroundMessage(backgroundHandler);

//   try {
//     await fcm.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     final token = fcm.getToken().then((token) => print(token));

//     //Foreground APP
//     FirebaseMessaging.onMessage.listen((message) {
//       print(message.notification!.body);
//       print(message.notification!.title);
//     });

//     //Background APP !Terminated
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       final routeMessage = message.data["route"];
//       if (routeMessage != null) {
//         print(routeMessage);
//       }
//     });

//     fcm.getInitialMessage();
//   } on FirebaseMessaging catch (e) {
//     print(e);
//   }
// }
