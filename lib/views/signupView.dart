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
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _stateControll = TextEditingController();
  final TextEditingController _districtControll = TextEditingController();
  final TextEditingController _pincodeControll = TextEditingController();
  final TextEditingController _postofficeControll = TextEditingController();
  final TextEditingController _policestationControll = TextEditingController();
  final TextEditingController _addharControll = TextEditingController();
  final TextEditingController _genderControll = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void signup(String email, String pass, context) async {
    String? state;
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
          "password": _passwordController.text,
          'dob': _dobController.text,
          'addhar': _addharControll.text,
          'state': _stateControll.text,
          'district': _districtControll.text,
          'pincode': _pincodeControll.text,
          'policestation': _policestationControll.text,
          'gender': _genderControll.text,
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
                onStateChanged: (value) {},
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
                onStateChanged: (value) {},
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
                onStateChanged: (value) {},
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
                onStateChanged: (value) {},
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
                onStateChanged: (value) {},
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
                },
                onStateChanged: (value) {},
              ),
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
                labeltext: 'Password for confirmation',
                Controllerctr: _repasswordController,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _repasswordController.text == _passwordController.text) {
                    return ' confirm your password';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Your Addhar No :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: 'Your Addhar',
                labeltext: ' Addhar for confirmation',
                Controllerctr: _addharControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _addharControll.text == _addharControll.text) {
                    return ' confirm your addhar';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Your DOB :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: 'Your DOB',
                labeltext: 'DOB confirmation',
                Controllerctr: _stateControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _stateControll.text == _stateControll.text) {
                    return 'confirm your DOB';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Your State :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: 'Your State',
                labeltext: 'State confirmation',
                Controllerctr: _stateControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _stateControll.text == _stateControll.text) {
                    return 'confirm your State';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Your District :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: 'Your District',
                labeltext: ' District for confirmation',
                Controllerctr: _districtControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _districtControll.text == _districtControll.text) {
                    return ' confirm your District';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Your Pincode :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: ' Your Pincode',
                labeltext: ' Pincode for confirmation',
                Controllerctr: _pincodeControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _pincodeControll.text == _pincodeControll.text) {
                    return ' confirm your Pincode';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: 'Your Post Office :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: ' Your Post Office',
                labeltext: ' Post Office for confirmation',
                Controllerctr: _postofficeControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _postofficeControll.text == _postofficeControll.text) {
                    return ' confirm your Post Office';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: ' Police Station :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: ' Police Sattion',
                labeltext: ' Plice Station for confirmation',
                Controllerctr: _policestationControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _policestationControll.text ==
                          _policestationControll.text) {
                    return ' confirm your Police Station';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Textform(text: ' Gender :'),
              const SizedBox(
                height: 10.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.visiblePassword,
                hinttext: ' Gender',
                labeltext: ' Gender for confirmation',
                Controllerctr: _genderControll,
                valiDator: (value) {
                  if (value!.isEmpty ||
                      _genderControll.text == _genderControll.text) {
                    return 'Please confirm your Gender';
                  }
                  return null; // Return null if the input is valid
                },
                onStateChanged: (value) {},
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
