import 'package:elearningapp_demo/views/loginView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingtwoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    height: 150,
                    child: Image.asset(
                      'assets/images/Group 8.png',
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    height: 90.0,
                    child: Image.asset(
                      'assets/images/onboardingpic.png',
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
             const SizedBox(height: 20.0,),
            Stack(
              children: [
                Container(
                  width: 250,
                    height: 180.0,
                    child: const CircleAvatar(
                        radius: 80.0,
                        backgroundImage:
                            AssetImage("assets/images/aisha.jpg"))),
                Positioned(

                  bottom: 80.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.green,
                    ),
                    width: 50.0,
                    height: 40.0,
                    child: const Center(
                        child: Text(
                      "Hi",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                Positioned(
                  top: 40.0,
                  left: 140,
                  child: Container(
                    child:  Center(
                        child: Text(
                      "vaishnavi\nBansal",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    margin: const EdgeInsets.only(top: 90.0),
                    color: Colors.grey[300],
                    height: 60.0,
                    width: 80.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 80.0,
            ),
            Text(
              "    Empower your\nLearning Experience ",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Container(
                margin:
                    const EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                child: Text(
                  "Online learning refers to instruction that is delivered electronically through various multimedia and Internet platforms and applications. It is used interchangeably with other terms such as web-based learning, e-learning, computer-assisted instruction, and Internet-based learning.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  );
                },
                child: const Text("Next"),
              style: ElevatedButton.styleFrom(
                  primary:const   Color(0xFF575756)
                  ,
                  padding:const  EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),)
          ],
        ),
      ),
    );
  }
}
