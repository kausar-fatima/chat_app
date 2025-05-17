import 'package:chat_app/pages/widgets/ChatBottomSheet.dart';
import 'package:chat_app/pages/widgets/ChatSample.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(
                    'Images/kuki.jpg',
                    height: 45,
                    width: 45,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Kuki Pahlwan",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.video_call,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
          children: [
            ChatSample(),
          ]),
      bottomSheet: ChatBottomSheet(),
    );
  }
}
