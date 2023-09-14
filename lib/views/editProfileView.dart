import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/component/textfiledContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget{
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

   return Scaffold(
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
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
             CircleAvatar(radius:70,
               backgroundImage:AssetImage("assets/images/aisha.jpg"),
             ),
             const SizedBox(height: 30.0,),
             TextfiledConatiner(
               repasswordController: _repasswordController,
               passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),
             const SizedBox(height: 20.0,),
             TextfiledConatiner(
               repasswordController: _repasswordController,
               passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),
             const SizedBox(height: 20.0,),
             TextfiledConatiner(
               repasswordController: _repasswordController,
               passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),
             const SizedBox(height: 20.0,),
             TextfiledConatiner(
               repasswordController: _repasswordController,
               passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),
             const SizedBox(height: 20.0,),
             TextfiledConatiner(
               repasswordController: _repasswordController,
               passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),
             const SizedBox(height: 20.0,),
             TextfiledConatiner(
               repasswordController: _repasswordController,
               passwordController: _passwordController, labeltext: 'Email', hinttext: 'Enter yur email ID',),
             const SizedBox(height: 20.0,),
             Button(text: 'Profile Edit ', function: () {

             },),

           ],
         ),
       ),
     ),

   );
  }

}