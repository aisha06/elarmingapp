import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/controller/userController.dart';
import 'package:elearningapp_demo/views/BottomNavigationBar.dart';
import 'package:elearningapp_demo/views/loginView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _adressController = TextEditingController();
  final TextEditingController _lasttnameController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void signup(String email, String pass, context) async {
    print(email);
    print(pass);
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: email,
          password: pass,
        );
        UserProfile user = UserProfile(
          displayName: userCredential.user!.uid, // Set user's display name here
        );

        await _firestore.collection('users').doc(userCredential.user?.uid).set({
          'firstName': _fnameController.text,
          'lastName': _lasttnameController.text,
          'email': _emailController.text,
          'phoneNumber': _numberController.text,
          'address': _adressController.text,
          "password": _passwordController.text
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyNavigationBar()),
        );

        // You can handle the successful signup here, e.g., navigate to the home page.
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        } else {
          print('Error: ${e.message}');
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  // void _signup(String email, String pass) async {
  //   print(email);
  //   print(pass);
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       UserCredential userCredential =
  //       await _auth.createUserWithEmailAndPassword(
  //         email: email,
  //         password: pass,
  //       );
  //       UserProfile user = UserProfile(
  //         displayName: userCredential.user!.uid, // Set user's display name here
  //       );
  //
  //       await _firestore.collection('users').doc(userCredential.user?.uid).set({
  //         'name': _nameController.text,
  //       });
  //
  //       // You can handle the successful signup here, e.g., navigate to the home page.
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'weak-password') {
  //         print('The password provided is too weak.');
  //       } else if (e.code == 'email-already-in-use') {
  //         print('The account already exists for that email.');
  //       } else {
  //         print('Error: ${e.message}');
  //       }
  //     } catch (e) {
  //       print('Error: $e');
  //     }
  //   }
  // }
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
                margin: const EdgeInsets.only(left: 40.0, top: 20.0),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Register",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'First Name:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.name,
                labeltext: 'First Name ',
                hinttext: 'Enter your First Name',
                Controllerctr: _fnameController,
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
              Textform(text: 'Last Name:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.name,
                labeltext: 'Last Name',
                hinttext: 'Enter your last Name ',
                Controllerctr: _lasttnameController,
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
              Textform(text: 'Address:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.text,
                labeltext: 'Address',
                hinttext: 'Enter your Adress',
                Controllerctr: _adressController,
                valiDator: (value) {
                  if (value!.isEmpty) {
                    return 'Address cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Email ID:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.emailAddress,
                hinttext: 'Email',
                labeltext: 'Enter your Email',
                Controllerctr: _emailController,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(_emailController.text)) {
                    return 'Email cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Mobile NO.:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.number,
                labeltext: 'Mobile No.',
                hinttext: 'Enter your Mobile No.',
                Controllerctr: _numberController,
                valiDator: (value) {
                  if (value!.isEmpty || (value.length > 11)) {
                    return 'mobile number  cannot be empty';
                  }
                  return null; // Return null if the input is valid
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Password:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                  keybordtype: TextInputType.visiblePassword,
                  hinttext: 'Password',
                  labeltext: 'Enter your Password',
                  Controllerctr: _passwordController,
                  valiDator: (value) {
                    (value) {
                      if (value.isEmpty) {
                        return "* Required";
                      } else if (value.length < 6) {
                        return "Password should be atleast 6 characters";
                      } else if (value.length > 8) {
                        return "Password should not be greater than 10 characters";
                      } else
                        return null;
                    };
                  }),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Re-Enter Password:'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: 're enter Password',
                labeltext: 'Enter your Password for confirmation',
                Controllerctr: _repasswordController,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _repasswordController.text == _passwordController.text) {
                    return 'Please confirm your password';
                  }
                  return null; // Return null if the input is valid
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Button(
                text: 'Register',
                function: () {
                  signup(
                      _emailController.text, _passwordController.text, context);
                  // Get.to(MyHomePage());
                },
              ),
              Container(
                  child: Center(
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 80.0),
                        child: const Text("Already  have a account ? ")),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 1.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginView()),
                            );
                          },
                          child: const Text('login',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                              )),
                        ))
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
