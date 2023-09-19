import 'package:bot/chat_screen.dart';
import 'package:bot/register_screen.dart';
import 'page_components.dart';
import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);
  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Login',
          style: TextStyle(fontFamily: AutofillHints.birthday, fontSize: 40),
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
                  text: "REGISTER",
                  function: () {
                     Navigator.pushNamed(context, RegisterScreen.id);
                  }),
              SubmitButton(
                function: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
