import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  String text;
  Function() function;
  Button({super.key, required this.text, required this.function});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
      // width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: widget.function,
          style: ElevatedButton.styleFrom(
              primary: const Color(0xFF575756),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          child: Text(
            widget.text,
            style: const TextStyle(fontSize: 18.0),
          )),
    );
  }
}
