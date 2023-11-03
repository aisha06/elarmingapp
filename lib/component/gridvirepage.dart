import 'package:elearningapp_demo/views/liveCousreView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grridviewpage extends StatelessWidget {
  const Grridviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10),
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: List.generate(
        20,
        (index) {
          return GestureDetector(
            onTap: () {
              // Get.to(LivecourseView());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LivecourseView()),
              );
            },
            child: Container(
              color: const Color(0xFFD9D9D9),
              child: Column(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 85,
                      child: ClipRect(
                          child: Image.asset(
                        'assets/images/livepic.png',
                        // fit: BoxFit.fill,
                        height: 88,
                        width: 158,
                      ))),
                  Card(
                    elevation: 6,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        color: const Color(0xFF91E8B2),
                        child: const Text(
                          "Machine learning Bootcamp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "krish Naik",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "60,000",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Spacer(),
                        Container(color: Colors.grey, child: const Text("Live"))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
