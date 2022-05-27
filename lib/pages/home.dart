import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/login.dart';
import 'package:twitter_clone/pages/profile.dart';
import 'package:twitter_clone/pages/tweet_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile())),
            child: Image.asset("images/profile.png"),
          ),
        ),
        title: Center(
            child: GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Login())),
          child: Image.asset("images/logo_twitter.png"),
        )),
        actions: [
          Image.asset("images/feature.png"),
        ],
      ),
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
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(32, 33, 36, 1),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: GestureDetector(
                                child: Image.asset("images/acc.png")),
                          ),
                          const Text(
                            "Pixsellz",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const Text(
                            "@ayotunde",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Image.asset("images/sacc.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 4),
                        child: Image.asset("images/sacc2.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0, top: 4),
                        child: Image.asset("images/menu_icon.png",
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Text(
                            "216",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Text(
                            "Following",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Text(
                            "117",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile())),
              child: ListTile(
                leading:
                    Image.asset("images/profileIcon.png", color: Colors.white),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("images/listIcon.png", color: Colors.white),
              title: const Text(
                "Lists",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            ListTile(
              leading: Image.asset("images/topicIcon.png", color: Colors.white),
              title: const Text(
                "Topics",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "images/bookmarksIcon.png",
                color: Colors.white,
              ),
              title: const Text(
                "Bookmarks",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Image.asset("images/momentsIcon.png", color: Colors.white),
              title: const Text(
                "Moments",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5,
                color: Colors.black,
              ),
            ),
            const ListTile(
              title: Text(
                "Settings and privacy",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            const ListTile(
              title: Text(
                "Help Center",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset("images/union.png"),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset("images/kod.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TweetPage()));
        },
        child: Image.asset("images/pencil_icon.png"),
      ),
    );
  }
}
