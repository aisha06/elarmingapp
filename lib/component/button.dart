import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Function() function;
  Button({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
      // width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: function,
        style: ElevatedButton.styleFrom(
            primary:  Color(0xFF575756)
            ,
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold)),
          child: Text(
            text,
            style: TextStyle(fontSize: 18.0),
          )),
    );
  }
}
