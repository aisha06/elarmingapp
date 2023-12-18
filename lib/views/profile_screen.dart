import 'package:elearningapp_demo/views/aboutEducationView.dart';
import 'package:elearningapp_demo/views/account_summary.dart';
import 'package:elearningapp_demo/views/downloadscreenView.dart';
import 'package:elearningapp_demo/views/editProfileView.dart';
import 'package:elearningapp_demo/views/loginView.dart';
import 'package:elearningapp_demo/views/myprofileView.dart';
import 'package:elearningapp_demo/views/notificationScreenView.dart';
import 'package:elearningapp_demo/views/sharelistView.dart';
import 'package:elearningapp_demo/views/videoplayView.dart';
import 'package:elearningapp_demo/views/wishlist_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAFFF2),
      body: Column(
        children: [
          Card(
            elevation: 10,
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 80.0),
            color: Color(0xFFEFEFEF),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Stack(children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/ani.jpg"),
                      ),
                      Align(
                        widthFactor: 2,
                        heightFactor: 4,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF5BA084),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfile()),
                                      );
                                      // Get.to(EditProfile());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                      ),
                                      child: const Text(
                                        "Edit",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))),
                          ),
                        ),
                      )
                    ]),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Jyoti Prajapati",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Enrollment No:12343334",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
                elevation: 10,
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40.0, bottom: 20.0),
                color: const Color(0xFFEFEFEF),
                child: Container(
                  child: profile_list(context),
                )),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
            // width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF575756),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                child: Text(
                  "Sign-out",
                  style: TextStyle(fontSize: 18.0),
                )),
          )
        ],
      ),
    );
  }
}

profile_list(BuildContext buildContext) {
  List list = [
    MyprofileView(),
    WishlistScreen(),
    NotificationscreenView(),
    SharelistView(),
    DownloadScreenView(),
    VedioPlayView(),
    AccountSummaryView(),
    Abouteducationview(),
  ];

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 8,
    itemBuilder: (BuildContext context, int index) {
      List itemlist = [
        "Your Profile",
        "Wishlist",
        "Notification",
        "Share",
        "Download Option",
        "Video Play Back Option",
        "Account Summary",
        "About E-Education"
      ];
      List Iconlist = [
        "assets/images/person1.png",
        "assets/images/favroute.png",
        "assets/images/notification.png",
        "assets/images/share.png",
        "assets/images/download.png",
        "assets/images/movie.png",
        "assets/images/document.png",
        "assets/images/logo.png",
      ];

      return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => list[index]));
        },
        child: ListTile(
          title: Text(
            itemlist[index],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF0000000),
            ),
          ),
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.grey[400],
            child: Image.asset(
              Iconlist[index],
              color: Colors.black,
            ),
          ),
        ),
      );
    },
  );
}
