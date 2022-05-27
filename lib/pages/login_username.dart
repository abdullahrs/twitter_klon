import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/login_password.dart';

class LoginUsername extends StatefulWidget {
  const LoginUsername({Key? key}) : super(key: key);

  @override
  State<LoginUsername> createState() => _LoginUsernameState();
}

class _LoginUsernameState extends State<LoginUsername> {
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
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 120),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
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
                "To get started,first enter your phone,email or @username",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: TextField(
                style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(104, 118, 132, 1))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(104, 118, 132, 1))),
                  label: Text(
                    "Phone,email or username",
                    style: TextStyle(
                        color: Color.fromRGBO(104, 118, 132, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 20),
              child: Row(
                children: [
                  const Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPassword()));
                      },
                      child: const Text("Next"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
