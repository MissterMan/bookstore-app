import 'package:bookstore/homepage.dart';
import 'package:bookstore/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences storeLocal = await SharedPreferences.getInstance();
  var _isLogin = storeLocal.getBool("isLogin");
  var _nama = storeLocal.getString("nama");
  runApp(MaterialApp(
    home: _isLogin == false || _isLogin == null || _nama == null
        ? LoginPage()
        : HomePage(
            nama: _nama.toString(),
          ),
  ));
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
