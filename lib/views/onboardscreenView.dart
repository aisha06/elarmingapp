import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/views/onboardingtwoView.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OnboardscreenView extends StatelessWidget{
  const OnboardscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xFFDAFFF2),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          margin: EdgeInsets.only(top: 20.0),
        height: 50.0,
        child: Image.asset('assets/images/Group 7.png',
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),),
         const  SizedBox(height:80.0),

          Stack(
            children: [
              Center(
                child: Container(
                height: 200.0,
                child: Image.asset('assets/images/Mask group (1).png',
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fill,
                ),
            ),
              ),
              Container(

                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(margin: const EdgeInsets.only(right: 20.0),
                    height: 80.0,
                    child: Image.asset('assets/images/Group 2.png',
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80.0,),
          Text("    Making Learning \nAccessible Anywhere ",
          style: TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold),),
          Container(margin: const EdgeInsets.only(left: 40.0,right: 40.0,top: 20.0),
              child: Text("Online learning refers to instruction that is delivered electronically through various multimedia and Internet platforms and applications. It is used interchangeably with other terms such as web-based learning, e-learning, computer-assisted instruction, and Internet-based learning.",
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0) ,)),
          SizedBox(height: 50.0,),
          LoadingAnimationWidget.twistingDots(
            leftDotColor: const Color(0xFF1A1A3F),
            rightDotColor: Colors.grey,
            size: 40,
          ),
          Button(text: 'Next', function: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingtwoView()),
                      );
          },),


        ],
      ),

    ),
    );
  }

}