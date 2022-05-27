import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home.dart';
import 'package:twitter_clone/pages/messages.dart';
import 'package:twitter_clone/pages/notifications.dart';
import 'package:twitter_clone/pages/search.dart';

class TransitionPage extends StatefulWidget {
  const TransitionPage({Key? key}) : super(key: key);

  @override
  State<TransitionPage> createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
  int secilenIndeks = 0;
  var sayfaListesi = [
    const Home(),
    const Search(),
    const Notifications(),
    const Messages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.black, primaryColor: Colors.white),
        child: BottomNavigationBar(
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("images/home.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("images/search.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("images/notifications.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("images/messages.png"), label: ""),
          ],
          currentIndex: secilenIndeks,
          onTap: (index) {
            setState(() {
              secilenIndeks = index;
            });
          },
        ),
      ),
    );
  }
}
