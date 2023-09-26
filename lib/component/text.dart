import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  late String text;
   Textform({
    super.key,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.only(left: 30.0),
      child: Align(alignment: Alignment.topLeft,
          child: Text(text,
            style:const  TextStyle(fontWeight:FontWeight.bold),)),
    );
  }
}