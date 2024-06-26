import 'package:elearningapp_demo/views/loginView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OnboardingtwoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFDAFFF2),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    height: 120,
                    child: Image.asset(
                      'assets/images/Group 8.png',
                      height: 120, width: 136,
                      // height: MediaQuery.of(context).size.height,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  //const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    height: 120.0,
                    child: Image.asset(
                      'assets/images/onboardingpic.png',
                      height: 76, width: 134,
                      // height: MediaQuery.of(context).size.height,
                      // fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Stack(
                children: [
                  Container(
                      width: 230,
                      height: 160.0,
                      margin: EdgeInsets.only(bottom: 5),
                      child: const CircleAvatar(
                          radius: 70.0,
                          backgroundImage:
                              AssetImage("assets/images/ani.jpg"))),
                  Positioned(
                    bottom: 90.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.green,
                      ),
                      width: 50.0,
                      height: 35.0,
                      child: const Center(
                          child: Text(
                        "Hii",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 8,
                    child: Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                      child: Text(
                        "Jyoti\nPrajapati",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      color: Colors.grey[300],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                "  Empower your\nLearning Experience ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0000000),
                ),
              ),
              Container(
                  margin:
                      const EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                  child: Text(
                    "Online learning refers to instruction that is delivered electronically through various multimedia and Internet platforms and applications. It is used interchangeably with other terms such as web-based learning, e-learning, computer-assisted instruction, and Internet-based learning.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      color: Color(0xFF0000000),
                    ),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              LoadingAnimationWidget.twistingDots(
                leftDotColor: const Color(0xFF1A1A3F),
                rightDotColor: Colors.grey,
                size: 50,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF575756),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
