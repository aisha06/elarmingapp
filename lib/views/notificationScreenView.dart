import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NotificationscreenView extends StatelessWidget{
  NotificationscreenView({super.key});
  bool status = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(

        actions:[ FlutterSwitch(
          activeColor: Colors.green,
          width: 70.0,
          height: 30.0,
          valueFontSize: 15.0,
          toggleSize: 20.0,
          value: status,
          borderRadius: 20.0,
          padding: 8.0,
          showOnOff: true,
          onToggle: (val) {
            // setState(() {
            //   status = val;
            // });
          },
        )],

       backgroundColor: Colors.transparent,
       centerTitle: true,
       elevation: 0.0,
       title: Text("Notification",style: TextStyle(color: Colors.black),),
     ),
     backgroundColor: const Color(0xFFDAFFF2),
     body:  ListView.builder(
         itemCount: 5,
         itemBuilder: (BuildContext context, int index) {
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListTile(

                 subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                 title: Text("Machine Learning Bootcamp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
           );
         }),
   );
  }

}