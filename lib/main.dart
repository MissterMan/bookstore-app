import 'package:bookstore/screen/favourite.dart';
import 'package:bookstore/screen/homepage.dart';
import 'package:bookstore/screen/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/bookdata_provider.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  FirebaseMessaging.instance.getToken().then((value) => print(value));

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => BookProvider()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Satoshi',
          splashColor: const Color(0xFFBF4126),
          primaryColor: const Color(0xFFBF4126),
        ),
        home: FirebaseAuth.instance.currentUser == null
            ? LoginPage()
            : HomePage(
                nama: FirebaseAuth.instance.currentUser?.displayName ?? "",
                profileImage:
                    FirebaseAuth.instance.currentUser?.photoURL ?? ""),
        routes: {
          'favbooks': ((_) => FavouriteBooks()),
        },
      ),
    );
  }
}
