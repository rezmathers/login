import 'package:flutter/material.dart';

class TranslucentTextField extends StatelessWidget {
  const TranslucentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white), // Text color
      decoration: InputDecoration(
        fillColor:
            Colors.black.withOpacity(0.3), // Translucent background color
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Colors.white, width: 1.0), // White border
          borderRadius: BorderRadius.circular(10.0), // Rounded edges
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Colors.white, width: 1.0), // White border
          borderRadius: BorderRadius.circular(10.0), // Rounded edges
        ),
        hintText: 'Enter text here', // Placeholder text
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.7),
        ), // Placeholder text color
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({required this.function, Key? key}) : super(key: key);
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black12.withOpacity(0.3),
          elevation: 0,
          shape: const StadiumBorder(side: BorderSide(color: Colors.white)),
        ),
        onPressed: () {
          function();
        },
        child: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Text("SUBMIT"),
        ),
      ),
    );
  }
}

class TransparentButton extends StatelessWidget {
  const TransparentButton(
      {required this.function, required this.text, Key? key})
      : super(key: key);
  final String text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          elevation: MaterialStateProperty.all<double>(0),
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        onPressed: () {
          function();
        },
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(text),
        ),
      ),
    );
  }
}
