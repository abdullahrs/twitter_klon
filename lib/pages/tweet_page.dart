import 'package:flutter/material.dart';

class TweetPage extends StatefulWidget {
  const TweetPage({Key? key}) : super(key: key);

  @override
  State<TweetPage> createState() => _TweetPageState();
}

class _TweetPageState extends State<TweetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor: Colors.blue,
                                duration: Duration(seconds: 1),
                                content:
                                    Text("The tweet was sent successfully.")));
                      },
                      child: const Text(
                        "Tweet",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  autofocus: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 20, right: 20),
                        child: Image.asset("images/pp5.png"),
                      ),
                      labelText: "What's happening?",
                      labelStyle: const TextStyle(
                          color: Color.fromRGBO(104, 118, 132, 1),
                          fontSize: 19,
                          fontWeight: FontWeight.w400)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
