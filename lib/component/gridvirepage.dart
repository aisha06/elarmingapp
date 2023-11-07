import 'package:elearningapp_demo/views/liveCousreView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grridviewpage extends StatefulWidget {
  const Grridviewpage({super.key});

  @override
  State<Grridviewpage> createState() => _GrridviewpageState();
}

class _GrridviewpageState extends State<Grridviewpage> {
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
          return Expanded(
              child: GestureDetector(
            onTap: () {
              // _showBottomSheetDeposit(context);
            },
            child: Container(
              child: Row(
                children: [
                  Expanded(
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
                                          Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9),
                                              border: Border.all(
                                                width: 1,
                                                color: const Color(0xFFD9D9D9),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Image.asset(
                                              'assets/images/heart.png',
                                              fit: BoxFit.fill,
                                              filterQuality: FilterQuality.high,
                                            ),
                                            width: 20,
                                            height: 20,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9),
                                              border: Border.all(
                                                width: 1,
                                                color: const Color(0xFFD9D9D9),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Image.asset(
                                              'assets/images/share.png',
                                              fit: BoxFit.fill,
                                              filterQuality: FilterQuality.high,
                                            ),
                                            width: 20,
                                            height: 20,
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
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xff91e8b2),
                                  ),
                                  child: Center(
                                    child: Text("Machine Learning Bootcamp",
                                        style: TextStyle(
                                          fontSize: 11,
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
                                height: 5,
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
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff575756),
                                          Color(0xff91e8b2)
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
