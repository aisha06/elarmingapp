import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _enrollmentController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _adressController = TextEditingController();
  final TextEditingController _contactontroller = TextEditingController();
  final TextEditingController _renameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/aisha.jpg"),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextfiledConatiner(
                keybordtype: TextInputType.name,
                labeltext: 'Name',
                hinttext: 'Enter yur name',
                Controllerctr: _nameController,
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
              TextfiledConatiner(
                keybordtype: TextInputType.text,
                labeltext: 'Enrollment',
                hinttext: 'Enter yur Enrolment No.',
                Controllerctr: _enrollmentController,
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
              TextfiledConatiner(
                keybordtype: TextInputType.emailAddress,
                labeltext: 'Email',
                hinttext: 'Enter yur E-mail',
                Controllerctr: _emailController,
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
              TextfiledConatiner(
                keybordtype: TextInputType.text,
                labeltext: 'Address',
                hinttext: 'Enter yur adress',
                Controllerctr: _adressController,
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
              TextfiledConatiner(
                keybordtype: TextInputType.number,
                labeltext: 'Contact',
                hinttext: 'Enter yur Contact',
                Controllerctr: _contactontroller,
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
              TextfiledConatiner(
                keybordtype: TextInputType.name,
                labeltext: 'Rename',
                hinttext: 'Enter yur rename',
                Controllerctr: _renameController,
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
              Button(
                text: ' Save Profile',
                function: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
