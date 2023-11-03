import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabScreen extends StatefulWidget {
  int index;

  TabScreen({Key? key, required this.index}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int? bottomSelectedIndex;
  PageController? pageController;
  DateTime currentBackPressTime = DateTime.now();
  bool loading = false;
  var data;
  final drawerKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    bottomSelectedIndex = widget.index;
    pageController = PageController(initialPage: widget.index, keepPage: true);
    super.initState();
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        key: drawerKey,

        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (index) => pageChanged(index),
              children: [
                // HomeScreen(),
                // DoctorScreen(),
                //NotificatinScreen(),
                //MenuScreen(),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigation(
        //   bottomSelectedIndex: bottomSelectedIndex!,
        //   bottomTapped: bottomTapped,
        // ),
      ),
    );
  }

  void bottomTapped(int index) {
    setState(
      () {
        bottomSelectedIndex = index;
        pageController!.animateToPage(index,
            duration: const Duration(microseconds: 1), curve: Curves.ease);
      },
    );
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Future<bool> _onWillPop() {
    if (bottomSelectedIndex != 1) {
      setState(() {
        pageController!.jumpTo(0);
      });
      return Future.value(false);
    } else if (bottomSelectedIndex == 1) {
      setState(() {
        pageController!.jumpTo(1);
      });
      return Future.value(false);
    }
    DateTime now = DateTime.now();
    if (now.difference(currentBackPressTime) > Duration(milliseconds: 500)) {
      currentBackPressTime = now;
      return Future.value(false);
    } else {
      SystemNavigator.pop();
    }
    return Future.value(true);
  }

  goAtLikeTab() {
    pageController!.animateToPage(1,
        duration: const Duration(microseconds: 1), curve: Curves.ease);
  }
}
