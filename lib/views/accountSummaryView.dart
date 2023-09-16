import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSummaryView extends StatelessWidget{
  const AccountSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         centerTitle: true,
         elevation: 0.0,
         title: Text("Account Summary",
           style: TextStyle(color: Colors.black),),
       ),
       backgroundColor: const Color(0xFFDAFFF2),
       body: ListView.builder(
         padding: const EdgeInsets.all(8),
         itemCount:1,
         itemBuilder: (BuildContext context, int index) {
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(

               width: MediaQuery.of(context).size.width/2,
               child: Row(
                 children: [
                   Image.asset("assets/images/livepic.png",fit:BoxFit.fitWidth,),
                   Container(
                     height: 90,

                     color:const Color(0xFFD9D9D9),
                     child: Row(
                       children: [
                         Column(
                           children: [
                             Card(elevation: 8,
                               child: Container(
                                 padding: const EdgeInsets.all(5.0),
                                 color:const Color(0xFF91E8B2),
                                 child: Text("Machine learning Bootcamp",
                                   style: const TextStyle(fontWeight: FontWeight.bold),),
                               ),
                             ),
                             const SizedBox(height: 8.0,),
                             Row(
                               children: [
                                 const SizedBox(width: 8.0,),
                                 Text("Payment sucessfully",
                                   style: TextStyle(fontWeight: FontWeight.bold,
                                       color: Colors.black),),
                                 SizedBox(width: 10.0,),
                                 CircleAvatar(
                                   radius: 14.0,
                                   child: Text("Rs"),
                                 ),
                                 Text("60000"),
                               ],
                             ),



                           ],
                         ),
                       ],
                     ),
                   ),

                 ],
               ), ),
           );
         },
       )
   );
  }

}