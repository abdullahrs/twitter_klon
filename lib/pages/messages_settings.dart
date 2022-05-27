import 'package:flutter/material.dart';

class MessagesSettings extends StatefulWidget {
  const MessagesSettings({Key? key}) : super(key: key);

  @override
  State<MessagesSettings> createState() => _MessagesSettingsState();
}

class _MessagesSettingsState extends State<MessagesSettings> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "Messages settings",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Done",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12.0,
              ),
              child: Row(
                children: const [
                  Text(
                    "Privacy",
                    style: TextStyle(
                        color: Color.fromRGBO(104, 118, 132, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                children: [
                  const Text(
                    "Receive messages from anyone",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                      "You will be able to receive Direct Message requests from anyone on Twitter, even if you don’t follow them.",
                      style: TextStyle(
                          color: Color.fromRGBO(104, 118, 132, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: const [
                  Text(
                    "Learn more",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                children: [
                  const Text(
                    "Quality filter",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  Switch(
                    value: isSwitched2,
                    onChanged: (value2) {
                      setState(() {
                        isSwitched2 = value2;
                      });
                    },
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                      "Filters lower-quality messages from your Direct Message requests.",
                      style: TextStyle(
                          color: Color.fromRGBO(104, 118, 132, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: const [
                  Text(
                    "Learn more",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                children: [
                  const Text(
                    "Show read receipts",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  Switch(
                    value: isSwitched3,
                    onChanged: (value3) {
                      setState(() {
                        isSwitched3 = value3;
                      });
                    },
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                      "When someone sends you a message, peopla in the conversation will know when you’ve seen it. If you turn off this setting, you won’t be able to see read receipts from others.",
                      style: TextStyle(
                          color: Color.fromRGBO(104, 118, 132, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: const [
                  Text(
                    "Learn more",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
