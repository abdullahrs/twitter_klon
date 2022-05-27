import 'package:flutter/material.dart';
import 'package:twitter_clone/pages/home.dart';
import 'package:twitter_clone/pages/login.dart';
import 'package:twitter_clone/pages/messages.dart';
import 'package:twitter_clone/pages/notifications.dart';
import 'package:twitter_clone/pages/search.dart';
import 'package:twitter_clone/pages/transition_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Login(),
    );
  }
}
