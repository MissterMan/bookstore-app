import 'package:bookstore/homepage.dart';
import 'package:bookstore/model/dummy_data.dart';
import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  String _nama = "";
  bool _isLogin = false;

  loginFunc() async {
    if (usersCheck()) {
      storeToLocal(_username.text, _password.text, _isLogin);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return HomePage(
            nama: _nama,
          );
        }),
      );
    } else {
      print("Gagal Login");
    }
  }

  storeToLocal(String user, String pass, bool status) async {
    final storeLocal = await SharedPreferences.getInstance();
    await storeLocal.setString("username", user);
    await storeLocal.setString("password", pass);
    await storeLocal.setBool("isLogin", true);
    await storeLocal.setString("nama", _nama);
  }

  bool usersCheck() {
    for (Map<String, dynamic> item in DummyData.data) {
      if (item["username"] == _username.text.toString() &&
          item['password'] == _password.text.toString()) {
        _isLogin = true;
        _nama = item['nama'];
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _username,
            decoration: InputDecoration(
              hintText: "Username",
            ),
          ),
          TextField(
            controller: _password,
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              loginFunc();
            },
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
