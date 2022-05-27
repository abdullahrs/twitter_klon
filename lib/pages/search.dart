import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var tfController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 14, right: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/profile.png"),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0, left: 16),
                        child: Container(
                          width: 270,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(231, 236, 240, 1),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 17),
                              label: Center(child: Text("Search Twitter")),
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Image.asset(
                          "images/settings.png",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Stack(children: [
                    Image.asset(
                      "images/ferrari.jpg",
                      color: Colors.white.withOpacity(0.7),
                      colorBlendMode: BlendMode.modulate,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 200, left: 15, right: 5),
                          child: const Text(
                            "Sport ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200.0),
                          child: Image.asset(
                            "images/circle-solid.png",
                            color: Colors.white,
                            width: 5,
                            height: 5,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 200.0, left: 5),
                          child: Text(
                            "Starting Date: 29 May 2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 220.0, left: 15),
                      child: Text(
                        "Monaco Grand Prix 2022",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: MediaQuery.of(context).size.width,
                  height: 0.3,
                  color: Colors.white,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
                  child: Row(
                    children: const [
                      Text(
                        "Trends for you",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, bottom: 4, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Araba Yarışı Tarihinde Gündemde",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontWeight: FontWeight.w900),
                      ),
                      Spacer(),
                      Image.asset(
                        "images/more.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "Elon Musk",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 4, bottom: 15),
                  child: Row(
                    children: const [
                      Text(
                        "22,6 B Tweet",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, bottom: 4, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Araba Yarışı Tarihinde Gündemde",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontWeight: FontWeight.w900),
                      ),
                      Spacer(),
                      Image.asset(
                        "images/more.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "#CharlesLeclerc",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 4, bottom: 15),
                  child: Row(
                    children: const [
                      Text(
                        "22,6 B Tweet",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, bottom: 4, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Araba Yarışı Tarihinde Gündemde",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontWeight: FontWeight.w900),
                      ),
                      Spacer(),
                      Image.asset(
                        "images/more.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "Max Verstappen",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 4, bottom: 15),
                  child: Row(
                    children: const [
                      Text(
                        "22,6 B Tweet",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, bottom: 4, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Araba Yarışı Tarihinde Gündemde",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontWeight: FontWeight.w900),
                      ),
                      Spacer(),
                      Image.asset(
                        "images/more.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "#Turkey",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 4, bottom: 15),
                  child: Row(
                    children: const [
                      Text(
                        "22,6 B Tweet",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, bottom: 4, right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Araba Yarışı Tarihinde Gündemde",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontWeight: FontWeight.w900),
                      ),
                      Spacer(),
                      Image.asset(
                        "images/more.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "#MonacoGP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 4, bottom: 15),
                  child: Row(
                    children: const [
                      Text(
                        "22,6 B Tweet",
                        style: TextStyle(
                            color: Color.fromRGBO(104, 118, 132, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Show more",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 0.3,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "What's happening?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: const [
                                  Text(
                                    "Covid-19 - Live",
                                    style: TextStyle(
                                        color: Color.fromRGBO(104, 118, 132, 1),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Current developments about\ncovid 19 in Turkey",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "images/mask.jpeg",
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Show more",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 0.3,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Who should you follow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "images/hamilton.jpg",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Lewis Hamilton",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Image.asset(
                                    "images/verified4.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "@lewishamilton",
                                  style: TextStyle(
                                      color: Color.fromRGBO(104, 118, 132, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                primary: Color.fromARGB(255, 218, 218, 218)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "images/redbull.jpg",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Redbull Racing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Image.asset(
                                    "images/verified4.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 93,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "@redbullracing",
                                  style: TextStyle(
                                      color: Color.fromRGBO(104, 118, 132, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                primary: Color.fromARGB(255, 218, 218, 218)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "images/cem.jpg",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Cem Bölükbaşı",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Image.asset(
                                    "images/verified4.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 93,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "@cembolukbasi",
                                  style: TextStyle(
                                      color: Color.fromRGBO(104, 118, 132, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                primary: Color.fromARGB(255, 218, 218, 218)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "images/formula.jpg",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Formula 1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Image.asset(
                                    "images/verified4.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 128,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "@formula1",
                                  style: TextStyle(
                                      color: Color.fromRGBO(104, 118, 132, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                primary: Color.fromARGB(255, 218, 218, 218)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 10, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "Show more",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset("images/pencil_icon.png"),
      ),
    );
  }
}
