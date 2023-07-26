import 'package:flutter/material.dart';
import 'package:rides_driver_app/views/bottombar/inbox_items/news_screen.dart';
import 'package:rides_driver_app/widgets/list_tile_widget.dart';

import 'compaign_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Inbox', style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
         const SizedBox(height: 5,),
          ListTileWidget(icon: Icons.notifications, screen:const NewsScreen(), text: 'News',),
          ListTileWidget(icon: Icons.my_library_books_outlined, screen:const CamPaignScreen(), text: 'Campaigns',),

        ],
      ),
    );
  }
}