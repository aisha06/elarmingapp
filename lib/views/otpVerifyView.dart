import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/views/changePasswordView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpverifyView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  OtpFieldController otpController = OtpFieldController();

  //final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                margin: EdgeInsets.only(left: 20.0, top: 80.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "OTP Verification",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Textform(text: 'Enter the OTP sent to *******9865'),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: OTPTextField(
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: Colors.white,
                      focusBorderColor: Colors.greenAccent,
                    ),
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 50,
                    fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 15,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                    onChanged: (pin) {},
                    onCompleted: (pin) {}),
              ),
              const SizedBox(
                height: 30.0,
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
                    text: 'Verify',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangepassworsView()),
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
                        margin: EdgeInsets.only(left: 80.0),
                        child: Text("Don't recieve the OTP?")),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => SignupView()),
                          // );
                        },
                        child: Text('Resend OTP ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                            )),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
