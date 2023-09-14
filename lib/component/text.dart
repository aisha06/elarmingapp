import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  late String text;
   Textform({
    super.key,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.0),
      child: Align(alignment: Alignment.topLeft,
          child: Text(text,
            style: TextStyle(fontWeight:FontWeight.bold),)),
    );
  }
}