import 'package:flutter/material.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/driver_acceptence_rate/rides.dart';
import '../../../appassets/appassets.dart';
import 'acceptence_rate_main.dart';
import 'cancel ride.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    AcceptenceRate(),
    RidesScreen(),
    CancelScreen(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _screens.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(

        ),
        child: BottomNavigationBar(
          backgroundColor: AppAssets.appGrayColor,
          selectedItemColor: Colors.blue, // Set selected text color to blue
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onTabSelected,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Hours", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Rides", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Cancel"),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
