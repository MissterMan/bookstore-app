import 'package:bookstore/homepage.dart';
import 'package:bookstore/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Satoshi',
        splashColor: Color(0xFFBF4126),
        primaryColor: Color(0xFFBF4126),
      ),
      home: HomePage(
        nama: "Lorem",
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Satoshi'),
      home: LoginPage(),
    );
  }
}
