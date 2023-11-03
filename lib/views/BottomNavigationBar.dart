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
    // ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     //title: const Text('Flutter BottomNavigationBar Example'),
      //     backgroundColor: Colors.blue
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/home.png'),
                color: Color(0xFF3A5A98),
              ),
              label: "home",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ico.png'),
                color: Color(0xFF3A5A98),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/features.png'),
                color: Color(0xFF3A5A98),
              ),
              label: "Feature",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/love.png'),
                color: Color(0xFF3A5A98),
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Man.png'),
                color: Color(0xFF3A5A98),
              ),
              label: "Account",
            ),
          ],
          type: BottomNavigationBarType.shifting,
          // fixedColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          iconSize: 35,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
