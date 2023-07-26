import 'package:flutter/material.dart';
import 'package:rides_driver_app/widgets/ride_history_widget.dart';

class RidesScreen extends StatelessWidget {
  const RidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Ride History',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:           RideHistoryWidget(),

    );
  }
}