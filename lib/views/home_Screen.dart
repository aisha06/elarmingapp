import 'package:elearningapp_demo/component/listviewprograms.dart';
import 'package:elearningapp_demo/views/affordableprogramView..dart';
import 'package:elearningapp_demo/views/communityprogramView.dart';
import 'package:elearningapp_demo/views/liveprogramView.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
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
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/icon.png"),
              )
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                  MaterialLocalizations.of(context).openAppDrawerTooltip;
                },
                child: Image.asset("assets/images/drawer.png"),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: SafeArea(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.001,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            "Welcome Vaishnavi",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          suffixIcon:
                              Image.asset("assets/images/microphone.png"),
                          prefixIcon: Image.asset("assets/images/search.png"),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search here....",
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 14,
                                    color: Color(0xff9796A1),
                                    fontWeight: FontWeight.w300,
                                  ),
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Color(0xffDCDCDC))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 188, 63, 63)))),
                    ),
                    SizedBox(height: height * 0.03),
                    CarouselSlider(
                      items: [
                        //Image.asset("assets/images/globe.png"),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff5BA084),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 10, top: 10),
                                      child: Text(
                                          "A Sale as big as\n your dreams",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16.0)),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text\n of the printing and\n typesetting industry.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0),
                                    ),
                                    SizedBox(height: height * 0.01),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 10, top: 10),
                                  child: SizedBox(
                                      height: 54,
                                      width: 56,
                                      child: Image.asset(
                                          "assets/images/globe.png")),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 130,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, position) {
                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF58605C),
                                    Color(0xFF5BA084)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 5.0, bottom: 5.0, right: 5.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/classmates 1 (1).png",
                                      height: 50.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Enrolled Students",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: height * 0.02),
                                        Text("8000+",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        Text(
                          "Live Program ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveprogramView()),
                            );
                          },
                          child: Card(
                            elevation: 10.0,
                            child: Container(
                                padding: EdgeInsets.all(5.0),
                                color: Color(0xFF91E8B2),
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0000000),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Get your program with live'Instructor lead'learning",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Color(0xFF0000000),
                          ),
                        )),
                    SizedBox(height: height * 0.01),
                    listprogramView(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Affordable Program ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xFF0000000),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AffordableprogramView()),
                            );
                          },
                          child: Card(
                            elevation: 10.0,
                            child: Container(
                                padding: EdgeInsets.all(5.0),
                                color: Color(0xFF91E8B2),
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0000000),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Get your program with live'Instructor lead'learning",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0),
                          )),
                    ),
                    SizedBox(height: height * 0.01),
                    listprogramView(),
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        Text(
                          "Community Program ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xFF0000000),
                          ),
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
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0000000),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Get your program with live'Instructor lead'learning",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Color(0xFF0000000),
                          ),
                        )),
                    SizedBox(height: height * 0.01),
                    const listprogramView(),
                  ],
                )))));
  }
}
