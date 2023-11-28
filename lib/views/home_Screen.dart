import 'package:elearningapp_demo/component/listviewprograms.dart';
import 'package:elearningapp_demo/views/affordableprogramView..dart';
import 'package:elearningapp_demo/views/communityprogramView.dart';
import 'package:elearningapp_demo/views/live_Screen.dart';
import 'package:elearningapp_demo/views/live_new_ui.dart';
import 'package:elearningapp_demo/views/liveprogramView.dart';
import 'package:elearningapp_demo/views/notificationScreenView.dart';
import 'package:elearningapp_demo/views/profile_screen.dart';
import 'package:elearningapp_demo/views/search_screen.dart';
import 'package:elearningapp_demo/views/sharelistView.dart';
import 'package:elearningapp_demo/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFDAFFF2),
        title: Row(
          children: [
            Spacer(),
            Text(
              "Welcome Vaishnavi",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Spacer(),
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
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.001,
                ),
                SizedBox(height: height * 0.03),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 12),
                        Container(
                          height: 44, // Adjust the height as needed
                          width: 1.5, // Width of the vertical divider
                          color: Colors.black, // Color of the vertical divider
                        ),
                        Image.asset("assets/images/microphone.png"),
                      ],
                    ),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 8),
                        Image.asset("assets/images/search.png"),
                        SizedBox(width: 12),
                        Container(
                          height: 44, // Adjust the height as needed
                          width: 1.5, // Width of the vertical divider
                          color: Colors.black, // Color of the vertical divider
                        ),
                      ],
                    ),
                    filled: true,
                    fillColor: Color(0xffD9D9D9),
                    hintText: "     Search ",
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xffDCDCDC)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xffDCDCDC)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xffDCDCDC)),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 130,
                    // enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 10.0,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
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
                                    fontSize: 17,
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
                                    fontSize: 14,
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
                                fontSize: 20,
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
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, position) {
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            gradient: LinearGradient(
                              colors: [Color(0xFF58605C), Color(0xFF5BA084)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 6.0, bottom: 5.0, right: 6.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/classmates 1 (1).png",
                                  height: 50.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Enrolled Students",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.4,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Text("8000+",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600))
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
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Live Program",
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
                              builder: (context) => LiveprogramView()),
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
                //1st Gridview builder
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 200,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                        child: GestureDetector(
                      onTap: () {
                        // _showBottomSheetDeposit(context);
                      },
                      child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 90,
                                    child: ClipRect(
                                      child: Image.asset(
                                        'assets/images/livepic.png',
                                        fit: BoxFit.fill,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      child: Row(
                                    children: [
                                      Spacer(),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WishlistScreen()),
                                              );
                                            },
                                            child: Container(
                                              child: RatingBar.builder(
                                                initialRating: 0,
                                                minRating: 0,
                                                updateOnDrag: false,
                                                glow: false,
                                                itemCount: 1,
                                                itemSize: 25,
                                                allowHalfRating: false,
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  // Handle the rating update here
                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SharelistView()),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9D9D9),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xFFD9D9D9),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Image.asset(
                                                'assets/images/share.png',
                                                fit: BoxFit.fill,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xff91e8b2),
                                  ),
                                  child: Center(
                                    child: Text("Machine Learning Bootcamp",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                              ),
                              Text(
                                "Krish Naik",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    // color:Colors.green,
                                    child: Text(
                                      "Rs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "60,000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LiveNewScreen()),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff575756),
                                            Color(0xff575756)
                                          ], // Replace with your desired colors
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            0.9,
                                            0.5
                                          ], // This splits the gradient in half
                                        ),
                                      ),
                                      child: const Text(
                                        "Live",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ));
                  },
                ),

                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Affordable Programs",
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
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 200,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                        child: GestureDetector(
                      onTap: () {
                        // _showBottomSheetDeposit(context);
                      },
                      child: Container(
                          //height: 160,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 90,
                                    child: ClipRect(
                                      child: Image.asset(
                                        'assets/images/livepic.png',
                                        fit: BoxFit.fill,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      child: Row(
                                    children: [
                                      Spacer(),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WishlistScreen()),
                                              );
                                            },
                                            child: Container(
                                              child: RatingBar.builder(
                                                initialRating: 0,
                                                minRating: 0,
                                                updateOnDrag: false,
                                                glow: false,
                                                itemCount: 1,
                                                itemSize: 25,
                                                allowHalfRating: false,
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  // Handle the rating update here
                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SharelistView()),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9D9D9),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xFFD9D9D9),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Image.asset(
                                                'assets/images/share.png',
                                                fit: BoxFit.fill,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xff91e8b2),
                                  ),
                                  child: Center(
                                    child: Text("Machine Learning Bootcamp",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                              ),
                              Text(
                                "Krish Naik",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    // color:Colors.green,
                                    child: Text(
                                      "Rs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "60,000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LiveNewScreen()),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff575756),
                                            Color(0xff575756)
                                          ], // Replace with your desired colors
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            0.9,
                                            0.5
                                          ], // This splits the gradient in half
                                        ),
                                      ),
                                      child: const Text(
                                        "Live",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ));
                  },
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Community Program ",
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
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .6,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    mainAxisExtent: 200,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                        child: GestureDetector(
                      onTap: () {
                        // _showBottomSheetDeposit(context);
                      },
                      child: Container(
                          //height: 153,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 90,
                                    child: ClipRect(
                                      child: Image.asset(
                                        'assets/images/livepic.png',
                                        fit: BoxFit.fill,
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      child: Row(
                                    children: [
                                      Spacer(),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WishlistScreen()),
                                              );
                                            },
                                            child: Container(
                                              child: RatingBar.builder(
                                                initialRating: 0,
                                                minRating: 0,
                                                updateOnDrag: false,
                                                glow: false,
                                                itemCount: 1,
                                                itemSize: 25,
                                                allowHalfRating: false,
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.favorite,
                                                  color: Colors.red,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  // Handle the rating update here
                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SharelistView()),
                                              );
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9D9D9),
                                                border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xFFD9D9D9),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Image.asset(
                                                'assets/images/share.png',
                                                fit: BoxFit.fill,
                                                filterQuality:
                                                    FilterQuality.high,
                                              ),
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xff91e8b2),
                                  ),
                                  child: Center(
                                    child: Text("Machine Learning Bootcamp",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                              ),
                              Text(
                                "Krish Naik",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    // color:Colors.green,
                                    child: Text(
                                      "Rs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "60,000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LiveNewScreen()),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff575756),
                                            Color(0xff575756)
                                          ], // Replace with your desired colors
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            0.9,
                                            0.5
                                          ], // This splits the gradient in half
                                        ),
                                      ),
                                      child: const Text(
                                        "Live",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ));
                  },
                ),
                SizedBox(height: 13),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
