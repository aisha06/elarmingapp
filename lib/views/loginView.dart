import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/views/forgetView.dart';
import 'package:elearningapp_demo/views/BottomNavigationBar.dart';
import 'package:elearningapp_demo/views/signupView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginView({super.key});
  Future<User?> login(String email, String pass, context) async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: pass,
        );
        user = userCredential.user;
        print("aisha");
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyNavigationBar()));

        print('login');

        // You can handle the successful login here, e.g., navigate to the home page.
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        } else {
          print('Error: ${e.message}');
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
                margin: const EdgeInsets.only(left: 20.0, top: 80.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Email ID.:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.emailAddress,
                labeltext: 'Email',
                hinttext: 'Enter yur email ID',
                Controllerctr: _emailController,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(_emailController.text)) {
                    return '*Required';
                  }
                  return null; // Return null if the input is valid
                },
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
                Controllerctr: _passwordController,
                valiDator: (value) {
                  if (value!.isEmpty) {
                    return 'Password  cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Button(
                text: 'Login',
                function: () {
                  login(
                      _emailController.text, _passwordController.text, context);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                // width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupView()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF5BA084),
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 18.0),
                    )),
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
