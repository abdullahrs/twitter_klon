import 'package:flutter/material.dart';
import 'package:twitter_clone/main.dart';
import 'package:twitter_clone/pages/home.dart';
import 'package:twitter_clone/pages/login_username.dart';
import 'package:twitter_clone/pages/transition_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/twitter_transparent.png",
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 24.0, left: 24, top: 200),
                child: Text(
                  "See what's happening in the world right now.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 130, left: 40, right: 40, bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/google.png",
                        width: 40,
                        height: 40,
                      ),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/apple.png",
                        width: 32,
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: const Text(
                          "Continue with Apple",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
              child: Row(
                children: [
                  Container(
                    width: 140,
                    height: 1,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 1,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Create account",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 20),
              child: Row(
                children: [
                  const Text(
                    "Have an accout already? ",
                    style: TextStyle(
                        color: Color.fromRGBO(104, 118, 132, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const LoginUsername())));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
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
