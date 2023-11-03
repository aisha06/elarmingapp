import 'package:flutter/material.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Feature",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xFFDAFFF2),
        body: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
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
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Kartik naik",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF91E8B2),
                                    radius: 8.0,
                                    child: Text(
                                      "Rs",
                                      style: TextStyle(
                                          fontSize: 9.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  // SizedBox(height: 4.0),
                                  Container(
                                      margin: EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        "60000",
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )),
                                ],
                              ),
                              // const SizedBox(
                              //   width: 5.0,
                              // ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10.0, bottom: 20.0, top: 20.0),
                                color: Colors.grey[500],
                                child: Text("Live",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0)),
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
