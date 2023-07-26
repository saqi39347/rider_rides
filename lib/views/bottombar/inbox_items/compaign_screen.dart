import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/custom_navigator.dart';
import 'package:rides_driver_app/views/bottombar/inbox_items/previous_campaigns.dart';

class CamPaignScreen extends StatefulWidget {
  const CamPaignScreen({super.key});

  @override
  State<CamPaignScreen> createState() => _CamPaignScreenState();
}

class _CamPaignScreenState extends State<CamPaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Camoaigns',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SizedBox(height: 10,),
            Text(
              'Current bonuses',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '10.00',
              style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bonuses are paid out together with earningss',
              style: TextStyle(color: Colors.grey),
            ),
            InkWell(
              onTap: (){
                navigate(context, PreviousCompaigns());
              },
              child: Text(
                ' View previous campaigns',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
