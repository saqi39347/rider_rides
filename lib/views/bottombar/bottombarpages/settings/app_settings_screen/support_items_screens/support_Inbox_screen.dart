import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_colors.dart';

class SupportInboxScreen extends StatefulWidget {
  const SupportInboxScreen({super.key});

  @override
  State<SupportInboxScreen> createState() => _SupportInboxScreenState();
}

class _SupportInboxScreenState extends State<SupportInboxScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
            'Inbox',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,),
          ),
            Container(
              color: Colors.white,
              height: 93,
              child: Column(
                children: [
                  ListTile(
                    // tileColor: ,
                   leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: AppColors.appThemeColor,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                    onTap: () => null,
                    // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                    title: const Text(
                      'Rides Rides Support',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'Toyota Yasir 2015, black',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // :
                    // Row(
                    //   children: const [
                    //     Icon(
                    //       Icons.phone,
                    //       color: Colors.grey,
                    //       size: 15,
                    //     ),
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //     Text(
                    //       'Incoming call.',
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 12,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //     Text(
                    //       'Sat',
                    //       style: TextStyle(
                    //         color: Colors.grey,
                    //         fontSize: 12,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //   ],
                    // ),
                  ),
                  const Divider(
                    thickness: 0.5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
