import 'package:bookstore/homepage.dart';
import 'package:bookstore/model/dummy_data.dart';
import 'package:flutter/material.dart';
import "package:shared_preferences/shared_preferences.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome,",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "to BookApps 📚",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.15),
                    blurRadius: 15.0,
                    spreadRadius: 0,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "Username",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.15),
                    blurRadius: 15.0,
                    spreadRadius: 0,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFBF4126))),
                onPressed: () {
                  // loginFunc();
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
