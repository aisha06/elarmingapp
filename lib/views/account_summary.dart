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
          padding: EdgeInsets.only(left: 20, right: 20),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(6.0),
              child: Container(
                height: 85,
                //width: 68,
                //height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Container(
                                height: 20,
                                margin:
                                    EdgeInsets.only(left: 8, right: 5, top: 5),
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
                                height: 8,
                              ),
                              Text(
                                "Payment Successfully",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 10),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xFF91E8B2),
                                      radius: 10.0,
                                      child: Text(
                                        "Rs",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(width: 3.0),
                                    Container(
                                        margin: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          "60000",
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Icon(Icons.share),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 16.0,
                                    right: 17,
                                    // bottom: 20.0,
                                    top: 35.0),
                                color: Colors.grey[500],
                                // child: Text("Live",
                                //     style: TextStyle(
                                //         color: Colors.black,
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 10.0)),
                              ),
                            ],
                          )
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
