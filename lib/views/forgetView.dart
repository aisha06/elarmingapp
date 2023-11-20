import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/views/otpVerifyView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
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
                margin: EdgeInsets.only(left: 40.0, top: 80.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password?",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Textform(text: 'Enter Mobile No.:'),
              const SizedBox(
                height: 20.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.number,
                labeltext: 'Phone No.',
                hinttext: 'Enter your Phone Number',
                Controllerctr: _phoneController,
                valiDator: (value) {
                  if (value!.isEmpty) {
                    return 'Name cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF575756),
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the border radius
                    // You can add other decoration properties here, such as border, boxShadow, etc.
                  ),
                  width: double.infinity,
                  height: 42, // Set the width according to your needs
                  child: Button(
                    text: 'Get OTP',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpverifyView()),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                  child: Center(
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 60.0),
                        child: Text("We will send you on ")),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => SignupView()),
                          // );
                        },
                        child: Text('one time password ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                            )),
                      ),
                    ),
                  ],
                ),
              )),
              Container(
                  margin: const EdgeInsets.only(left: 6.0),
                  child: Text("On this mobile number")),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
