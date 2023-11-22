import 'package:elearningapp_demo/views/live_Screen.dart';
import 'package:elearningapp_demo/views/payment_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveNewScreen extends StatefulWidget {
  const LiveNewScreen({super.key});

  @override
  State<LiveNewScreen> createState() => _LiveNewScreenState();
}

class _LiveNewScreenState extends State<LiveNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
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
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/video_image.png"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Machine learning Bootcamp",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                    child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff91e8b2)),
                        // color: Colors.green,
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Rs",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text("60,000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          )),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Container(
                                height: 2,
                                width: 70,
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              child: Text(
                                "Rs 50,000",
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xff999999)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text("20% Off",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff999999),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset("assets/images/clock2.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "12 hours left at this price! Add to Cart",
                        style: TextStyle(
                          color: Color(0xFFD20000),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Card(
                    color: Color(0xFF91E8B2),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentView()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF91E8B2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        child: Text(
                          "Enroll Now",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Class Details :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/startDate.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Start Date:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("13th May'23",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/classTimings.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Class Timings:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("09:00 AM to 12:00 PM (IST) Saturday - Sunday",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset("assets/images/doubt.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Doubt Session:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("12:00 PM to 2:00 PM (IST) Saturday - Sunday",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Course Features :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "Job Guarantee Program",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "Job Guarantee Program",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "Job Guarantee Program",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "Full Stack Data Science Masters Certification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "Job Guarantee Program",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      Text(
                        "Job Guarantee Program",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
