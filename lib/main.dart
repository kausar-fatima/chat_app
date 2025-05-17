import 'package:chat_app/pages/HomePage.dart';
import 'package:chat_app/pages/widgets/ChatPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 243, 231, 197),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 243, 231, 197),
            foregroundColor: Colors.black,
          ),
        ),
        routes: {
          "/": (context) => const HomePage(),
          "chatPage": (context) => const ChatPage(),
        });
  }
}
