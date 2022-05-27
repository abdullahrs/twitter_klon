import 'package:flutter/material.dart';

class Not_page2 extends StatefulWidget {
  const Not_page2({Key? key}) : super(key: key);

  @override
  State<Not_page2> createState() => _Not_page2State();
}

class _Not_page2State extends State<Not_page2> {
  @override
  Widget build(BuildContext context) {
    var photos = [
      "images/pp1.png",
      "images/pp2.png",
      "images/pp3.png",
      "images/pp4.png",
      "images/pp5.png",
      "images/pp6.png",
      "images/pp7.png",
      "images/pp8.png",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 30),
                  child: Row(
                    children: [
                      Image.asset("images/star.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                            width: 37,
                            height: 37,
                            child: Image.asset(photos[index])),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 63.0, right: 10, top: 10),
                  child: Text(
                    "Kobe’s passing is really sticking w/ me in a way I didn’t expect.He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.But the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
