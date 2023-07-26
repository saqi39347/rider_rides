import 'package:flutter/material.dart';
import 'package:rides_driver_app/widgets/list_tile_with_subtitle_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Navigation',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTileWithSubtitleWidget(
              icon: Icons.nat,
              screen: NavigationScreen(),
              text: 'Default Navigation',
              subtitle: 'Google Maps'),
          Container(
            color: Colors.white,
            height: 93,
            child: Column(
              children: [
                ListTile(
                  // tileColor: ,
                  trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Switch(value: true, onChanged: (e) {})),
                  // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                  onTap: () => null,
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                  title: const Text(
                    'Navigation auto start',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 0.5,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 93,
            child: Column(
              children: [
                ListTile(
                  // tileColor: ,
                  trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Switch(value: true, onChanged: (e) {})),
                  // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                  onTap: () => null,
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                  title: const Text(
                    'Real-time traffic',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 0.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
