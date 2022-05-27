import 'dart:io';

import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/not_page1.dart';
import 'package:twitter_clone/pages/not_page2.dart';
import 'package:twitter_clone/pages/profile.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: Image.asset("images/profile.png")),
          ),
          title: const Center(
            child: Text(
              "Notifications",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          actions: [
            Image.asset("images/feature.png"),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(text: "Mentions"),
            ],
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(children: [Not_page1(), Not_page2()]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset("images/pencil_icon.png"),
        ),
      ),
    );
  }
}
