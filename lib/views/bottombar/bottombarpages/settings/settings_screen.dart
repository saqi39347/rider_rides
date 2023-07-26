import 'package:flutter/material.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/account_screen_items/account_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/app_settings_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/navigation_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/support_items_screens/support_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/vehhical_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/car_registration_template.dart';
import 'package:rides_driver_app/widgets/list_tile_widget.dart';

import '../../../../widgets/list_tile_with_subtitle_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 110,
              // color: Colors.amber,
              child: Column(
                children:const [
                  Text('Mark', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24,
                  ),),
                  SizedBox(height: 5,),
                  Text('+93333333333344', style: TextStyle(
                    color: Color.fromARGB(255, 115, 114, 114),  fontSize: 16,
                  ),),
                  SizedBox(height: 2,),
                  Text('Mark@gmail.com', style: TextStyle(
                    color: Color.fromARGB(255, 115, 114, 114),  fontSize: 16,
                  ),),
                  SizedBox(height: 2,),

                  Divider(color: Colors.grey,thickness: 0.5,),
                ],
                
              ),
            ),
            ListTileWithSubtitleWidget(icon: Icons.local_car_wash_rounded, screen:const VehicalPageScreen(), text: 'Vehicles', subtitle: 'P87800 Toyota Yasis 2015',),
            ListTileWidget(icon: Icons.assistant_navigation, screen:const NavigationScreen(), text: 'Navigation', ),
            ListTileWidget(icon: Icons.person_outline_sharp, screen:const AccountScreen(), text: 'Account',),
            ListTileWidget(icon: Icons.settings, screen:const AppSettingsScreen(), text: 'App Settings',),
            ListTileWidget(icon: Icons.support, screen:const SupportScreen(), text: 'Support',),




          ],
        ),
      ),
    );
  }
}