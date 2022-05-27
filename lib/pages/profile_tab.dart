import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/login.dart';
import 'package:twitter_clone/pages/profile.dart';
import 'package:twitter_clone/pages/tweet_page.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _HomeState();
}

class _HomeState extends State<ProfileTab> {
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
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      children: [
                        Image.asset(photos[index]),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/heart.png"),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Kieron Dotson and Zack John liked",
                              style: TextStyle(
                                  color: Color.fromRGBO(104, 118, 132, 1)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Row(
                          children: [
                            Text(
                              names[index],
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                nicks[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(104, 118, 132, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 285,
                        height: 80,
                        child: const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Text(
                              "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/comment.png",
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 40.0, left: 6),
                              child: Text(
                                "28",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.asset("images/retweet.png"),
                            const Padding(
                              padding: EdgeInsets.only(right: 40.0, left: 6),
                              child: Text(
                                "125",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.asset("images/like.png"),
                            const Padding(
                              padding: EdgeInsets.only(right: 40.0, left: 6),
                              child: Text(
                                "3642",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.asset("images/share.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
