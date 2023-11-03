import 'package:flutter/material.dart';

class DownloadScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Download",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xFFDAFFF2),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 80,
                // width: 85,
                //height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/livepic.png",
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      color: const Color(0xFFD9D9D9),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Card(
                                elevation: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  color: const Color(0xFF91E8B2),
                                  child: Text(
                                    "Machine learning Bootcamp",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Kartik naik",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xFF91E8B2),
                                    radius: 10.0,
                                    child: const Text(
                                      "Rs",
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  // SizedBox(height: 4.0),
                                  Container(
                                      margin: const EdgeInsets.only(left: 4.0),
                                      child: const Text("60000")),
                                ],
                              ),
                              // const SizedBox(
                              //   width: 5.0,
                              // ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, bottom: 20.0, top: 10.0),
                                child: IconButton(
                                  onPressed: () {},
                                  constraints: BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  icon: const Icon(Icons.download),
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                color: Colors.grey[500],
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: const Text("Live",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0)),
                                ),
                              )
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
