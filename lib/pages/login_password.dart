import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home.dart';
import 'package:twitter_clone/pages/login.dart';
import 'package:twitter_clone/pages/transition_page.dart';

class LoginPassword extends StatefulWidget {
  const LoginPassword({Key? key}) : super(key: key);

  @override
  State<LoginPassword> createState() => _LoginPasswordState();
}

class _LoginPasswordState extends State<LoginPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 120),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Image.asset(
                  "images/twitter_transparent.png",
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10, left: 10, top: 30),
              child: Text(
                "Enter Your Password",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 35),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(104, 118, 132, 1))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(104, 118, 132, 1))),
                  label: Text(
                    "Password",
                    style: TextStyle(
                        color: Color.fromRGBO(104, 118, 132, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TransitionPage()));
                },
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 130),
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
