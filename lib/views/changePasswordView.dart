import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/views/BottomNavigationBar.dart';
import 'package:elearningapp_demo/views/home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangepassworsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    // final TextEditingController _emailController = TextEditingController();
    final TextEditingController _newpasswordController =
        TextEditingController();
    final TextEditingController _comfirmpasswordController =
        TextEditingController();

    return Scaffold(
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
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Change Password",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'New Password .'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                labeltext: 'Email',
                hinttext: 'Enter yur email ID',
                Controllerctr: _newpasswordController,
                valiDator: (value) {
                  if (value!.isEmpty) {
                    return 'Name cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
                keybordtype: TextInputType.name,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Textform(text: 'Confirm Password'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                labeltext: 'Password',
                hinttext: 'Enter your password',
                Controllerctr: _comfirmpasswordController,
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
                        color: Color(0xFF575756),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set the border radius
                        // You can add other decoration properties here, such as border, boxShadow, etc.
                      ),
                      child: Center(
                        child: Text(
                          "Set Password",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white, // Set the text color to white
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
