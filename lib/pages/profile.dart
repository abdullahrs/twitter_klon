import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home.dart';
import 'package:twitter_clone/pages/profile_tab.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromRGBO(31, 31, 31, 1),
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Center(
                  child: Row(children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(200)),
                            primary: Colors.transparent),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_outlined)),
                    const Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text("Digital Goodies Team",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/primary_account.png"),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: const BorderSide(color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {},
                          child: const Text(
                            "Edit profile",
                            style: TextStyle(color: Colors.blue),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Row(
                  children: const [
                    Text(
                      "Pixsellz",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 4),
                child: Row(
                  children: const [
                    Text(
                      "@pixsellz",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15),
                child: Row(
                  children: const [
                    Flexible(
                      child: Text(
                        "Digital Goodies Team - Web & Mobile UI/UX development; Graphics; Illustrations",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 20),
                child: Row(
                  children: [
                    Image.asset("images/link.png"),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "pixsellz.io",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Image.asset("images/calendar.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Joined September 2018",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(104, 118, 132, 1)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 18),
                child: Row(
                  children: const [
                    Text(
                      "217",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Text(
                        "217",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: DefaultTabController(
                    length: 4, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const TabBar(
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.white,
                            tabs: [
                              Tab(text: 'Tweets'),
                              Tab(text: 'Replies'),
                              Tab(text: 'Media'),
                              Tab(text: 'Likes'),
                            ],
                          ),
                          Container(
                              height: 600, //height of TabBarView
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: const TabBarView(children: <Widget>[
                                ProfileTab(),
                                ProfileTab(),
                                ProfileTab(),
                                ProfileTab(),
                              ]))
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
