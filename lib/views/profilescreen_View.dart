import 'package:elearningapp_demo/component/button.dart';
import 'package:elearningapp_demo/views/aboutEducationView.dart';
import 'package:elearningapp_demo/views/accountSummaryView.dart';
import 'package:elearningapp_demo/views/downloadscreenView.dart';
import 'package:elearningapp_demo/views/editProfileView.dart';
import 'package:elearningapp_demo/views/notificationScreenView.dart';

import 'package:elearningapp_demo/views/sharelistView.dart';
import 'package:elearningapp_demo/views/videoplayView.dart';
import 'package:elearningapp_demo/views/wishlistScreen_View.dart';
import 'package:flutter/material.dart';
class ProfilescreenView extends StatelessWidget{
  BuildContext context;

  ProfilescreenView({super.key, required this.context});

  @override
  Widget build(context) {
   return Scaffold(
     body:  Column(
       children: [
         Card(elevation: 10,
           margin:const  EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0),
           color:const  Color(0xFFEFEFEF),
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: Row(
               children: [
                 Container(
                   margin: const EdgeInsets.only(left: 20.0,right: 20.0),

                   child:  Stack(
                     children: [CircleAvatar(radius:50,
                     backgroundImage:AssetImage("assets/images/aisha.jpg"),),
                     Positioned(
                       top: 80.0,
                       left:40.0,

                       child: Align(alignment: Alignment.bottomRight,
                         child: Container(color: Colors.green, child: Padding(
                           padding: const EdgeInsets.all(6.0),
                           child: GestureDetector(
                               child: GestureDetector(onTap: (){
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => EditProfile()),
                                 );
                                 // Get.to(EditProfile());
                               },
                                   child: Text("Edit",style: TextStyle(color: Colors.white),))),
                         ),),
                       ),
                     )]


                   ),

                 ),
                   Container(height: 40.0,color: Colors.green,),
                 Text("Vaishnavi Bansal",
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
               ],
             ),
           ),
         ),
         Expanded(
           child: Card(
               elevation: 10,
               margin:const  EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0),
               color: const Color(0xFFEFEFEF),
               child:Container(

             child: profile_list(context),
           )),
         ),
         Expanded(
           child: Card(
               elevation:10,
               margin:const  EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 10.0),
               color: const Color(0xFFEFEFEF),
               child:Container(

                 child: profile_list2(context),
               )),
         ),
         Button(text: 'Sign-out',
           function: () {

           },
         )
       ],
     ),
   );
  }

}
profile_list(BuildContext
buildContext) {

  List list = [WishlistscreenView(),NotificationscreenView(),SharelistView()];

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount:4,
    itemBuilder: (BuildContext context, int index) {
      List itemlist =["Your Profile","Wishlist","Notification","share"];
      List Iconlist=[Icons.person,Icons.favorite_border_outlined,Icons.notifications,Icons.share
      ];

      return GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => list[index]));
        },
        child: ListTile(
            title: Text(itemlist[index],
              style: const TextStyle(fontWeight: FontWeight.bold),),
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[400],
              child: Icon(Iconlist[index],
              color: Colors.black,),
            ),




        ),
      );
    },
  );
}
profile_list2(BuildContext
buildContext) {
  List list = [DownloadScreenView(),VedioPlayView(),AccountSummaryView(),Abouteducationview()];

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount:4,
    itemBuilder: (BuildContext context, int index) {
      List itemlist2 =["Download Option","Video Play back Option","Account Summary","About E-education"];
      List Iconlist2=[Icons.download,Icons.video_call,Icons.account_balance,Icons.share
      ];

      return GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => list[index]));
        },
        child: ListTile(
            title: Text(itemlist2[index],
              style: const TextStyle(fontWeight: FontWeight.bold),),
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[400],
              child: Icon(Iconlist2[index],
                color: Colors.black,),
            ),
        ),
      );
    },
  );
}
