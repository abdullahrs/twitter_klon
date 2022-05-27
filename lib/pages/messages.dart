import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/messages_settings.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
  var names = [
    "AzizDjan",
    "Andrew Parker",
    "Komol Kuckhrow",
    "karanne",
    "Maximillian",
    "Martha Craig",
    "Marthin Randolph",
    "Kieron Dotson",
  ];
  var nicks = [
    "@azizd",
    "@andreww_",
    "@kkuckhow",
    "@karanne",
    "@maxjacobson",
    "@craig_love",
    "@martini_round",
    "@kierod",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 14, right: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/profile.png"),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Messages",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MessagesSettings()));
                        },
                        child: Image.asset("images/settings.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  width: 370,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(231, 236, 240, 1),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      label: Text("Search for people and groups"),
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.2,
                color: Colors.white,
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(photos[index]),
                                ],
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 14.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            names[index],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 6.0),
                                            child: Text(
                                              nicks[index],
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w200),
                                            ),
                                          ),
                                          const Text(
                                            "12/2/2022",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14.0, top: 4),
                                      child: Text(
                                        "You accepted the request",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          "images/message_button.png",
          color: Colors.white,
        ),
      ),
    );
  }
}
