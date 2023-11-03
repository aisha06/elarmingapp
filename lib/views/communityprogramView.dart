import 'package:elearningapp_demo/component/gridvirepage.dart';
import 'package:flutter/material.dart';

class CommunityprogramView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30.0,
                  ),
                  onPressed: () {
                    // Navigate back when the back button is pressed
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Text(
                    "Community Program ",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Get your program with live'Instructor lead'learning",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.black),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Grridviewpage()
          ],
        ),
      ),
    );
  }
}
