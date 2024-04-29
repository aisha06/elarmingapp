// import 'dart:convert';
import 'dart:convert';

import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/views/BottomNavigationBar.dart';
import 'package:elearningapp_demo/views/forgetView.dart';
import 'package:elearningapp_demo/views/signupView.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  // void initState() {
  //   var fetchUsers2;
  //   var response = fetchUsers2();
  // }

  // fromJson(e) {}
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController Password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String message = '';
  // Future<void> loginUser(String, String password) async {
  //   var http;
  //   final response = await http.post(
  //     'http://103.205.67.83:8080/eLearning/rest/auth/login',
  //     body: jsonEncode({'username': username, 'password': password}),
  //     headers: {'Content-Type: application/json'},
  //   );

  //   if (response.statusCode == 200) {
  //     // Successful login, handle the response accordingly
  //     print('Login successful');
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
  //   } else {
  //     // Handle errors, show error messages, etc.
  //     print('Login failed: ${response.statusCode}');
  //   }
  // }

  // Future<void> LoginScreen(
  //     String title, int id, String imgUrl, int quantity) async {
  //   var http2;
  //   var username;
  //   final response = await http2.post(
  //     'http://192.168.1.7:8080/rest/auth/login',
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'username': username,
  //       'password': Password.toString(),
  //     }),
  //   );
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       message = 'login successfully!';
  //     });
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => HomeScreen(
  //                 accesstoken: 'HomeScreen',
  //               )),
  //     );
  //   } else {
  //     throw Exception('Login Failed');
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
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
                margin: const EdgeInsets.only(left: 26.0, top: 80.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
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
                labeltext: 'Username:',
                hinttext: 'Enter yourname',
                Controllerctr: username,
                valiDator: (value) {
                  var _userController;
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
                labeltext: 'Password:',
                hinttext: 'Enter your password',
                Controllerctr: Password,
                valiDator: (value) {
                  if (value!.isEmpty) {
                    return 'Password  cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 50.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyNavigationBar()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      width: double.infinity,
                      height: 42, // Set the height of the container
                      decoration: BoxDecoration(
                        color: const Color(0xFF000000),
                        borderRadius: BorderRadius.circular(10.0),
                        // You can add other decoration properties here, such as border, boxShadow, etc.
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20.0,
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
                    MaterialPageRoute(builder: (context) => SignupView()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      width: double.infinity,
                      height: 42, // Set the height of the container
                      decoration: BoxDecoration(
                        color: const Color(0xFF5BA084),
                        borderRadius: BorderRadius.circular(10.0),
                        // You can add other decoration properties here, such as border, boxShadow, etc.
                      ),
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20.0,
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
                  "Forgot Password",
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
