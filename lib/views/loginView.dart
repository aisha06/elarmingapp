import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/text.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:elearningapp_demo/views/forgetView.dart';
import 'package:elearningapp_demo/views/homeView.dart';
import 'package:elearningapp_demo/views/signupView.dart';
import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              Container(margin: const EdgeInsets.only(left: 40.0,top: 80.0),
                child:const  Align(alignment: Alignment.centerLeft,
                  child: Text("Login",
                    style: TextStyle(
                        fontSize: 30.0,fontWeight: FontWeight.bold),),
                ),
              ),
              const SizedBox(height: 20.0,),
              Textform(text:'Email ID.:'),
              const SizedBox(height: 10.0,),
              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),

              const SizedBox(height: 10.0,),
              Textform(text:'Password:'),
              const SizedBox(height: 10.0,),
              TextfiledConatiner(
                repasswordController: _repasswordController,
                passwordController: _passwordController, labeltext: 'Password', hinttext: 'Enter your password',),

              const SizedBox(height:20.0,),

              Button(text: 'Login', function: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage()),
                            );
              },),

              const  SizedBox(height: 40.0,),
              GestureDetector(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetView()),
                );
              },
                child:const Text("Forgot password",
                  style: TextStyle(color: Colors.green,
                      fontWeight: FontWeight.bold,fontSize: 16.0),),
              ),
              const  SizedBox(height: 20.0,),
              Container(
                  child: Center(
                    child: Row(
                      children: [

                        Container(
                            margin:const  EdgeInsets.only(left: 80.0),
                            child:const  Text("Don't have a account ? ")),
                        const SizedBox(height: 40.0,),

                        Padding(
                            padding: const EdgeInsets.only(left:1.0),
                            child: InkWell(
                              onTap: (){

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignupView()),
                                );
                              },
                              child:const  Text('Signup',
                                  style: TextStyle(fontSize: 18, color: Colors.green,)),
                            )
                        ) ],
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );


  }
}