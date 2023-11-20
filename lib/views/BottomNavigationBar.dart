import 'package:elearningapp_demo/views/feature_screen.dart';
import 'package:elearningapp_demo/views/home_Screen.dart';
import 'package:elearningapp_demo/views/profile_screen.dart';
import 'package:elearningapp_demo/views/search_screen.dart';
import 'package:elearningapp_demo/views/wishlist_screen.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    FeatureScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAFFF2),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home.png'),
              color: Color(0xFF000000),
            ),
            label: "Home",
            backgroundColor: Color(0xFFDAFFF2),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/ico.png'),
              color: Color(0xFF000000),
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/features.png'),
              color: Color(0xFF000000),
            ),
            label: "Feature",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/love.png'),
              color: Color(0xFF000000),
            ),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Man.png'),
              color: Color(0xFF000000),
            ),
            label: "Account",
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        iconSize: 35,
        onTap: _onItemTapped,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
