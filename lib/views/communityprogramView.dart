import 'package:elearningapp_demo/views/Gridview_widget/gridview-builder.dart';
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
            left: 25,
            right: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "  Community Program",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Color(0xFF0000000),
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "    Get your program with live'Instructor lead'learning",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.0,
                    color: Color(0xFF0000000),
                  ),
                ),
              ),
              //Grridviewpage()
              GridViewPage(),
              SizedBox(height: 20),
              GridViewPage(),
              SizedBox(height: 20),
              GridViewPage(),
              SizedBox(height: 20),
              GridViewPage(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
