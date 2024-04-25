import 'package:elearningapp_demo/views/live_Screen.dart';
import 'package:elearningapp_demo/views/live_new_ui.dart';
import 'package:elearningapp_demo/views/sharelistView.dart';
import 'package:elearningapp_demo/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LiveScreen()),
        );
      },
      child: Container(
        height: height / 3.8,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              // height: 160,
              width: 158,
              margin: EdgeInsets.all(10),
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
                      Container(
                        child: Image.asset(
                          'assets/images/livepic.png',
                          fit: BoxFit.cover,
                          width: 158,
                          height: 88,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WishlistScreen()),
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
                                  itemBuilder: (context, _) => Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  onRatingUpdate: (rating) {
                                    // Handle the rating update here
                                  },
                                  glowColor: Colors.white,
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
                                      builder: (context) => SharelistView()),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  border: Border.all(
                                    width: 1,
                                    color: const Color(0xFFD9D9D9),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Image.asset(
                                  'assets/images/share.png',
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                ),
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xff91e8b2),
                    ),
                    child: Center(
                      child: Text("Machine Learning Bootcamp",
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Krish Naik",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 10),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(4),
                          // color:Colors.green,
                          child: Center(
                            child: Text(
                              "Rs",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "60,000",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveNewScreen()),
                            );
                          },
                          child: Container(
                            height: 18,
                            width: 25,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff575756), Color(0xff575756)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.5,
                                  0.5
                                ], // This splits the gradient in half
                              ),
                            ),
                            child: Center(
                              child: const Text(
                                "Live",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
