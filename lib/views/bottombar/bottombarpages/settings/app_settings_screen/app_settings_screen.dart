import 'package:flutter/material.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/app_settings_subfolder/Theme_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/app_settings_subfolder/auto_accept_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/app_settings_subfolder/quick_access.dart';
import 'package:rides_driver_app/views/bottombar/inbox_items/news_screen.dart';
import 'package:rides_driver_app/widgets/list_tile_widget.dart';
import 'package:rides_driver_app/widgets/list_tile_with_subtitle_widget.dart';

import '../../../inbox_items/compaign_screen.dart';


class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({super.key});

  @override
  State<AppSettingsScreen> createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'App Setting',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
       body: Column(
        children: [
         const SizedBox(height: 5,),
  ListTileWithSubtitleWidget(icon: Icons.switch_access_shortcut_outlined, screen:const QuickAccessScreen(), text: 'Quick Access', subtitle:'Icon On/Widget Of'),
  ListTileWithSubtitleWidget(icon: Icons.auto_awesome_motion_sharp, screen:const AutoAcceptScreen(), text: 'Auto Accept', subtitle:'Of'),
         const SizedBox(height: 25,),


         ListTileWithSubtitleWidget(icon: Icons.theater_comedy, screen:const ThemeScreen(), text: 'Theme', subtitle:' Light'),

          ListTileWidget(icon: Icons.dnd_forwardslash_outlined, screen:const CamPaignScreen(), text: 'Permissons guide ',),
  ListTileWithSubtitleWidget(icon: Icons.language_outlined, screen: CamPaignScreen(), text: 'Languages', subtitle:'US,English'),

        //  const SizedBox(height: 15,),
        //  Container(
        //   alignment: Alignment.centerLeft,
        //   height: 50,
        //   width: double.infinity,
        //   color: Colors.white,
        //   padding:const EdgeInsets.only(left: 20),
        //   child:const Text('LogOut', style: TextStyle(color: Colors.red),),
        //  )

        ],
      ),
    );
  }
}