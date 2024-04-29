import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentpayScreen extends StatelessWidget {
  const PaymentpayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30.0,
                ),
                onPressed: () {
                  // Navigate back when the back button is pressed
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Container(
              // color: Colors.white,
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(
                    color: Colors.black, // Border color
                    width: 1.0 // Border width
                    ),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: ListTile(
                leading: Image.asset("assets/images/phonepe-logo-icon 2.png"),
                title: Text(
                  "Phone pe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "+Add New Method",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )),
          ),
          Container(
            // color: Colors.pink,
            margin: EdgeInsets.only(left: 20.0, top: 40.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Bill Summary ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 13.0),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Price ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 10.0),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        child: Text(
                          "60,000 ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Discount ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13.0),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        child: Text(
                          "0.00 ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13.0),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        child: Text(
                          "60,000 ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40.0),
                    child: ElevatedButton(
                        onPressed: () {
                          showGeneralDialog(
                              barrierColor: Colors.black.withOpacity(0.5),
                              transitionBuilder: (context, a1, a2, widget) {
                                return Transform.scale(
                                  scale: a1.value,
                                  child: Opacity(
                                    opacity: a1.value,
                                    child: AlertDialog(
                                      shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0)),
                                      title: Image.asset(
                                        "assets/images/paymentdone.png",
                                        colorBlendMode: BlendMode.dstATop,
                                        scale: 0.6,
                                        // color: Color.fromARGB(255, 15, 147, 59),
                                      ),
                                      content: Text(
                                        'Thanks For Your\n Payment Sucessfully',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              transitionDuration: Duration(milliseconds: 200),
                              barrierDismissible: true,
                              barrierLabel: '',
                              context: context,
                              pageBuilder: (context, animation1, animation2) {
                                return Text("aisha");
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF91E8B2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        child: Text(
                          "Payment",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
