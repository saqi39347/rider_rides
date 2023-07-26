import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_constants.dart';
import 'package:rides_driver_app/views/bottombar/inbox_items/inbox_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/rides_screen.dart';

import 'bottombarpages/my_home_screen.dart';
import 'bottombarpages/settings/settings_screen.dart';


class MyBottomBarScreen extends StatefulWidget {
  const MyBottomBarScreen({Key? key}) : super(key: key);

  @override
  State<MyBottomBarScreen> createState() => _MyBottomBarScreenState();
}

class _MyBottomBarScreenState extends State<MyBottomBarScreen> {
  int _index = 0;
  List<dynamic> screens = [];

  @override
  void initState() {
    screens = [
     
   const MyHomeScreen(),
   const InboxScreen(),
 const RidesScreen(),
 const  SettingsScreen()
     
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        currentIndex: _index,
        iconSize: 24,
        elevation: 2,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: 'Home'
          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              activeIcon: Icon(Icons.chat_sharp),
              label: 'inbox'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.search),
              label: 'Rides'
          ),
        
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              activeIcon: Icon(Icons.favorite),
              label: 'Settings'
          ),
         
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.person),
          //     activeIcon: Icon(Icons.person),
          //     label: 'Profile'
          // ),
          

        ],
      ),
    );
  }
}
