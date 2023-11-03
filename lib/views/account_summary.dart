import 'package:flutter/material.dart';

class AccountSummaryView extends StatelessWidget {
  const AccountSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDAFFF2),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/livepic.png",
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    //height: MediaQuery.of(context).size.height * 0.2,
                    color: const Color(0xFFD9D9D9),
                    child: Container(
                      height: 80,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Card(
                                elevation: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  color: const Color(0xFF91E8B2),
                                  child: Text(
                                    "Machine learning Bootcamp",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Payment Sucessfully",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 5.0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    ],
                                  ),
                                  SizedBox(height: 6.0),
                                  Container(
                                      margin: const EdgeInsets.only(left: 4.0),
                                      child: const Text("60000")),
                                  // SizedBox(height: 4.0),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
