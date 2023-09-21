import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:elearningapp_demo/views/accountSummaryView.dart';
import 'package:elearningapp_demo/views/homescrrenView.dart';
import 'package:elearningapp_demo/views/profilescreen_View.dart';
import 'package:elearningapp_demo/views/searchscreen_View.dart';
import 'package:elearningapp_demo/views/wishlistScreen_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.favorite_border_outlined,
    Icons.person,
  ];
  final List<Widget> _pages = [
    Homescreen(),
    SearchscreenView(),
    WishlistscreenView(),
    AccountSummaryView(),
    // ProfilescreenView()

  ];
  var _bottomNavIndex = 0;
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer:ProfilescreenView(context: context,),
      //Drawer
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            _scaffoldKey.currentState?.openDrawer();
          },
            child:Image.asset("assets/images/drawer.png")),
        centerTitle: true,
        title: const Text("Welcome  Vaishnavi",
          style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        actions: <Widget>[


       Stack(children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(radius: 15.0,backgroundColor:  Color(0xFF5BA084),),
        ),
      Positioned(top: 14,
        left: 14.0,
        child: Badge(
          textColor: Colors.red, // Set the badge background color to red
          label: Text(
            '5', // Replace with the number you want to display
            style: TextStyle(color: Colors.white), // Set the text color to white
          ),
          child: Icon(Icons.notifications,
            color: Colors.yellow,),
        ),
      )
      ]
      )
        ],
       // backgroundColor: Colors.white,
        elevation: 0.00,

      ),
      backgroundColor: const Color(0xFFDAFFF2),
      body:_pages[_bottomNavIndex],

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}




