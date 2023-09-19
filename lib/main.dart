import 'package:bot/chat_screen.dart';
import 'package:bot/main_extension.dart';
import 'package:bot/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const id = "mainScreen";
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    String src =
        "https://images.unsplash.com/photo-1519770340285-c801df5ff3db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2566&q=80";
    return MaterialApp(
        initialRoute: MyApp.id,
        routes: {
          RegisterScreen.id: (context) => const RegisterScreen(),
          ChatScreen.id: (context) => const ChatScreen(),
        },
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(247, 250, 253, 1.0),
            body: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(src), fit: BoxFit.cover)),
                ),
                const SafeArea(
                  child: Center(
                    child: Validation(),
                  ),
                ),
              ],
            )));
  }
}
