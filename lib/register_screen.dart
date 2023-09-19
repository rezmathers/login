import 'package:bot/chat_screen.dart';
import 'package:flutter/material.dart';
import 'page_components.dart';

class RegisterScreen extends StatefulWidget {
  static const id = "register_screen";
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1632749161487-5f38ec89ebdf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
                ),
                fit: BoxFit.cover),
          ),
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Register',
                style:
                    TextStyle(fontFamily: AutofillHints.birthday, fontSize: 40),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TranslucentTextField(),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0).copyWith(top: 0),
                child: const TranslucentTextField(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TransparentButton(
                        function: () {
                          Navigator.pop(context);
                        },
                        text: "Already a Member ?\nLOGIN"),
                    SubmitButton(function: () {
                      Navigator.pushNamed(context, ChatScreen.id);
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
