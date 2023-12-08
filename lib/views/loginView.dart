import 'dart:convert';

import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/controller/loginController.dart';
import 'package:elearningapp_demo/views/forgetView.dart';
import 'package:elearningapp_demo/views/BottomNavigationBar.dart';
import 'package:elearningapp_demo/views/home_Screen.dart';
import 'package:elearningapp_demo/views/otpVerifyView.dart';
import 'package:elearningapp_demo/views/signupView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:http/http.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginView({super.key});
  // Future<User?> login(String email, String pass, context) async {}

  LoginController login_controller = Get.put(LoginController());
  var isLoading = false;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void loginApiHit(
      BuildContext context, String username, String password) async {
    try {
      var response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': username, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print('Login successfully');
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    accesstoken: '',
                  )),
        );
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
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
                margin: const EdgeInsets.only(left: 20.0, top: 80.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(child: Textform(text: 'Username:')),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.emailAddress,
                labeltext: '',
                hinttext: 'Enter yourname',
                Controllerctr: userController,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(_userController.text)) {
                    return '*Required';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              Textform(text: 'Password:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                labeltext: 'Password',
                hinttext: 'Enter your password',
                Controllerctr: passwordController,
                valiDator: (value) {
                  if (value!.isEmpty) {
                    return 'Password  cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
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
                    text: 'Login',
                    function: () {
                      loginApiHit(context, userController.text,
                          passwordController.text);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupView()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      width: double.infinity,
                      height: 42, // Set the height of the container
                      decoration: BoxDecoration(
                        color: Color(0xFF5BA084),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set the border radius
                        // You can add other decoration properties here, such as border, boxShadow, etc.
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white, // Set the text color to white
                          ),
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetView()),
                  );
                },
                child: const Text(
                  "Forgot password",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
