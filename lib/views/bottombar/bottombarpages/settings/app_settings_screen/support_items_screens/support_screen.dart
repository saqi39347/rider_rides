import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_colors.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/account_screen_items/account_screen.dart';
import 'package:rides_driver_app/views/bottombar/bottombarpages/settings/app_settings_screen/support_items_screens/support_Inbox_screen.dart';
import 'package:rides_driver_app/widgets/list_tile_widget.dart';
import 'package:rides_driver_app/widgets/list_tile_with_subtitle_widget.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Support',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
              'How Can We Help?',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,),
            ),
              const SizedBox(
                height: 10,
              ),
              const Text(
              'Support Case',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14,),
            ),
              const SizedBox(
                height: 10,
              ),
              ListTileWithSubtitleWidget(icon: Icons.message, screen: SupportInboxScreen(), text:'Inbox', subtitle: 'view Open Chats'),
               const SizedBox(
                height: 10,
              ),
                const Text(
              'Get Help With Recent Ride',
              style: TextStyle(color: Colors.black,  fontSize: 14,),
            ),
              const SizedBox(
                height: 10,
              ),
             Container(
             padding:const EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Colors.white,
              height: 93,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '20/12/2023',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Baabda Labnan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const Text(
                    'Finished',
                    style: TextStyle(color: Colors.green),
                  ),
                  const Divider(
                    thickness: 0.5,
                  )
                ],
              ),
            ),
        
               const SizedBox(
                height: 10,
              ),
               Container(
             padding:const EdgeInsets.only(left: 10,right: 10, top: 5),
              color: Colors.white,
              height: 93,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '20/12/2023',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Baabda Labnan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const Text(
                    'Pessenger did\'nt show',
                    style: TextStyle(color: Colors.orange),
                  ),
                  const Divider(
                    thickness: 0.5,
                  )
                ],
              ),
            ),
             const SizedBox(
                height: 10,
              ),
                const Text(
              'Select an older Ride',
              style: TextStyle(color: Colors.blue,  fontSize: 14,),
            ),
             const SizedBox(
                height: 20,
              ),
                const Text(
              'Get Help Something else',
              style: TextStyle(color: Colors.black,  fontSize: 14,fontWeight:FontWeight.bold ,),
            ),
      
            ListTileWidget(icon: Icons.account_box, screen: AccountScreen(), text:'Account'),
            ListTileWidget(icon: Icons.donut_large_outlined, screen: AccountScreen(), text:'Earnings and Payments'),
      
            ListTileWidget(icon: Icons.dangerous, screen: AccountScreen(), text:'Trip Issues'),
      
            ListTileWidget(icon: Icons.account_box, screen: AccountScreen(), text:'Using Bolt App'),
      
            ListTileWidget(icon: Icons.car_rental_outlined, screen: AccountScreen(), text:'Driving With Bolt'),
      
        
            ],
          ),
        ),
      ),
    );
  }
}
