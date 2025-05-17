import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.emoji_emotions,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
                alignment: Alignment.centerRight,
                width: 270,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type Something",
                    border: InputBorder.none,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 0),
            child: Icon(
              Icons.send,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
