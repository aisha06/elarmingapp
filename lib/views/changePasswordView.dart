import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangepassworsView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    // final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _repasswordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(

            children: [
              Container(
                margin:const  EdgeInsets.only(top: 50.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon:const Icon(Icons.arrow_back,
                      size: 30.0,),
                    onPressed: () {
                      // Navigate back when the back button is pressed
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(left: 40.0,top: 80.0),
                child:const  Align(alignment: Alignment.centerLeft,
                  child: Text("Change Password",
                    style: TextStyle(
                        fontSize: 30.0,fontWeight: FontWeight.bold),),
                ),
              ),
              const SizedBox(height: 20.0,),
              Textform(text:'New Password .'),
              const SizedBox(height: 10.0,),
              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),

              const SizedBox(height: 10.0,),
              Textform(text:'Confirm Password'),
              const SizedBox(height: 10.0,),
              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, labeltext: 'Password', hinttext: 'Enter your password',),

              const SizedBox(height:20.0,),

              Button(text: 'Set Password', function: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyHomePage()),
                // );
              },),



            ],
          ),
        ),
      ),
    );
  }

}