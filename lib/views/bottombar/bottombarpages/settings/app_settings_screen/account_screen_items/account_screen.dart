import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_colors.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/account_screen_items/invite_friends_screen.dart';
import 'package:rides_driver_app/views/bottombar/inbox_items/compaign_screen.dart';
import 'package:rides_driver_app/views/bottombar/inbox_items/news_screen.dart';
import 'package:rides_driver_app/widgets/list_tile_with_subtitle_widget.dart';

import '../../../../../../widgets/list_tile_widget.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
       body: Column(
        children: [
         const SizedBox(height: 5,),
          ListTileWidget(icon: Icons.description_outlined, screen:const NewsScreen(), text: 'Documents',),
          ListTileWidget(icon: Icons.drive_eta_rounded, screen:const CamPaignScreen(), text: 'Driver Portail',),
         const SizedBox(height: 15,),
  ListTileWithSubtitleWidget(icon: Icons.card_giftcard_rounded, screen:const InviteFriendsScreen(), text: 'invite Friends', subtitle:'share your code GEOM'),

         const SizedBox(height: 15,),
         InkWell(
          onTap: (){
            showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("LogOut"),
                  content: const Text("Are you Sure You want to Logout?"),
                  actions: <Widget>[
                    Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.lightColor, borderRadius: BorderRadius.circular(25)),
                child: const Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        // color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("No", style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              );
          },
           child: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: double.infinity,
            color: Colors.white,
            padding:const EdgeInsets.only(left: 20),
            child:const Text('LogOut', style: TextStyle(color: Colors.red),),
           ),
         ),

        ],
      ),
    );
  }
}