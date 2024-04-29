import 'package:elearningapp_demo/views/Gridview_widget/gridview-builder.dart';
import 'package:elearningapp_demo/views/affordableprogramView..dart';
import 'package:elearningapp_demo/views/communityprogramView.dart';
import 'package:elearningapp_demo/views/home_widget/home1.dart';
import 'package:elearningapp_demo/views/liveprogramView.dart';
import 'package:elearningapp_demo/views/notificationScreenView.dart';
import 'package:elearningapp_demo/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String accesstoken});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  fromJson(e) {}
}

class _HomeScreenState extends State<HomeScreen> {
  //final List<Map> myProducts = List.generate(100, (index) => {}).toList();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFDAFFF2),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFDAFFF2),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Spacer(),
            Text(
              "Welcome Vaishnavi",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            // Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationscreenView(),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/icon.png"),
              ),
            ),
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: Image.asset("assets/images/drawer.png"),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(20),
          //height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormFieldWedget(),
              const SizedBox(height: 20),
              // Container(
              //   //margin: EdgeInsets.all(15),
              //   margin: EdgeInsets.only(
              //     top: height / 40,
              //   ),
              //   child: CarouselSlider.builder(
              //     itemCount: 1,
              //     options: CarouselOptions(
              //       enlargeCenterPage: true,
              //       height: height / 6,
              //       autoPlay: true,
              //       autoPlayInterval: Duration(seconds: 3),
              //       reverse: false,
              //       aspectRatio: 5.0,
              //       viewportFraction: 0.7,
              //     ),
              //     itemBuilder: (context, i, id) {
              //       //for onTap to redirect to another screen
              //       return GestureDetector(
              //         child: Container(
              //           width: width / 1.7,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(15),
              //               border: Border.all(
              //                 color: Colors.transparent,
              //               )),
              //           //ClipRRect for image border radius
              //           child: ClipRRect(
              //             borderRadius: BorderRadius.circular(10),
              //             child: Image.asset(
              //               "assets/images/globe.png",
              //               height: 90,
              //               width: 150,
              //             ),
              //           ),
              //         ),
              //         onTap: () {},
              //       );
              //     },
              //   ),
              // ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 145,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 10.0,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  viewportFraction: 1.0,
                ),
                items: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff5BA084),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "A Sale as big as\nyour dreams",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text\nof the printing and typesetting\nindustry.",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/globe.png")),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff58605C),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "A Sale as big as\nyour dreams",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: height / 6.8,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, position) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          colors: [Color(0xFF58605C), Color(0xFF5BA084)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/classmates 1 (1).png",
                              height: 35.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: height * 0.01),
                            Text(
                              "Enrolled Students",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            //SizedBox(height: height * 0.01),
                            Text("8000+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    );
                    ;
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Live Program",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Get your program with live'Instructor lead'learning",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LiveprogramView()),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(5.0),
                        color: Color(0xFF91E8B2),
                        child: Text("View More",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ))),
                  ),
                ],
              ),
              SizedBox(height: 15),
              //1st Gridview builder
              GridViewPage(),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Affordable Programs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Get your program with live'Instructor lead'learning",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AffordableprogramView()),
                      );
                    },
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                          padding: EdgeInsets.all(5.0),
                          color: Color(0xFF91E8B2),
                          child: Text("View More",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              //2ns grideview builder
              GridViewPage(),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Community Program ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFF0000000),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Get your program with live'Instructor lead'learning",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommunityprogramView()),
                      );
                    },
                    child: Card(
                      elevation: 10.0,
                      child: Container(
                          padding: EdgeInsets.all(5.0),
                          color: Color(0xFF91E8B2),
                          child: Text("View More",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ))),
                    ),
                  ),
                ],
              ),
              //3d grideview builder
              SizedBox(height: 15),
              // GridViewPage(),
              GridViewPage(),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
