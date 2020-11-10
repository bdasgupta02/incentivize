import 'package:flutter/material.dart';
import 'package:incentivize/dashboard.dart';
import 'package:incentivize/rewards_list.dart';
import 'package:incentivize/task_list.dart';
import 'package:incentivize/your_family.dart';
import 'package:incentivize/your_profile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

_NavbarState navbarState;

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() {
    navbarState = _NavbarState();
    return navbarState;
  }
}

class _NavbarState extends State<Navbar> {
  static int _selectedPage = 0;
  static final _pageOptions = [
    Dashboard(),
    YourFamily(),
    TaskBoard(),
    RewardsList(),
    YourProfile(),
  ];
  var _pageController = PageController(initialPage: _selectedPage);

  void customPage(int i) {
    this.setState(() {
      _pageController.jumpToPage(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        backgroundColor: Color(0xFFF0F0F0),
        body: PageView(
          children: _pageOptions,
          onPageChanged: (index) {
            setState(() {
              _selectedPage = index;
            });
          },
          controller: _pageController,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 30,
              offset: Offset(0, 3),
            ),
          ]),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedPage,
            onTap: (int index) {
              setState(() {
                _pageController.jumpToPage(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFF0F0F0),
                icon: Icon(
                  Icons.home,
                  color: Color(0xFF898691),
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Color(0xFFFF7171),
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Color(0xFFFF7171),
                    fontSize: 15,
                    fontFamily: 'Khula',
                    height: 1.2,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFF0F0F0),
                icon: Icon(
                  Icons.group,
                  color: Color(0xFF898691),
                ),
                activeIcon: Icon(
                  Icons.group,
                  color: Color(0xFFFF7171),
                ),
                title: Text(
                  'Family',
                  style: TextStyle(
                    color: Color(0xFFFF7171),
                    fontSize: 15,
                    fontFamily: 'Khula',
                    height: 1.2,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFF0F0F0),
                icon: Icon(
                  Icons.list,
                  color: Color(0xFF898691),
                ),
                activeIcon: Icon(
                  Icons.list,
                  color: Color(0xFFFF7171),
                ),
                title: Text(
                  'Tasks',
                  style: TextStyle(
                    color: Color(0xFFFF7171),
                    fontSize: 15,
                    fontFamily: 'Khula',
                    height: 1.2,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFF0F0F0),
                icon: Icon(
                  MdiIcons.trophy,
                  color: Color(0xFF898691),
                ),
                activeIcon: Icon(
                  MdiIcons.trophy,
                  color: Color(0xFFFF7171),
                ),
                title: Text('Rewards',
                    style: TextStyle(
                      color: Color(0xFFFF7171),
                      fontSize: 15,
                      fontFamily: 'Khula',
                      height: 1.2,
                    )),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFF0F0F0),
                icon: Icon(
                  Icons.person,
                  color: Color(0xFF898691),
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Color(0xFFFF7171),
                ),
                title: Text('Profile',
                    style: TextStyle(
                      color: Color(0xFFFF7171),
                      fontSize: 15,
                      fontFamily: 'Khula',
                      height: 1.2,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
