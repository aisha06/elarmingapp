import 'package:flutter/material.dart';

class AccountSummaryView extends StatelessWidget {
  const AccountSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xFFDAFFF2),
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Account Summary",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xFFDAFFF2),
        body: ListView.builder(
          padding: EdgeInsets.all(9.0),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: 5, right: 10),
              child: Container(
                height: 85,
                //width: 68,
                //height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/livepic.png",
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      color: Color(0xFFD9D9D9),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Card(
                                elevation: 8,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  color: Color(0xFF91E8B2),
                                  child: Text(
                                    "Machine learning Bootcamp",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              // Text(
                              //   "Kartik naik",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.bold,
                              //       color: Colors.black),
                              // ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 7.0, right: 10.0),
                                        child: Text(
                                          "Payment Sucessfully",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CircleAvatar(
                                        backgroundColor: Color(0xFF91E8B2),
                                        radius: 12.0,
                                        child: const Text(
                                          "Rs",
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(
                                              left: 7.0, right: 10.0),
                                          child: const Text(
                                            "60000",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          )),
                                    ],
                                  ),
                                  // SizedBox(height: 4.0),
                                ],
                              ),
                              // const SizedBox(
                              //   width: 5.0,
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
