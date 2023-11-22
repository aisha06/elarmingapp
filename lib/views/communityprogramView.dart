import 'package:elearningapp_demo/component/gridvirepage.dart';
import 'package:flutter/material.dart';

class CommunityprogramView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Community Program ",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Get your program with live'Instructor lead'learning",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.black),
              ),
              Grridviewpage()
            ],
          ),
        ),
      ),
    );
  }
}
